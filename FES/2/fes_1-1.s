
fes_1-1.fex:     file format binary


Disassembly of section .data:

00000000 <.data>:
   0:	e3070010 	tst	r7, #16
   4:	e92d4070 	push	{r4, r5, r6, lr}
   8:	e307506c 	tst	r7, #108	; 0x6c
   c:	e5900010 	ldr	r0, [r0, #16]
  10:	e3024710 	tst	r2, #16, 14	; 0x400000
  14:	e3500000 	cmp	r0, #0
  18:	13a00001 	movne	r0, #1
  1c:	1b000039 	blne	0x108
  20:	e1a00005 	mov	r0, r5
  24:	eb000034 	bl	0xfc
  28:	e3a00e2d 	mov	r0, #720	; 0x2d0
  2c:	eb000010 	bl	0x74
  30:	e5950004 	ldr	r0, [r5, #4]
  34:	e3a01001 	mov	r1, #1
  38:	eb000031 	bl	0x104
  3c:	e2544001 	subs	r4, r4, #1
  40:	2afffffd 	bcs	0x3c
  44:	e8bd4070 	pop	{r4, r5, r6, lr}
  48:	e1a00000 	nop			; (mov r0, r0)
  4c:	e3a01000 	mov	r1, #0
  50:	e3070210 	tst	r7, #16, 4
  54:	e1a02001 	mov	r2, r1
  58:	e1a03001 	mov	r3, r1
  5c:	e1a0c001 	mov	ip, r1
  60:	e880100e 	stm	r0, {r1, r2, r3, ip}
  64:	e59f1004 	ldr	r1, [pc, #4]	; 0x70
  68:	e5801000 	str	r1, [r0]
  6c:	e12fff1e 	bx	lr

;  70:	4d415244 	"DRAM"

  74:	e92d4010 	push	{r4, lr}
  78:	e3a01000 	mov	r1, #0
  7c:	e59f4088 	ldr	r4, [pc, #136]	; 0x10c
  80:	e5942054 	ldr	r2, [r4, #84]	; 0x54
  84:	e3c22803 	bic	r2, r2, #196608	; 0x30000
  88:	e3822801 	orr	r2, r2, #65536	; 0x10000
  8c:	e5842054 	str	r2, [r4, #84]	; 0x54
  90:	e2811001 	add	r1, r1, #1
  94:	e3510a01 	cmp	r1, #4096	; 0x1000
  98:	3afffffc 	bcc	0x90
  9c:	e3a01018 	mov	r1, #24
  a0:	eb000079 	bl	0x28c
  a4:	e5941000 	ldr	r1, [r4]
  a8:	e3c11c1f 	bic	r1, r1, #7936	; 0x1f00
  ac:	e3811102 	orr	r1, r1, #-2147483648	; 0x80000000
  b0:	e1810400 	orr	r0, r1, r0, lsl #8
  b4:	e3c00803 	bic	r0, r0, #196608	; 0x30000
  b8:	e3c00033 	bic	r0, r0, #51	; 0x33
  bc:	e5840000 	str	r0, [r4]
  c0:	e5940054 	ldr	r0, [r4, #84]	; 0x54
  c4:	e3c00033 	bic	r0, r0, #51	; 0x33
  c8:	e3c00c03 	bic	r0, r0, #768	; 0x300
  cc:	e3800011 	orr	r0, r0, #17
  d0:	e3800c01 	orr	r0, r0, #256	; 0x100
  d4:	e5840054 	str	r0, [r4, #84]	; 0x54
  d8:	e5940054 	ldr	r0, [r4, #84]	; 0x54
  dc:	e3c00803 	bic	r0, r0, #196608	; 0x30000
  e0:	e3800802 	orr	r0, r0, #131072	; 0x20000
  e4:	e5840054 	str	r0, [r4, #84]	; 0x54
  e8:	e3a00000 	mov	r0, #0
  ec:	e2800001 	add	r0, r0, #1
  f0:	e3500801 	cmp	r0, #65536	; 0x10000
  f4:	3afffffc 	bcc	0xec
  f8:	e8bd8010 	pop	{r4, pc}
  fc:	e3a00000 	mov	r0, #0
 100:	e12fff1e 	bx	lr
 104:	e12fff1e 	bx	lr
 108:	e12fff1e 	bx	lr

 10c:	01c20000

 110:	e1903001 	orrs	r3, r0, r1
 114:	4a000021 	bmi	0x1a0
 118:	e3b02000 	movs	r2, #0
 11c:	e07130a0 	rsbs	r3, r1, r0, lsr #1
 120:	3a00001a 	bcc	0x190
 124:	e0713220 	rsbs	r3, r1, r0, lsr #4
 128:	3a00000f 	bcc	0x16c
 12c:	e0713420 	rsbs	r3, r1, r0, lsr #8
 130:	3a000001 	bcc	0x13c
 134:	e3a0c000 	mov	ip, #0
 138:	ea000020 	b	0x1c0

 13c:	e07133a0 	rsbs	r3, r1, r0, lsr #7
 140:	20400381 	subcs	r0, r0, r1, lsl #7
 144:	e0b22002 	adcs	r2, r2, r2
 148:	e0713320 	rsbs	r3, r1, r0, lsr #6
 14c:	20400301 	subcs	r0, r0, r1, lsl #6
 150:	e0b22002 	adcs	r2, r2, r2
 154:	e07132a0 	rsbs	r3, r1, r0, lsr #5
 158:	20400281 	subcs	r0, r0, r1, lsl #5
 15c:	e0b22002 	adcs	r2, r2, r2
 160:	e0713220 	rsbs	r3, r1, r0, lsr #4
 164:	20400201 	subcs	r0, r0, r1, lsl #4
 168:	e0b22002 	adcs	r2, r2, r2
 16c:	e07131a0 	rsbs	r3, r1, r0, lsr #3
 170:	20400181 	subcs	r0, r0, r1, lsl #3
 174:	e0b22002 	adcs	r2, r2, r2
 178:	e0713120 	rsbs	r3, r1, r0, lsr #2
 17c:	20400101 	subcs	r0, r0, r1, lsl #2
 180:	e0b22002 	adcs	r2, r2, r2
 184:	e07130a0 	rsbs	r3, r1, r0, lsr #1
 188:	20400081 	subcs	r0, r0, r1, lsl #1
 18c:	e0b22002 	adcs	r2, r2, r2
 190:	e0501001 	subs	r1, r0, r1
 194:	31a01000 	movcc	r1, r0
 198:	e0a20002 	adc	r0, r2, r2
 19c:	e12fff1e 	bx	lr

 1a0:	e2112102 	ands	r2, r1, #-2147483648	; 0x80000000
 1a4:	42611000 	rsbmi	r1, r1, #0
 1a8:	e032c040 	eors	ip, r2, r0, asr #32
 1ac:	22600000 	rsbcs	r0, r0, #0
 1b0:	e0713220 	rsbs	r3, r1, r0, lsr #4
 1b4:	3a00001d 	bcc	0x230
 1b8:	e0713420 	rsbs	r3, r1, r0, lsr #8
 1bc:	3a00000f 	bcc	0x200
 1c0:	e1a01301 	lsl	r1, r1, #6
 1c4:	e0713420 	rsbs	r3, r1, r0, lsr #8
 1c8:	e382233f 	orr	r2, r2, #-67108864	; 0xfc000000
 1cc:	3a00000b 	bcc	0x200
 1d0:	e1a01301 	lsl	r1, r1, #6
 1d4:	e0713420 	rsbs	r3, r1, r0, lsr #8
 1d8:	e382263f 	orr	r2, r2, #66060288	; 0x3f00000
 1dc:	3a000007 	bcc	0x200
 1e0:	e1a01301 	lsl	r1, r1, #6
 1e4:	e0713420 	rsbs	r3, r1, r0, lsr #8
 1e8:	e382293f 	orr	r2, r2, #1032192	; 0xfc000
 1ec:	21a01301 	lslcs	r1, r1, #6
 1f0:	23822c3f 	orrcs	r2, r2, #16128	; 0x3f00
 1f4:	e2713000 	rsbs	r3, r1, #0
 1f8:	2a00001d 	bcs	0x274
 1fc:	21a01321 	lsrcs	r1, r1, #6
 200:	e07133a0 	rsbs	r3, r1, r0, lsr #7
 204:	20400381 	subcs	r0, r0, r1, lsl #7
 208:	e0b22002 	adcs	r2, r2, r2
 20c:	e0713320 	rsbs	r3, r1, r0, lsr #6
 210:	20400301 	subcs	r0, r0, r1, lsl #6
 214:	e0b22002 	adcs	r2, r2, r2
 218:	e07132a0 	rsbs	r3, r1, r0, lsr #5
 21c:	20400281 	subcs	r0, r0, r1, lsl #5
 220:	e0b22002 	adcs	r2, r2, r2
 224:	e0713220 	rsbs	r3, r1, r0, lsr #4
 228:	20400201 	subcs	r0, r0, r1, lsl #4
 22c:	e0b22002 	adcs	r2, r2, r2
 230:	e07131a0 	rsbs	r3, r1, r0, lsr #3
 234:	20400181 	subcs	r0, r0, r1, lsl #3
 238:	e0b22002 	adcs	r2, r2, r2
 23c:	e0713120 	rsbs	r3, r1, r0, lsr #2
 240:	20400101 	subcs	r0, r0, r1, lsl #2
 244:	e0b22002 	adcs	r2, r2, r2
 248:	2affffeb 	bcs	0x1fc
 24c:	e07130a0 	rsbs	r3, r1, r0, lsr #1
 250:	20400081 	subcs	r0, r0, r1, lsl #1
 254:	e0b22002 	adcs	r2, r2, r2
 258:	e0501001 	subs	r1, r0, r1
 25c:	31a01000 	movcc	r1, r0
 260:	e0a20002 	adc	r0, r2, r2
 264:	e1b0cfcc 	asrs	ip, ip, #31
 268:	42600000 	rsbmi	r0, r0, #0
 26c:	22611000 	rsbcs	r1, r1, #0
 270:	e12fff1e 	bx	lr
 274:	e1b0cfcc 	asrs	ip, ip, #31
 278:	42600000 	rsbmi	r0, r0, #0
 27c:	e92d4001 	push	{r0, lr}
 280:	e3b00000 	movs	r0, #0
 284:	e1a00000 	nop			; (mov r0, r0)
 288:	e8bd8002 	pop	{r1, pc}
 28c:	e3b02000 	movs	r2, #0
 290:	e0713220 	rsbs	r3, r1, r0, lsr #4
 294:	3affffb4 	bcc	0x16c
 298:	e0713420 	rsbs	r3, r1, r0, lsr #8
 29c:	3affffa6 	bcc	0x13c
 2a0:	e3a0c000 	mov	ip, #0
 2a4:	eaffffc5 	b	0x1c0
