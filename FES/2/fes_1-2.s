
fes_1-2.fex:     file format binary


Disassembly of section .data:

00000000 <.data>:
e0000:
   0:	e92d4010 	push	{r4, lr}
   4:	e307006c 	tst	r7, #108	; 0x6c
   8:	eb000012 	bl	f0058	
   c:	e8bd4010 	pop	{r4, lr}
  10:	e1a00000 	nop			; (mov r0, r0)

f0014:
  14:	e3a01000 	mov	r1, #0
  18:	e3070210 	tst	r7, #16, 4
  1c:	e1a02001 	mov	r2, r1
  20:	e1a03001 	mov	r3, r1
  24:	e1a0c001 	mov	ip, r1
  28:	e880100e 	stm	r0, {r1, r2, r3, ip}
  2c:	e59f1020 	ldr	r1, ="DRAM"
  30:	e5801000 	str	r1, [r0]
  34:	e3a01001 	mov	r1, #1
  38:	e5801004 	str	r1, [r0, #4]
  3c:	e12fff1e 	bx	lr

e0040:
  40:	e92d4010 	push	{r4, lr}
  44:	eb000003 	bl	f0058
  48:	ebfffff1 	bl	f0014
  4c:	e3a00000 	mov	r0, #0
  50:	e8bd8010 	pop	{r4, pc}

;  54:	4d415244	"DRAM"

f0058:
  58:	e92d4010 	push	{r4, lr}
  5c:	eb000183 	bl	f0670
  60:	e3500000 	cmp	r0, #0
  64:	13e00000 	mvnne	r0, #0
  68:	e8bd8010 	pop	{r4, pc}


  6c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
  70:	e2522020 	subs	r2, r2, #32
  74:	3a00000d 	bcc	0xb0
  78:	e3520e12 	cmp	r2, #288	; 0x120
  7c:	3a000007 	bcc	0xa0
  80:	f5d1f100 	pld	[r1, #256]	; 0x100
  84:	e8b151f8 	ldm	r1!, {r3, r4, r5, r6, r7, r8, ip, lr}
  88:	e2422040 	sub	r2, r2, #64	; 0x40
  8c:	e3520e12 	cmp	r2, #288	; 0x120
  90:	e8a051f8 	stmia	r0!, {r3, r4, r5, r6, r7, r8, ip, lr}
  94:	e8b151f8 	ldm	r1!, {r3, r4, r5, r6, r7, r8, ip, lr}
  98:	e8a051f8 	stmia	r0!, {r3, r4, r5, r6, r7, r8, ip, lr}
  9c:	2afffff7 	bcs	0x80
  a0:	e8b151f8 	ldm	r1!, {r3, r4, r5, r6, r7, r8, ip, lr}
  a4:	e2522020 	subs	r2, r2, #32
  a8:	e8a051f8 	stmia	r0!, {r3, r4, r5, r6, r7, r8, ip, lr}
  ac:	2afffffb 	bcs	0xa0
  b0:	e1b0ce02 	lsls	ip, r2, #28
  b4:	28b15018 	ldmcs	r1!, {r3, r4, ip, lr}
  b8:	28a05018 	stmiacs	r0!, {r3, r4, ip, lr}
  bc:	48b10018 	ldmmi	r1!, {r3, r4}
  c0:	48a00018 	stmiami	r0!, {r3, r4}
  c4:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  c8:	e1b0cf02 	lsls	ip, r2, #30
  cc:	24913004 	ldrcs	r3, [r1], #4
  d0:	24803004 	strcs	r3, [r0], #4
  d4:	012fff1e 	bxeq	lr
  d8:	e1b02f82 	lsls	r2, r2, #31
  dc:	20d130b2 	ldrhcs	r3, [r1], #2
  e0:	44d12001 	ldrbmi	r2, [r1], #1
  e4:	20c030b2 	strhcs	r3, [r0], #2
  e8:	44c02001 	strbmi	r2, [r0], #1
  ec:	e12fff1e 	bx	lr

  f0:	e1903001 	orrs	r3, r0, r1
  f4:	4a000021 	bmi	0x180
  f8:	e3b02000 	movs	r2, #0
  fc:	e07130a0 	rsbs	r3, r1, r0, lsr #1
 100:	3a00001a 	bcc	0x170
 104:	e0713220 	rsbs	r3, r1, r0, lsr #4
 108:	3a00000f 	bcc	0x14c
 10c:	e0713420 	rsbs	r3, r1, r0, lsr #8
 110:	3a000001 	bcc	0x11c
 114:	e3a0c000 	mov	ip, #0
 118:	ea000020 	b	0x1a0
 11c:	e07133a0 	rsbs	r3, r1, r0, lsr #7
 120:	20400381 	subcs	r0, r0, r1, lsl #7
 124:	e0b22002 	adcs	r2, r2, r2
 128:	e0713320 	rsbs	r3, r1, r0, lsr #6
 12c:	20400301 	subcs	r0, r0, r1, lsl #6
 130:	e0b22002 	adcs	r2, r2, r2
 134:	e07132a0 	rsbs	r3, r1, r0, lsr #5
 138:	20400281 	subcs	r0, r0, r1, lsl #5
 13c:	e0b22002 	adcs	r2, r2, r2
 140:	e0713220 	rsbs	r3, r1, r0, lsr #4
 144:	20400201 	subcs	r0, r0, r1, lsl #4
 148:	e0b22002 	adcs	r2, r2, r2
 14c:	e07131a0 	rsbs	r3, r1, r0, lsr #3
 150:	20400181 	subcs	r0, r0, r1, lsl #3
 154:	e0b22002 	adcs	r2, r2, r2
 158:	e0713120 	rsbs	r3, r1, r0, lsr #2
 15c:	20400101 	subcs	r0, r0, r1, lsl #2
 160:	e0b22002 	adcs	r2, r2, r2
 164:	e07130a0 	rsbs	r3, r1, r0, lsr #1
 168:	20400081 	subcs	r0, r0, r1, lsl #1
 16c:	e0b22002 	adcs	r2, r2, r2
 170:	e0501001 	subs	r1, r0, r1
 174:	31a01000 	movcc	r1, r0
 178:	e0a20002 	adc	r0, r2, r2
 17c:	e12fff1e 	bx	lr

 180:	e2112102 	ands	r2, r1, #-2147483648	; 0x80000000
 184:	42611000 	rsbmi	r1, r1, #0
 188:	e032c040 	eors	ip, r2, r0, asr #32
 18c:	22600000 	rsbcs	r0, r0, #0
 190:	e0713220 	rsbs	r3, r1, r0, lsr #4
 194:	3a00001d 	bcc	0x210
 198:	e0713420 	rsbs	r3, r1, r0, lsr #8
 19c:	3a00000f 	bcc	0x1e0
 1a0:	e1a01301 	lsl	r1, r1, #6
 1a4:	e0713420 	rsbs	r3, r1, r0, lsr #8
 1a8:	e382233f 	orr	r2, r2, #-67108864	; 0xfc000000
 1ac:	3a00000b 	bcc	0x1e0
 1b0:	e1a01301 	lsl	r1, r1, #6
 1b4:	e0713420 	rsbs	r3, r1, r0, lsr #8
 1b8:	e382263f 	orr	r2, r2, #66060288	; 0x3f00000
 1bc:	3a000007 	bcc	0x1e0
 1c0:	e1a01301 	lsl	r1, r1, #6
 1c4:	e0713420 	rsbs	r3, r1, r0, lsr #8
 1c8:	e382293f 	orr	r2, r2, #1032192	; 0xfc000
 1cc:	21a01301 	lslcs	r1, r1, #6
 1d0:	23822c3f 	orrcs	r2, r2, #16128	; 0x3f00
 1d4:	e2713000 	rsbs	r3, r1, #0
 1d8:	2a00001d 	bcs	0x254
 1dc:	21a01321 	lsrcs	r1, r1, #6
 1e0:	e07133a0 	rsbs	r3, r1, r0, lsr #7
 1e4:	20400381 	subcs	r0, r0, r1, lsl #7
 1e8:	e0b22002 	adcs	r2, r2, r2
 1ec:	e0713320 	rsbs	r3, r1, r0, lsr #6
 1f0:	20400301 	subcs	r0, r0, r1, lsl #6
 1f4:	e0b22002 	adcs	r2, r2, r2
 1f8:	e07132a0 	rsbs	r3, r1, r0, lsr #5
 1fc:	20400281 	subcs	r0, r0, r1, lsl #5
 200:	e0b22002 	adcs	r2, r2, r2
 204:	e0713220 	rsbs	r3, r1, r0, lsr #4
 208:	20400201 	subcs	r0, r0, r1, lsl #4
 20c:	e0b22002 	adcs	r2, r2, r2
 210:	e07131a0 	rsbs	r3, r1, r0, lsr #3
 214:	20400181 	subcs	r0, r0, r1, lsl #3
 218:	e0b22002 	adcs	r2, r2, r2
 21c:	e0713120 	rsbs	r3, r1, r0, lsr #2
 220:	20400101 	subcs	r0, r0, r1, lsl #2
 224:	e0b22002 	adcs	r2, r2, r2
 228:	2affffeb 	bcs	0x1dc
 22c:	e07130a0 	rsbs	r3, r1, r0, lsr #1
 230:	20400081 	subcs	r0, r0, r1, lsl #1
 234:	e0b22002 	adcs	r2, r2, r2
 238:	e0501001 	subs	r1, r0, r1
 23c:	31a01000 	movcc	r1, r0
 240:	e0a20002 	adc	r0, r2, r2
 244:	e1b0cfcc 	asrs	ip, ip, #31
 248:	42600000 	rsbmi	r0, r0, #0
 24c:	22611000 	rsbcs	r1, r1, #0
 250:	e12fff1e 	bx	lr

 254:	e1b0cfcc 	asrs	ip, ip, #31
 258:	42600000 	rsbmi	r0, r0, #0
 25c:	e92d4001 	push	{r0, lr}
 260:	e3b00000 	movs	r0, #0
 264:	e1a00000 	nop			; (mov r0, r0)
 268:	e8bd8002 	pop	{r1, pc}


 26c:	e3b02000 	movs	r2, #0
 270:	e0713220 	rsbs	r3, r1, r0, lsr #4
 274:	3affffb4 	bcc	0x14c
 278:	e0713420 	rsbs	r3, r1, r0, lsr #8
 27c:	3affffa6 	bcc	0x11c
 280:	e3a0c000 	mov	ip, #0
 284:	eaffffc5 	b	0x1a0


 288:	e3a01000 	mov	r1, #0
 28c:	e1510000 	cmp	r1, r0
 290:	32811001 	addcc	r1, r1, #1
 294:	3afffffc 	bcc	0x28c
 298:	e12fff1e 	bx	lr


 29c:	e59f0594 	ldr	r0, [pc, #1428]	; 0x838
 2a0:	e3a01000 	mov	r1, #0
 2a4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 2a8:	e5801d3c 	str	r1, [r0, #3388]	; 0xd3c
 2ac:	e5900d3c 	ldr	r0, [r0, #3388]	; 0xd3c
 2b0:	e59f2584 	ldr	r2, [pc, #1412]	; 0x83c
 2b4:	e7e10350 			; <UNDEFINED> instruction: 0xe7e10350
 2b8:	e3500000 	cmp	r0, #0
 2bc:	e5920230 	ldr	r0, [r2, #560]	; 0x230
 2c0:	1a000006 	bne	0x2e0
 2c4:	e3c00a01 	bic	r0, r0, #4096	; 0x1000
 2c8:	e5820230 	str	r0, [r2, #560]	; 0x230
 2cc:	e3a00c01 	mov	r0, #256	; 0x100
 2d0:	ebffffec 	bl	0x288
 2d4:	e5920230 	ldr	r0, [r2, #560]	; 0x230
 2d8:	e3800a01 	orr	r0, r0, #4096	; 0x1000
 2dc:	ea000005 	b	0x2f8
 2e0:	e3800a01 	orr	r0, r0, #4096	; 0x1000
 2e4:	e5820230 	str	r0, [r2, #560]	; 0x230
 2e8:	e3a00c01 	mov	r0, #256	; 0x100
 2ec:	ebffffe5 	bl	0x288
 2f0:	e5920230 	ldr	r0, [r2, #560]	; 0x230
 2f4:	e3c00a01 	bic	r0, r0, #4096	; 0x1000
 2f8:	e5820230 	str	r0, [r2, #560]	; 0x230
 2fc:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
 300:	e59f1534 	ldr	r1, [pc, #1332]	; 0x83c
 304:	e5910230 	ldr	r0, [r1, #560]	; 0x230
 308:	e3002ffc 	tst	r0, #252, 30	; 0x3f0
 30c:	e3800a06 	orr	r0, r0, #24576	; 0x6000
 310:	e1800002 	orr	r0, r0, r2
 314:	e3c00003 	bic	r0, r0, #3
 318:	e5810230 	str	r0, [r1, #560]	; 0x230
 31c:	e12fff1e 	bx	lr
 320:	e59f1514 	ldr	r1, [pc, #1300]	; 0x83c
 324:	e5910000 	ldr	r0, [r1]
 328:	e3800201 	orr	r0, r0, #268435456	; 0x10000000
 32c:	e5810000 	str	r0, [r1]
 330:	e12fff1e 	bx	lr

 334:	e59f1500 	ldr	r1, [pc, #1280]	; 0x83c
 338:	e5910000 	ldr	r0, [r1]
 33c:	e3c00201 	bic	r0, r0, #268435456	; 0x10000000
 340:	e5810000 	str	r0, [r1]
 344:	e12fff1e 	bx	lr
 348:	e59f24ec 	ldr	r2, [pc, #1260]	; 0x83c
 34c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 350:	e5920204 	ldr	r0, [r2, #516]	; 0x204
 354:	e3c00101 	bic	r0, r0, #1073741824	; 0x40000000
 358:	e3800102 	orr	r0, r0, #-2147483648	; 0x80000000
 35c:	e5820204 	str	r0, [r2, #516]	; 0x204
 360:	e3a00c01 	mov	r0, #256	; 0x100
 364:	ebffffc7 	bl	0x288
 368:	e5920204 	ldr	r0, [r2, #516]	; 0x204
 36c:	e3c00103 	bic	r0, r0, #-1073741824	; 0xc0000000
 370:	e5820204 	str	r0, [r2, #516]	; 0x204
 374:	e3a00a01 	mov	r0, #4096	; 0x1000
 378:	ebffffc2 	bl	0x288
 37c:	e5920204 	ldr	r0, [r2, #516]	; 0x204
 380:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
 384:	e3800101 	orr	r0, r0, #1073741824	; 0x40000000
 388:	e5820204 	str	r0, [r2, #516]	; 0x204
 38c:	e3a00a01 	mov	r0, #4096	; 0x1000
 390:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 394:	eaffffbb 	b	0x288
 398:	e59f249c 	ldr	r2, [pc, #1180]	; 0x83c
 39c:	e3a00001 	mov	r0, #1
 3a0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 3a4:	e0821100 	add	r1, r2, r0, lsl #2
 3a8:	e5913204 	ldr	r3, [r1, #516]	; 0x204
 3ac:	e3c33101 	bic	r3, r3, #1073741824	; 0x40000000
 3b0:	e3833102 	orr	r3, r3, #-2147483648	; 0x80000000
 3b4:	e5813204 	str	r3, [r1, #516]	; 0x204
 3b8:	e2800001 	add	r0, r0, #1
 3bc:	e3500005 	cmp	r0, #5
 3c0:	3afffff7 	bcc	0x3a4
 3c4:	e3a00c01 	mov	r0, #256	; 0x100
 3c8:	ebffffae 	bl	0x288
 3cc:	e3a00001 	mov	r0, #1
 3d0:	e0821100 	add	r1, r2, r0, lsl #2
 3d4:	e5913204 	ldr	r3, [r1, #516]	; 0x204
 3d8:	e2800001 	add	r0, r0, #1
 3dc:	e3c33103 	bic	r3, r3, #-1073741824	; 0xc0000000
 3e0:	e5813204 	str	r3, [r1, #516]	; 0x204
 3e4:	e3500005 	cmp	r0, #5
 3e8:	3afffff8 	bcc	0x3d0
 3ec:	e3a00a01 	mov	r0, #4096	; 0x1000
 3f0:	ebffffa4 	bl	0x288
 3f4:	e3a00001 	mov	r0, #1
 3f8:	e0821100 	add	r1, r2, r0, lsl #2
 3fc:	e5913204 	ldr	r3, [r1, #516]	; 0x204
 400:	e3c33102 	bic	r3, r3, #-2147483648	; 0x80000000
 404:	e3833101 	orr	r3, r3, #1073741824	; 0x40000000
 408:	e5813204 	str	r3, [r1, #516]	; 0x204
 40c:	e2800001 	add	r0, r0, #1
 410:	e3500005 	cmp	r0, #5
 414:	3afffff7 	bcc	0x3f8
 418:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 41c:	e3a00a01 	mov	r0, #4096	; 0x1000
 420:	eaffff98 	b	0x288
 424:	e59f0410 	ldr	r0, [pc, #1040]	; 0x83c
 428:	e5901204 	ldr	r1, [r0, #516]	; 0x204
 42c:	e3c11101 	bic	r1, r1, #1073741824	; 0x40000000
 430:	e3811102 	orr	r1, r1, #-2147483648	; 0x80000000
 434:	e5801204 	str	r1, [r0, #516]	; 0x204
 438:	e5901208 	ldr	r1, [r0, #520]	; 0x208
 43c:	e3c11101 	bic	r1, r1, #1073741824	; 0x40000000
 440:	e3811102 	orr	r1, r1, #-2147483648	; 0x80000000
 444:	e5801208 	str	r1, [r0, #520]	; 0x208
 448:	e590120c 	ldr	r1, [r0, #524]	; 0x20c
 44c:	e3c11101 	bic	r1, r1, #1073741824	; 0x40000000
 450:	e3811102 	orr	r1, r1, #-2147483648	; 0x80000000
 454:	e580120c 	str	r1, [r0, #524]	; 0x20c
 458:	e5901210 	ldr	r1, [r0, #528]	; 0x210
 45c:	e3c11101 	bic	r1, r1, #1073741824	; 0x40000000
 460:	e3811102 	orr	r1, r1, #-2147483648	; 0x80000000
 464:	e5801210 	str	r1, [r0, #528]	; 0x210
 468:	e5901214 	ldr	r1, [r0, #532]	; 0x214
 46c:	e3c11101 	bic	r1, r1, #1073741824	; 0x40000000
 470:	e3811102 	orr	r1, r1, #-2147483648	; 0x80000000
 474:	e5801214 	str	r1, [r0, #532]	; 0x214
 478:	e12fff1e 	bx	lr

 47c:	e92d4010 	push	{r4, lr}
 480:	e3a02080 	mov	r2, #128	; 0x80
 484:	e59f13b4 	ldr	r1, [pc, #948]	; 0x840
 488:	e24dd080 	sub	sp, sp, #128	; 0x80
 48c:	e1a0000d 	mov	r0, sp
 490:	ebfffef5 	bl	0x6c
 494:	e59f23a0 	ldr	r2, [pc, #928]	; 0x83c
 498:	e3a00000 	mov	r0, #0
 49c:	e1a0100d 	mov	r1, sp
 4a0:	e0824100 	add	r4, r2, r0, lsl #2
 4a4:	e7913100 	ldr	r3, [r1, r0, lsl #2]
 4a8:	e5843250 	str	r3, [r4, #592]	; 0x250
 4ac:	e2800001 	add	r0, r0, #1
 4b0:	e3500020 	cmp	r0, #32
 4b4:	3afffff9 	bcc	0x4a0
 4b8:	e28dd080 	add	sp, sp, #128	; 0x80
 4bc:	e8bd8010 	pop	{r4, pc}


 4c0:	e92d4070 	push	{r4, r5, r6, lr}
 4c4:	e59f436c 	ldr	r4, [pc, #876]	; 0x838
 4c8:	e5941020 	ldr	r1, [r4, #32]
 4cc:	e3c11033 	bic	r1, r1, #51	; 0x33
 4d0:	e3c11c1f 	bic	r1, r1, #7936	; 0x1f00
 4d4:	e3815011 	orr	r5, r1, #17
 4d8:	e3a01018 	mov	r1, #24
 4dc:	ebffff62 	bl	0x26c
 4e0:	e200001f 	and	r0, r0, #31
 4e4:	e1850400 	orr	r0, r5, r0, lsl #8
 4e8:	e3c00202 	bic	r0, r0, #536870912	; 0x20000000
 4ec:	e3c00803 	bic	r0, r0, #196608	; 0x30000
 4f0:	e3800102 	orr	r0, r0, #-2147483648	; 0x80000000
 4f4:	e3800801 	orr	r0, r0, #65536	; 0x10000
 4f8:	e5840020 	str	r0, [r4, #32]
 4fc:	e3a00601 	mov	r0, #1048576	; 0x100000
 500:	ebffff60 	bl	0x288
 504:	e5940020 	ldr	r0, [r4, #32]
 508:	e3800202 	orr	r0, r0, #536870912	; 0x20000000
 50c:	e5840020 	str	r0, [r4, #32]
 510:	e59400d0 	ldr	r0, [r4, #208]	; 0xd0
 514:	e3c00003 	bic	r0, r0, #3
 518:	e58400d0 	str	r0, [r4, #208]	; 0xd0
 51c:	e5940060 	ldr	r0, [r4, #96]	; 0x60
 520:	e3800301 	orr	r0, r0, #67108864	; 0x4000000
 524:	e5840060 	str	r0, [r4, #96]	; 0x60
 528:	e3a00c01 	mov	r0, #256	; 0x100
 52c:	ebffff55 	bl	0x288
 530:	e5940060 	ldr	r0, [r4, #96]	; 0x60
 534:	e3c00301 	bic	r0, r0, #67108864	; 0x4000000
 538:	e5840060 	str	r0, [r4, #96]	; 0x60
 53c:	e5940060 	ldr	r0, [r4, #96]	; 0x60
 540:	e3c02901 	bic	r2, r0, #16384	; 0x4000
 544:	e5842060 	str	r2, [r4, #96]	; 0x60
 548:	e3a00a01 	mov	r0, #4096	; 0x1000
 54c:	ebffff4d 	bl	0x288
 550:	e3820901 	orr	r0, r2, #16384	; 0x4000
 554:	e5840060 	str	r0, [r4, #96]	; 0x60
 558:	e3a00a01 	mov	r0, #4096	; 0x1000
 55c:	e8bd4070 	pop	{r4, r5, r6, lr}
 560:	eaffff48 	b	0x288

 564:	e59f02d0 	ldr	r0, [pc, #720]	; 0x83c
 568:	e5901004 	ldr	r1, [r0, #4]
 56c:	e7e201d1 			; <UNDEFINED> instruction: 0xe7e201d1
 570:	e3500000 	cmp	r0, #0
 574:	03a00020 	moveq	r0, #32
 578:	0a00000b 	beq	0x5ac
 57c:	e3500001 	cmp	r0, #1
 580:	03a00040 	moveq	r0, #64	; 0x40
 584:	0a000008 	beq	0x5ac
 588:	e3500002 	cmp	r0, #2
 58c:	03a00080 	moveq	r0, #128	; 0x80
 590:	0a000005 	beq	0x5ac
 594:	e3500003 	cmp	r0, #3
 598:	03a00c01 	moveq	r0, #256	; 0x100
 59c:	0a000002 	beq	0x5ac
 5a0:	e3500004 	cmp	r0, #4
 5a4:	13a00b01 	movne	r0, #1024	; 0x400
 5a8:	03a00c02 	moveq	r0, #512	; 0x200
 5ac:	e7e120d1 			; <UNDEFINED> instruction: 0xe7e120d1
 5b0:	e3520001 	cmp	r2, #1
 5b4:	e7e22351 			; <UNDEFINED> instruction: 0xe7e22351
 5b8:	01a00080 	lsleq	r0, r0, #1
 5bc:	e3520003 	cmp	r2, #3
 5c0:	e7e11551 			; <UNDEFINED> instruction: 0xe7e11551
 5c4:	01a00080 	lsleq	r0, r0, #1
 5c8:	e3510001 	cmp	r1, #1
 5cc:	01a00080 	lsleq	r0, r0, #1
 5d0:	e12fff1e 	bx	lr

 5d4:	e59f0260 	ldr	r0, [pc, #608]	; 0x83c
 5d8:	e5901000 	ldr	r1, [r0]
 5dc:	e3811101 	orr	r1, r1, #1073741824	; 0x40000000
 5e0:	e5801000 	str	r1, [r0]
 5e4:	e5901000 	ldr	r1, [r0]
 5e8:	e3110101 	tst	r1, #1073741824	; 0x40000000
 5ec:	1afffffc 	bne	0x5e4
 5f0:	e590000c 	ldr	r0, [r0, #12]
 5f4:	e2100601 	ands	r0, r0, #1048576	; 0x100000
 5f8:	13e00000 	mvnne	r0, #0
 5fc:	e12fff1e 	bx	lr

 600:	e59f2234 	ldr	r2, [pc, #564]	; 0x83c
 604:	e5921004 	ldr	r1, [r2, #4]
 608:	e3500f96 	cmp	r0, #600	; 0x258
 60c:	23a00000 	movcs	r0, #0
 610:	e7e211d1 			; <UNDEFINED> instruction: 0xe7e211d1
 614:	2a00000c 	bcs	0x64c
 618:	e3510002 	cmp	r1, #2
 61c:	83a01e15 	movhi	r1, #336	; 0x150
 620:	e3013f33 	tst	r1, #51, 30	; 0xcc
 624:	80010190 	mulhi	r1, r0, r1
 628:	90801080 	addls	r1, r0, r0, lsl #1
 62c:	90811380 	addls	r1, r1, r0, lsl #7
 630:	e0000390 	mul	r0, r0, r3
 634:	e1a01521 	lsr	r1, r1, #10
 638:	e1a00520 	lsr	r0, r0, #10
 63c:	e0800180 	add	r0, r0, r0, lsl #3
 640:	e24000c8 	sub	r0, r0, #200	; 0xc8
 644:	e1810400 	orr	r0, r1, r0, lsl #8
 648:	e3800302 	orr	r0, r0, #134217728	; 0x8000000
 64c:	e5820010 	str	r0, [r2, #16]
 650:	e12fff1e 	bx	lr

 654:	e59f21dc 	ldr	r2, [pc, #476]	; 0x838
 658:	e5921100 	ldr	r1, [r2, #256]	; 0x100
 65c:	e3500000 	cmp	r0, #0
 660:	03c10902 	biceq	r0, r1, #32768	; 0x8000
 664:	13810902 	orrne	r0, r1, #32768	; 0x8000
 668:	e5820100 	str	r0, [r2, #256]	; 0x100
 66c:	e12fff1e 	bx	lr

f0670:
 670:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 674:	e1b04000 	movs	r4, r0
 678:	03e00000 	mvneq	r0, #0
 67c:	08bd81f0 	popeq	{r4, r5, r6, r7, r8, pc}
 680:	e5940004 	ldr	r0, [r4, #4]
 684:	ebffff8d 	bl	0x4c0
 688:	ebffff03 	bl	0x29c
 68c:	ebffff1b 	bl	0x300
 690:	e3a00000 	mov	r0, #0
 694:	ebffffee 	bl	0x654
 698:	e59f619c 	ldr	r6, [pc, #412]	; 0x83c
 69c:	e59f01a0 	ldr	r0, [pc, #416]	; 0x844
 6a0:	e58602e0 	str	r0, [r6, #736]	; 0x2e0
 6a4:	ebffff1d 	bl	0x320
 6a8:	ebffff26 	bl	0x348
 6ac:	e5942014 	ldr	r2, [r4, #20]
 6b0:	e3a00000 	mov	r0, #0
 6b4:	e5941008 	ldr	r1, [r4, #8]
 6b8:	e3510003 	cmp	r1, #3
 6bc:	e5941010 	ldr	r1, [r4, #16]
 6c0:	e1a021a2 	lsr	r2, r2, #3
 6c4:	03a00001 	moveq	r0, #1
 6c8:	e3510c01 	cmp	r1, #256	; 0x100
 6cc:	e1800082 	orr	r0, r0, r2, lsl #1
 6d0:	0a00000d 	beq	0x70c
 6d4:	e3510c02 	cmp	r1, #512	; 0x200
 6d8:	03800008 	orreq	r0, r0, #8
 6dc:	0a00000a 	beq	0x70c
 6e0:	e3510b01 	cmp	r1, #1024	; 0x400
 6e4:	03800010 	orreq	r0, r0, #16
 6e8:	0a000007 	beq	0x70c
 6ec:	e3510b02 	cmp	r1, #2048	; 0x800
 6f0:	03800018 	orreq	r0, r0, #24
 6f4:	0a000004 	beq	0x70c
 6f8:	e3510a01 	cmp	r1, #4096	; 0x1000
 6fc:	03800020 	orreq	r0, r0, #32
 700:	0a000001 	beq	0x70c
 704:	e3510a02 	cmp	r1, #8192	; 0x2000
 708:	03800028 	orreq	r0, r0, #40	; 0x28
 70c:	e5941018 	ldr	r1, [r4, #24]
 710:	e3e0703f 	mvn	r7, #63	; 0x3f
 714:	e1a011a1 	lsr	r1, r1, #3
 718:	e1a02207 	lsl	r2, r7, #4
 71c:	e0871301 	add	r1, r7, r1, lsl #6
 720:	e1800001 	orr	r0, r0, r1
 724:	e594100c 	ldr	r1, [r4, #12]
 728:	e0821501 	add	r1, r2, r1, lsl #10
 72c:	e1800001 	orr	r0, r0, r1
 730:	e3800a03 	orr	r0, r0, #12288	; 0x3000
 734:	e5860004 	str	r0, [r6, #4]
 738:	e3a00001 	mov	r0, #1
 73c:	ebffffc4 	bl	0x654
 740:	e3a00010 	mov	r0, #16
 744:	ebfffecf 	bl	0x288
 748:	e5960000 	ldr	r0, [r6]
 74c:	e3100102 	tst	r0, #-2147483648	; 0x80000000
 750:	1afffffc 	bne	0x748
 754:	ebffff0f 	bl	0x398
 758:	e59600a8 	ldr	r0, [r6, #168]	; 0xa8
 75c:	e5941020 	ldr	r1, [r4, #32]
 760:	e3c006ff 	bic	r0, r0, #267386880	; 0xff00000
 764:	e20110ff 	and	r1, r1, #255	; 0xff
 768:	e1800a01 	orr	r0, r0, r1, lsl #20
 76c:	e58600a8 	str	r0, [r6, #168]	; 0xa8
 770:	e5940024 	ldr	r0, [r4, #36]	; 0x24
 774:	e2001003 	and	r1, r0, #3
 778:	e3811733 	orr	r1, r1, #13369344	; 0xcc0000
 77c:	e1815f00 	orr	r5, r1, r0, lsl #30
 780:	e5865008 	str	r5, [r6, #8]
 784:	e5940004 	ldr	r0, [r4, #4]
 788:	ebffff9c 	bl	0x600
 78c:	e594002c 	ldr	r0, [r4, #44]	; 0x2c
 790:	e5860014 	str	r0, [r6, #20]
 794:	e5940030 	ldr	r0, [r4, #48]	; 0x30
 798:	e5860018 	str	r0, [r6, #24]
 79c:	e5940034 	ldr	r0, [r4, #52]	; 0x34
 7a0:	e586001c 	str	r0, [r6, #28]
 7a4:	e5940008 	ldr	r0, [r4, #8]
 7a8:	e3500003 	cmp	r0, #3
 7ac:	0594001c 	ldreq	r0, [r4, #28]
 7b0:	00870200 	addeq	r0, r7, r0, lsl #4
 7b4:	0a000004 	beq	0x7cc
 7b8:	e3500002 	cmp	r0, #2
 7bc:	1a000003 	bne	0x7d0
 7c0:	e594101c 	ldr	r1, [r4, #28]
 7c4:	e3a00002 	mov	r0, #2
 7c8:	e1800201 	orr	r0, r0, r1, lsl #4
 7cc:	e3805c0a 	orr	r5, r0, #2560	; 0xa00
 7d0:	e58651f0 	str	r5, [r6, #496]	; 0x1f0
 7d4:	e5940044 	ldr	r0, [r4, #68]	; 0x44
 7d8:	e58601f4 	str	r0, [r6, #500]	; 0x1f4
 7dc:	e5940048 	ldr	r0, [r4, #72]	; 0x48
 7e0:	e58601f8 	str	r0, [r6, #504]	; 0x1f8
 7e4:	e594004c 	ldr	r0, [r4, #76]	; 0x4c
 7e8:	e58601fc 	str	r0, [r6, #508]	; 0x1fc
 7ec:	e5960000 	ldr	r0, [r6]
 7f0:	e3800901 	orr	r0, r0, #16384	; 0x4000
 7f4:	e5860000 	str	r0, [r6]
 7f8:	e5960000 	ldr	r0, [r6]
 7fc:	e3800102 	orr	r0, r0, #-2147483648	; 0x80000000
 800:	e5860000 	str	r0, [r6]
 804:	e5960000 	ldr	r0, [r6]
 808:	e3100102 	tst	r0, #-2147483648	; 0x80000000
 80c:	1afffffc 	bne	0x804
 810:	ebfffec7 	bl	0x334
 814:	ebffff6e 	bl	0x5d4
 818:	e3500000 	cmp	r0, #0
 81c:	b3a00000 	movlt	r0, #0
 820:	b8bd81f0 	poplt	{r4, r5, r6, r7, r8, pc}
 824:	ebffff14 	bl	0x47c
 828:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
 82c:	eaffff4c 	b	0x564

 830:	e3a00000 	mov	r0, #0
 834:	e12fff1e 	bx	lr

 838:	01c20000 	biceq	r0, r2, r0
 83c:	01c01000 	biceq	r1, r0, r0
 840:	00007a68 	andeq	r7, r0, r8, ror #20
 844:	16237495 			; <UNDEFINED> instruction: 0x16237495
 848:	00000301 	andeq	r0, r0, r1, lsl #6
 84c:	00000301 	andeq	r0, r0, r1, lsl #6
 850:	00000301 	andeq	r0, r0, r1, lsl #6
 854:	00000301 	andeq	r0, r0, r1, lsl #6
 858:	00000301 	andeq	r0, r0, r1, lsl #6
 85c:	00000301 	andeq	r0, r0, r1, lsl #6
	...
 888:	00001031 	andeq	r1, r0, r1, lsr r0
 88c:	00001031 	andeq	r1, r0, r1, lsr r0
 890:	00000735 	andeq	r0, r0, r5, lsr r7
 894:	00001035 	andeq	r1, r0, r5, lsr r0
 898:	00001035 	andeq	r1, r0, r5, lsr r0
 89c:	00000731 	andeq	r0, r0, r1, lsr r7
 8a0:	00001031 	andeq	r1, r0, r1, lsr r0
 8a4:	00000735 	andeq	r0, r0, r5, lsr r7
 8a8:	00001035 	andeq	r1, r0, r5, lsr r0
 8ac:	00001031 	andeq	r1, r0, r1, lsr r0
 8b0:	00000731 	andeq	r0, r0, r1, lsr r7
 8b4:	00001035 	andeq	r1, r0, r5, lsr r0
 8b8:	00001031 	andeq	r1, r0, r1, lsr r0
 8bc:	00000301 	andeq	r0, r0, r1, lsl #6
 8c0:	00000301 	andeq	r0, r0, r1, lsl #6
 8c4:	00000731 	andeq	r0, r0, r1, lsr r7
