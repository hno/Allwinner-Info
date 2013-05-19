ffff4000 <.data>:
ffff4000:	ea000006 	b	0xffff4020
ffff4004:	"eGON.BRM ",0
ffff4010:	"110011001625",0

ffff4020:	e30004e2 	movw	r0, #1250	; 0x4e2
ffff4024:	e2500001 	subs	r0, r0, #1
ffff4028:	1afffffd 	bne	0xffff4024
ffff402c:	e10f0000 	mrs	r0, CPSR
ffff4030:	e3c0001f 	bic	r0, r0, #31
ffff4034:	e3800013 	orr	r0, r0, #19
ffff4038:	e38000c0 	orr	r0, r0, #192	; 0xc0
ffff403c:	e3c00c02 	bic	r0, r0, #512	; 0x200
ffff4040:	e121f000 	msr	CPSR_c, r0
ffff4044:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
ffff4048:	e3c00005 	bic	r0, r0, #5
ffff404c:	e3c00b06 	bic	r0, r0, #6144	; 0x1800
ffff4050:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
ffff4054:	e59f1050 	ldr	r1, [pc, #80]	; 0xffff40ac
ffff4058:	e5912000 	ldr	r2, [r1]
ffff405c:	e3c22001 	bic	r2, r2, #1
ffff4060:	e5812000 	str	r2, [r1]
ffff4064:	e59f1044 	ldr	r1, [pc, #68]	; 0xffff40b0
ffff4068:	e5912054 	ldr	r2, [r1, #84]	; 0x54
ffff406c:	e3003333 	movw	r3, #819	; 0x333
ffff4070:	e1c22003 	bic	r2, r2, r3
ffff4074:	e3a03000 	mov	r3, #0
ffff4078:	e1822003 	orr	r2, r2, r3
ffff407c:	e5812054 	str	r2, [r1, #84]	; 0x54
ffff4080:	e5912060 	ldr	r2, [r1, #96]	; 0x60
ffff4084:	e3a03040 	mov	r3, #64	; 0x40
ffff4088:	e1822003 	orr	r2, r2, r3
ffff408c:	e5812060 	str	r2, [r1, #96]	; 0x60
ffff4090:	e5912068 	ldr	r2, [r1, #104]	; 0x68
ffff4094:	e3a03020 	mov	r3, #32
ffff4098:	e1822003 	orr	r2, r2, r3
ffff409c:	e5812068 	str	r2, [r1, #104]	; 0x68
ffff40a0:	e3a0d902 	mov	sp, #32768	; 0x8000
ffff40a4:	eb000002 	bl	0xffff40b4
ffff40a8:	eafffffe 	b	0xffff40a8

ffff40ac:	01c20c94
ffff40b0:	01c20000

ffff40b4:	e92d4010 	push	{r4, lr}
ffff40b8:	eb0008fe 	bl	0xffff64b8
ffff40bc:	e1a04000 	mov	r4, r0
ffff40c0:	e3540000 	cmp	r4, #0
ffff40c4:	0a000000 	beq	0xffff40cc
ffff40c8:	ea000016 	b	0xffff4128
ffff40cc:	e3a00000 	mov	r0, #0
ffff40d0:	eb000405 	bl	0xffff50ec
ffff40d4:	e1a04000 	mov	r4, r0
ffff40d8:	e3540000 	cmp	r4, #0
ffff40dc:	1a000000 	bne	0xffff40e4
ffff40e0:	ea000013 	b	0xffff4134
ffff40e4:	eb0004ee 	bl	0xffff54a4
ffff40e8:	e1a04000 	mov	r4, r0
ffff40ec:	e3540000 	cmp	r4, #0
ffff40f0:	1a000000 	bne	0xffff40f8
ffff40f4:	ea00000e 	b	0xffff4134
ffff40f8:	e3a00002 	mov	r0, #2
ffff40fc:	eb0003fa 	bl	0xffff50ec
ffff4100:	e1a04000 	mov	r4, r0
ffff4104:	e3540000 	cmp	r4, #0
ffff4108:	1a000000 	bne	0xffff4110
ffff410c:	ea000008 	b	0xffff4134
ffff4110:	eb000734 	bl	0xffff5de8
ffff4114:	e1a04000 	mov	r4, r0
ffff4118:	e3540000 	cmp	r4, #0
ffff411c:	1a000000 	bne	0xffff4124
ffff4120:	ea000003 	b	0xffff4134
ffff4124:	e320f000 	nop	{0}
ffff4128:	e59f0010 	ldr	r0, [pc, #16]	; 0xffff4140
ffff412c:	eb000917 	bl	0xffff6590
ffff4130:	e320f000 	nop	{0}
ffff4134:	e3a00000 	mov	r0, #0
ffff4138:	eb000914 	bl	0xffff6590
ffff413c:	e8bd8010 	pop	{r4, pc}

ffff4140:	ffff0020

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
ffff4198:	eb000310 	bl	0xffff4de0
ffff419c:	e3500000 	cmp	r0, #0
ffff41a0:	0a000002 	beq	0xffff41b0
ffff41a4:	e3e00000 	mvn	r0, #0
ffff41a8:	e28dd010 	add	sp, sp, #16
ffff41ac:	e8bd8010 	pop	{r4, pc}
ffff41b0:	e3a00000 	mov	r0, #0
ffff41b4:	eafffffb 	b	0xffff41a8
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
ffff4234:	eb0002e9 	bl	0xffff4de0
ffff4238:	e3500000 	cmp	r0, #0
ffff423c:	0a000002 	beq	0xffff424c
ffff4240:	e3e00000 	mvn	r0, #0
ffff4244:	e28dd094 	add	sp, sp, #148	; 0x94
ffff4248:	e8bd8030 	pop	{r4, r5, pc}
ffff424c:	e3a00000 	mov	r0, #0
ffff4250:	eafffffb 	b	0xffff4244
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
ffff4280:	ebffffaf 	bl	0xffff4144
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
ffff42cc:	eb0002c3 	bl	0xffff4de0
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
ffff4330:	eb0002aa 	bl	0xffff4de0
ffff4334:	e3500000 	cmp	r0, #0
ffff4338:	1a000011 	bne	0xffff4384
ffff433c:	e3a00001 	mov	r0, #1
ffff4340:	e58d0088 	str	r0, [sp, #136]	; 0x88
ffff4344:	e59f07b4 	ldr	r0, [pc, #1972]	; 0xffff4b00
ffff4348:	e58d008c 	str	r0, [sp, #140]	; 0x8c
ffff434c:	e59d0090 	ldr	r0, [sp, #144]	; 0x90
ffff4350:	e3c0003f 	bic	r0, r0, #63	; 0x3f
ffff4354:	e2800029 	add	r0, r0, #41	; 0x29
ffff4358:	e58d0090 	str	r0, [sp, #144]	; 0x90
ffff435c:	e1a02005 	mov	r2, r5
ffff4360:	e28d1004 	add	r1, sp, #4
ffff4364:	e28d0084 	add	r0, sp, #132	; 0x84
ffff4368:	eb00029c 	bl	0xffff4de0
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
ffff43c8:	ebffff5d 	bl	0xffff4144
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
ffff442c:	eb00026b 	bl	0xffff4de0
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
ffff44b4:	eb000249 	bl	0xffff4de0
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
ffff450c:	eb000233 	bl	0xffff4de0
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
ffff45c4:	ebfffede 	bl	0xffff4144
ffff45c8:	e3500000 	cmp	r0, #0
ffff45cc:	0a000002 	beq	0xffff45dc
ffff45d0:	e3e00000 	mvn	r0, #0
ffff45d4:	e28dd094 	add	sp, sp, #148	; 0x94
ffff45d8:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
ffff45dc:	e3a00002 	mov	r0, #2
ffff45e0:	e58d0084 	str	r0, [sp, #132]	; 0x84
ffff45e4:	e3a00001 	mov	r0, #1
ffff45e8:	e58d0088 	str	r0, [sp, #136]	; 0x88
ffff45ec:	e59f0510 	ldr	r0, [pc, #1296]	; 0xffff4b04
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
ffff4628:	eb0001ec 	bl	0xffff4de0
ffff462c:	e3500000 	cmp	r0, #0
ffff4630:	0a000001 	beq	0xffff463c
ffff4634:	e3e00000 	mvn	r0, #0
ffff4638:	eaffffe5 	b	0xffff45d4
ffff463c:	e59d0004 	ldr	r0, [sp, #4]
ffff4640:	e59f14c0 	ldr	r1, [pc, #1216]	; 0xffff4b08
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
ffff4714:	eb0001b1 	bl	0xffff4de0
ffff4718:	e3500000 	cmp	r0, #0
ffff471c:	0a000002 	beq	0xffff472c
ffff4720:	e3e00000 	mvn	r0, #0
ffff4724:	e28dd090 	add	sp, sp, #144	; 0x90
ffff4728:	e8bd8010 	pop	{r4, pc}
ffff472c:	e3a00000 	mov	r0, #0
ffff4730:	eafffffb 	b	0xffff4724
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
ffff47ac:	eb00018b 	bl	0xffff4de0
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
ffff47dc:	e92d4030 	push	{r4, r5, lr}
ffff47e0:	e24dd01c 	sub	sp, sp, #28
ffff47e4:	e1a04000 	mov	r4, r0
ffff47e8:	e1a05001 	mov	r5, r1
ffff47ec:	e3a02018 	mov	r2, #24
ffff47f0:	e59f1314 	ldr	r1, [pc, #788]	; 0xffff4b0c
ffff47f4:	e28d0004 	add	r0, sp, #4
ffff47f8:	eb000743 	bl	0xffff650c
ffff47fc:	e3a0003c 	mov	r0, #60	; 0x3c
ffff4800:	e58d0004 	str	r0, [sp, #4]
ffff4804:	e1a01005 	mov	r1, r5
ffff4808:	e28d0004 	add	r0, sp, #4
ffff480c:	eb00013b 	bl	0xffff4d00
ffff4810:	e3500000 	cmp	r0, #0
ffff4814:	0a000002 	beq	0xffff4824
ffff4818:	e3e00000 	mvn	r0, #0
ffff481c:	e28dd01c 	add	sp, sp, #28
ffff4820:	e8bd8030 	pop	{r4, r5, pc}
ffff4824:	e1a01005 	mov	r1, r5
ffff4828:	e1a00004 	mov	r0, r4
ffff482c:	ebfffe88 	bl	0xffff4254
ffff4830:	e3500000 	cmp	r0, #0
ffff4834:	0a000001 	beq	0xffff4840
ffff4838:	e3e00000 	mvn	r0, #0
ffff483c:	eafffff6 	b	0xffff481c
ffff4840:	e5940004 	ldr	r0, [r4, #4]
ffff4844:	e3500001 	cmp	r0, #1
ffff4848:	1a000006 	bne	0xffff4868
ffff484c:	e1a01005 	mov	r1, r5
ffff4850:	e1a00004 	mov	r0, r4
ffff4854:	ebfffece 	bl	0xffff4394
ffff4858:	e3700001 	cmn	r0, #1
ffff485c:	1a000008 	bne	0xffff4884
ffff4860:	e3e00000 	mvn	r0, #0
ffff4864:	eaffffec 	b	0xffff481c
ffff4868:	e1a01005 	mov	r1, r5
ffff486c:	e1a00004 	mov	r0, r4
ffff4870:	ebffff47 	bl	0xffff4594
ffff4874:	e3700001 	cmn	r0, #1
ffff4878:	1a000001 	bne	0xffff4884
ffff487c:	e3e00000 	mvn	r0, #0
ffff4880:	eaffffe5 	b	0xffff481c
ffff4884:	e1a00005 	mov	r0, r5
ffff4888:	ebffff87 	bl	0xffff46ac
ffff488c:	e3500000 	cmp	r0, #0
ffff4890:	0a000001 	beq	0xffff489c
ffff4894:	e3e00000 	mvn	r0, #0
ffff4898:	eaffffdf 	b	0xffff481c
ffff489c:	e1a01005 	mov	r1, r5
ffff48a0:	e1a00004 	mov	r0, r4
ffff48a4:	ebffffa2 	bl	0xffff4734
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
ffff48d4:	e92d4030 	push	{r4, r5, lr}
ffff48d8:	e24dd01c 	sub	sp, sp, #28
ffff48dc:	e1a04000 	mov	r4, r0
ffff48e0:	e1a05001 	mov	r5, r1
ffff48e4:	e1a01005 	mov	r1, r5
ffff48e8:	e1a00004 	mov	r0, r4
ffff48ec:	ebfffe31 	bl	0xffff41b8
ffff48f0:	e3500000 	cmp	r0, #0
ffff48f4:	0a000002 	beq	0xffff4904
ffff48f8:	e3e00000 	mvn	r0, #0
ffff48fc:	e28dd01c 	add	sp, sp, #28
ffff4900:	e8bd8030 	pop	{r4, r5, pc}
ffff4904:	e3a00001 	mov	r0, #1
ffff4908:	e58d0004 	str	r0, [sp, #4]
ffff490c:	e58d000c 	str	r0, [sp, #12]
ffff4910:	e3a00000 	mov	r0, #0
ffff4914:	e58d0008 	str	r0, [sp, #8]
ffff4918:	e3a00c02 	mov	r0, #512	; 0x200
ffff491c:	e58d0010 	str	r0, [sp, #16]
ffff4920:	e3e004ff 	mvn	r0, #-16777216	; 0xff000000
ffff4924:	e58d0014 	str	r0, [sp, #20]
ffff4928:	e3a000ff 	mov	r0, #255	; 0xff
ffff492c:	e58d0018 	str	r0, [sp, #24]
ffff4930:	e1a01005 	mov	r1, r5
ffff4934:	e28d0004 	add	r0, sp, #4
ffff4938:	eb0000f0 	bl	0xffff4d00
ffff493c:	e3500000 	cmp	r0, #0
ffff4940:	0a000001 	beq	0xffff494c
ffff4944:	e3e00000 	mvn	r0, #0
ffff4948:	eaffffeb 	b	0xffff48fc
ffff494c:	e3a00000 	mov	r0, #0
ffff4950:	eaffffe9 	b	0xffff48fc
ffff4954:	e92d4070 	push	{r4, r5, r6, lr}
ffff4958:	e1a04000 	mov	r4, r0
ffff495c:	e1a05001 	mov	r5, r1
ffff4960:	e1a06002 	mov	r6, r2
ffff4964:	e1a00004 	mov	r0, r4
ffff4968:	eb000082 	bl	0xffff4b78
ffff496c:	e1a00006 	mov	r0, r6
ffff4970:	eb0000a7 	bl	0xffff4c14
ffff4974:	e3500000 	cmp	r0, #0
ffff4978:	0a000001 	beq	0xffff4984
ffff497c:	e3e00000 	mvn	r0, #0
ffff4980:	e8bd8070 	pop	{r4, r5, r6, pc}
ffff4984:	e1a01006 	mov	r1, r6
ffff4988:	e1a00005 	mov	r0, r5
ffff498c:	ebffff92 	bl	0xffff47dc
ffff4990:	e3500000 	cmp	r0, #0
ffff4994:	1a000006 	bne	0xffff49b4
ffff4998:	e1a01006 	mov	r1, r6
ffff499c:	e1a00005 	mov	r0, r5
ffff49a0:	ebffffcb 	bl	0xffff48d4
ffff49a4:	e3500000 	cmp	r0, #0
ffff49a8:	0a000003 	beq	0xffff49bc
ffff49ac:	e3e00000 	mvn	r0, #0
ffff49b0:	eafffff2 	b	0xffff4980
ffff49b4:	e3e00000 	mvn	r0, #0
ffff49b8:	eafffff0 	b	0xffff4980
ffff49bc:	e3a00000 	mov	r0, #0
ffff49c0:	eaffffee 	b	0xffff4980
ffff49c4:	e92d4010 	push	{r4, lr}
ffff49c8:	e1a04000 	mov	r4, r0
ffff49cc:	e1a00004 	mov	r0, r4
ffff49d0:	eb0000ac 	bl	0xffff4c88
ffff49d4:	e8bd8010 	pop	{r4, pc}
ffff49d8:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
ffff49dc:	e24dd014 	sub	sp, sp, #20
ffff49e0:	e1a04000 	mov	r4, r0
ffff49e4:	e1a05001 	mov	r5, r1
ffff49e8:	e1a06002 	mov	r6, r2
ffff49ec:	e1a07003 	mov	r7, r3
ffff49f0:	e1cd83d0 	ldrd	r8, [sp, #48]	; 0x30
ffff49f4:	e28d0004 	add	r0, sp, #4
ffff49f8:	e3a01000 	mov	r1, #0
ffff49fc:	e1a02001 	mov	r2, r1
ffff4a00:	e1a03001 	mov	r3, r1
ffff4a04:	e1a0c001 	mov	ip, r1
ffff4a08:	e880100e 	stm	r0, {r1, r2, r3, ip}
ffff4a0c:	e3a00003 	mov	r0, #3
ffff4a10:	e58d0008 	str	r0, [sp, #8]
ffff4a14:	e59d0010 	ldr	r0, [sp, #16]
ffff4a18:	e3c00c01 	bic	r0, r0, #256	; 0x100
ffff4a1c:	e2800c01 	add	r0, r0, #256	; 0x100
ffff4a20:	e58d0010 	str	r0, [sp, #16]
ffff4a24:	e59d0010 	ldr	r0, [sp, #16]
ffff4a28:	e3c00040 	bic	r0, r0, #64	; 0x40
ffff4a2c:	e58d0010 	str	r0, [sp, #16]
ffff4a30:	e59d0010 	ldr	r0, [sp, #16]
ffff4a34:	e3c00c02 	bic	r0, r0, #512	; 0x200
ffff4a38:	e58d0010 	str	r0, [sp, #16]
ffff4a3c:	e59d0010 	ldr	r0, [sp, #16]
ffff4a40:	e3c00b01 	bic	r0, r0, #1024	; 0x400
ffff4a44:	e58d0010 	str	r0, [sp, #16]
ffff4a48:	e3a00000 	mov	r0, #0
ffff4a4c:	e58d0004 	str	r0, [sp, #4]
ffff4a50:	e3550001 	cmp	r5, #1
ffff4a54:	1a000004 	bne	0xffff4a6c
ffff4a58:	e59d0010 	ldr	r0, [sp, #16]
ffff4a5c:	e3c0003f 	bic	r0, r0, #63	; 0x3f
ffff4a60:	e2800011 	add	r0, r0, #17
ffff4a64:	e58d0010 	str	r0, [sp, #16]
ffff4a68:	ea000007 	b	0xffff4a8c
ffff4a6c:	e59d0010 	ldr	r0, [sp, #16]
ffff4a70:	e3c0003f 	bic	r0, r0, #63	; 0x3f
ffff4a74:	e2800012 	add	r0, r0, #18
ffff4a78:	e58d0010 	str	r0, [sp, #16]
ffff4a7c:	e59d0010 	ldr	r0, [sp, #16]
ffff4a80:	e3c00080 	bic	r0, r0, #128	; 0x80
ffff4a84:	e2800080 	add	r0, r0, #128	; 0x80
ffff4a88:	e58d0010 	str	r0, [sp, #16]
ffff4a8c:	e5970004 	ldr	r0, [r7, #4]
ffff4a90:	e3100020 	tst	r0, #32
ffff4a94:	0a000001 	beq	0xffff4aa0
ffff4a98:	e58d400c 	str	r4, [sp, #12]
ffff4a9c:	ea000001 	b	0xffff4aa8
ffff4aa0:	e1a00484 	lsl	r0, r4, #9
ffff4aa4:	e58d000c 	str	r0, [sp, #12]
ffff4aa8:	e1a02485 	lsl	r2, r5, #9
ffff4aac:	e1a03008 	mov	r3, r8
ffff4ab0:	e1a01006 	mov	r1, r6
ffff4ab4:	e58d9000 	str	r9, [sp]
ffff4ab8:	e28d0004 	add	r0, sp, #4
ffff4abc:	eb00011a 	bl	0xffff4f2c
ffff4ac0:	e3500000 	cmp	r0, #0
ffff4ac4:	0a000002 	beq	0xffff4ad4
ffff4ac8:	e3e00000 	mvn	r0, #0
ffff4acc:	e28dd014 	add	sp, sp, #20
ffff4ad0:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
ffff4ad4:	e3a00000 	mov	r0, #0
ffff4ad8:	eafffffb 	b	0xffff4acc
ffff4adc:	e1a02000 	mov	r2, r0
ffff4ae0:	e5920000 	ldr	r0, [r2]
ffff4ae4:	e3c00c02 	bic	r0, r0, #512	; 0x200
ffff4ae8:	e5820000 	str	r0, [r2]
ffff4aec:	e5920000 	ldr	r0, [r2]
ffff4af0:	e1800481 	orr	r0, r0, r1, lsl #9
ffff4af4:	e5820000 	str	r0, [r2]
ffff4af8:	e3a00000 	mov	r0, #0
ffff4afc:	e12fff1e 	bx	lr
ffff4b00:	40ff0000
ffff4b04:	40ff8000
ffff4b08:	00ff8000
ffff4b0c:	ffff6594
ffff4b10:	e92d4010 	push	{r4, lr}
ffff4b14:	e1a02000 	mov	r2, r0
ffff4b18:	e30f3fff 	movw	r3, #65535	; 0xffff
ffff4b1c:	e5812018 	str	r2, [r1, #24]
ffff4b20:	ea00000b 	b	0xffff4b54
ffff4b24:	e5910018 	ldr	r0, [r1, #24]
ffff4b28:	e3100102 	tst	r0, #-2147483648	; 0x80000000
ffff4b2c:	1a000001 	bne	0xffff4b38
ffff4b30:	e3a00000 	mov	r0, #0
ffff4b34:	e8bd8010 	pop	{r4, pc}
ffff4b38:	e5910038 	ldr	r0, [r1, #56]	; 0x38
ffff4b3c:	e3100a01 	tst	r0, #4096	; 0x1000
ffff4b40:	0a000003 	beq	0xffff4b54
ffff4b44:	e3a00a01 	mov	r0, #4096	; 0x1000
ffff4b48:	e5810038 	str	r0, [r1, #56]	; 0x38
ffff4b4c:	e3e00000 	mvn	r0, #0
ffff4b50:	eafffff7 	b	0xffff4b34
ffff4b54:	e1b00003 	movs	r0, r3
ffff4b58:	e2433001 	sub	r3, r3, #1
ffff4b5c:	1afffff0 	bne	0xffff4b24
ffff4b60:	e3530000 	cmp	r3, #0
ffff4b64:	aa000001 	bge	0xffff4b70
ffff4b68:	e3e00000 	mvn	r0, #0
ffff4b6c:	eafffff0 	b	0xffff4b34
ffff4b70:	e3a00000 	mov	r0, #0
ffff4b74:	eaffffee 	b	0xffff4b34
ffff4b78:	e1a02000 	mov	r2, r0
ffff4b7c:	e3520000 	cmp	r2, #0
ffff4b80:	1a00000b 	bne	0xffff4bb4
ffff4b84:	e59f0540 	ldr	r0, [pc, #1344]	; 0xffff50cc
ffff4b88:	e5901060 	ldr	r1, [r0, #96]	; 0x60
ffff4b8c:	e3811c01 	orr	r1, r1, #256	; 0x100
ffff4b90:	e5801060 	str	r1, [r0, #96]	; 0x60
ffff4b94:	e3a00102 	mov	r0, #-2147483648	; 0x80000000
ffff4b98:	e59f352c 	ldr	r3, [pc, #1324]	; 0xffff50cc
ffff4b9c:	e5830088 	str	r0, [r3, #136]	; 0x88
ffff4ba0:	e59f0528 	ldr	r0, [pc, #1320]	; 0xffff50d0
ffff4ba4:	e58308b4 	str	r0, [r3, #2228]	; 0x8b4
ffff4ba8:	e3000555 	movw	r0, #1365	; 0x555
ffff4bac:	e58308d0 	str	r0, [r3, #2256]	; 0x8d0
ffff4bb0:	ea000015 	b	0xffff4c0c
ffff4bb4:	e3520002 	cmp	r2, #2
ffff4bb8:	1a000013 	bne	0xffff4c0c
ffff4bbc:	e59f0508 	ldr	r0, [pc, #1288]	; 0xffff50cc
ffff4bc0:	e5901060 	ldr	r1, [r0, #96]	; 0x60
ffff4bc4:	e3811b01 	orr	r1, r1, #1024	; 0x400
ffff4bc8:	e5801060 	str	r1, [r0, #96]	; 0x60
ffff4bcc:	e3a00102 	mov	r0, #-2147483648	; 0x80000000
ffff4bd0:	e59f34f4 	ldr	r3, [pc, #1268]	; 0xffff50cc
ffff4bd4:	e5830090 	str	r0, [r3, #144]	; 0x90
ffff4bd8:	e3a00433 	mov	r0, #855638016	; 0x33000000
ffff4bdc:	e5830848 	str	r0, [r3, #2120]	; 0x848
ffff4be0:	e3030333 	movw	r0, #13107	; 0x3333
ffff4be4:	e583084c 	str	r0, [r3, #2124]	; 0x84c
ffff4be8:	e1c30000 	bic	r0, r3, r0
ffff4bec:	e5901864 	ldr	r1, [r0, #2148]	; 0x864
ffff4bf0:	e1a00001 	mov	r0, r1
ffff4bf4:	e7d7061f 	bfc	r0, #12, #12
ffff4bf8:	e1a01000 	mov	r1, r0
ffff4bfc:	e3811605 	orr	r1, r1, #5242880	; 0x500000
ffff4c00:	e3811a55 	orr	r1, r1, #348160	; 0x55000
ffff4c04:	e1a00003 	mov	r0, r3
ffff4c08:	e5801864 	str	r1, [r0, #2148]	; 0x864
ffff4c0c:	e3a00000 	mov	r0, #0
ffff4c10:	e12fff1e 	bx	lr
ffff4c14:	e92d4010 	push	{r4, lr}
ffff4c18:	e1a01000 	mov	r1, r0
ffff4c1c:	e30f4fff 	movw	r4, #65535	; 0xffff
ffff4c20:	e3a02007 	mov	r2, #7
ffff4c24:	e5812000 	str	r2, [r1]
ffff4c28:	ea000005 	b	0xffff4c44
ffff4c2c:	e2444001 	sub	r4, r4, #1
ffff4c30:	e3540000 	cmp	r4, #0
ffff4c34:	aa000001 	bge	0xffff4c40
ffff4c38:	e3e00000 	mvn	r0, #0
ffff4c3c:	e8bd8010 	pop	{r4, pc}
ffff4c40:	e5912000 	ldr	r2, [r1]
ffff4c44:	e3120007 	tst	r2, #7
ffff4c48:	1afffff7 	bne	0xffff4c2c
ffff4c4c:	e3a03000 	mov	r3, #0
ffff4c50:	ea000000 	b	0xffff4c58
ffff4c54:	e2833001 	add	r3, r3, #1
ffff4c58:	e3530032 	cmp	r3, #50	; 0x32
ffff4c5c:	3afffffc 	bcc	0xffff4c54
ffff4c60:	e5912038 	ldr	r2, [r1, #56]	; 0x38
ffff4c64:	e30f0fff 	movw	r0, #65535	; 0xffff
ffff4c68:	e1822000 	orr	r2, r2, r0
ffff4c6c:	e5812038 	str	r2, [r1, #56]	; 0x38
ffff4c70:	e3a02c02 	mov	r2, #512	; 0x200
ffff4c74:	e5812000 	str	r2, [r1]
ffff4c78:	e59f2454 	ldr	r2, [pc, #1108]	; 0xffff50d4
ffff4c7c:	e5812040 	str	r2, [r1, #64]	; 0x40
ffff4c80:	e3a00000 	mov	r0, #0
ffff4c84:	eaffffec 	b	0xffff4c3c
ffff4c88:	e1a01000 	mov	r1, r0
ffff4c8c:	e3510000 	cmp	r1, #0
ffff4c90:	1a00000b 	bne	0xffff4cc4
ffff4c94:	e59f0430 	ldr	r0, [pc, #1072]	; 0xffff50cc
ffff4c98:	e5902060 	ldr	r2, [r0, #96]	; 0x60
ffff4c9c:	e3c22c01 	bic	r2, r2, #256	; 0x100
ffff4ca0:	e5802060 	str	r2, [r0, #96]	; 0x60
ffff4ca4:	e3a00000 	mov	r0, #0
ffff4ca8:	e59f341c 	ldr	r3, [pc, #1052]	; 0xffff50cc
ffff4cac:	e5830088 	str	r0, [r3, #136]	; 0x88
ffff4cb0:	e59f0420 	ldr	r0, [pc, #1056]	; 0xffff50d8
ffff4cb4:	e58308b4 	str	r0, [r3, #2228]	; 0x8b4
ffff4cb8:	e3a00000 	mov	r0, #0
ffff4cbc:	e58308d0 	str	r0, [r3, #2256]	; 0x8d0
ffff4cc0:	ea00000c 	b	0xffff4cf8
ffff4cc4:	e3510002 	cmp	r1, #2
ffff4cc8:	1a00000a 	bne	0xffff4cf8
ffff4ccc:	e59f03f8 	ldr	r0, [pc, #1016]	; 0xffff50cc
ffff4cd0:	e5902060 	ldr	r2, [r0, #96]	; 0x60
ffff4cd4:	e3c22b01 	bic	r2, r2, #1024	; 0x400
ffff4cd8:	e5802060 	str	r2, [r0, #96]	; 0x60
ffff4cdc:	e3a00000 	mov	r0, #0
ffff4ce0:	e59f33e4 	ldr	r3, [pc, #996]	; 0xffff50cc
ffff4ce4:	e5830090 	str	r0, [r3, #144]	; 0x90
ffff4ce8:	e5830848 	str	r0, [r3, #2120]	; 0x848
ffff4cec:	e583084c 	str	r0, [r3, #2124]	; 0x84c
ffff4cf0:	e3050140 	movw	r0, #20800	; 0x5140
ffff4cf4:	e5830864 	str	r0, [r3, #2148]	; 0x864
ffff4cf8:	e3a00000 	mov	r0, #0
ffff4cfc:	e12fff1e 	bx	lr
ffff4d00:	e92d4070 	push	{r4, r5, r6, lr}
ffff4d04:	e1a04000 	mov	r4, r0
ffff4d08:	e1a05001 	mov	r5, r1
ffff4d0c:	e5940014 	ldr	r0, [r4, #20]
ffff4d10:	e5941010 	ldr	r1, [r4, #16]
ffff4d14:	e7df0411 	bfi	r0, r1, #8, #24
ffff4d18:	e1a06000 	mov	r6, r0
ffff4d1c:	e5856008 	str	r6, [r5, #8]
ffff4d20:	e594000c 	ldr	r0, [r4, #12]
ffff4d24:	e6ff6070 	uxth	r6, r0
ffff4d28:	e5856010 	str	r6, [r5, #16]
ffff4d2c:	e3a00000 	mov	r0, #0
ffff4d30:	e585000c 	str	r0, [r5, #12]
ffff4d34:	e5950004 	ldr	r0, [r5, #4]
ffff4d38:	e3c00801 	bic	r0, r0, #65536	; 0x10000
ffff4d3c:	e5850004 	str	r0, [r5, #4]
ffff4d40:	e59f6394 	ldr	r6, [pc, #916]	; 0xffff50dc
ffff4d44:	e1a01005 	mov	r1, r5
ffff4d48:	e1a00006 	mov	r0, r6
ffff4d4c:	ebffff6f 	bl	0xffff4b10
ffff4d50:	e3500000 	cmp	r0, #0
ffff4d54:	0a000001 	beq	0xffff4d60
ffff4d58:	e3e00000 	mvn	r0, #0
ffff4d5c:	e8bd8070 	pop	{r4, r5, r6, pc}
ffff4d60:	e5950004 	ldr	r0, [r5, #4]
ffff4d64:	e3c000ff 	bic	r0, r0, #255	; 0xff
ffff4d68:	e5850004 	str	r0, [r5, #4]
ffff4d6c:	e5950004 	ldr	r0, [r5, #4]
ffff4d70:	e5941000 	ldr	r1, [r4]
ffff4d74:	e1800001 	orr	r0, r0, r1
ffff4d78:	e5850004 	str	r0, [r5, #4]
ffff4d7c:	e59f6358 	ldr	r6, [pc, #856]	; 0xffff50dc
ffff4d80:	e1a01005 	mov	r1, r5
ffff4d84:	e1a00006 	mov	r0, r6
ffff4d88:	ebffff60 	bl	0xffff4b10
ffff4d8c:	e3500000 	cmp	r0, #0
ffff4d90:	0a000001 	beq	0xffff4d9c
ffff4d94:	e3e00000 	mvn	r0, #0
ffff4d98:	eaffffef 	b	0xffff4d5c
ffff4d9c:	e5950004 	ldr	r0, [r5, #4]
ffff4da0:	e5941004 	ldr	r1, [r4, #4]
ffff4da4:	e2011001 	and	r1, r1, #1
ffff4da8:	e3a02801 	mov	r2, #65536	; 0x10000
ffff4dac:	e1821881 	orr	r1, r2, r1, lsl #17
ffff4db0:	e1800001 	orr	r0, r0, r1
ffff4db4:	e5850004 	str	r0, [r5, #4]
ffff4db8:	e59f631c 	ldr	r6, [pc, #796]	; 0xffff50dc
ffff4dbc:	e1a01005 	mov	r1, r5
ffff4dc0:	e1a00006 	mov	r0, r6
ffff4dc4:	ebffff51 	bl	0xffff4b10
ffff4dc8:	e3500000 	cmp	r0, #0
ffff4dcc:	0a000001 	beq	0xffff4dd8
ffff4dd0:	e3e00000 	mvn	r0, #0
ffff4dd4:	eaffffe0 	b	0xffff4d5c
ffff4dd8:	e3a00000 	mov	r0, #0
ffff4ddc:	eaffffde 	b	0xffff4d5c
ffff4de0:	e92d4070 	push	{r4, r5, r6, lr}
ffff4de4:	e1a03000 	mov	r3, r0
ffff4de8:	e5930008 	ldr	r0, [r3, #8]
ffff4dec:	e582001c 	str	r0, [r2, #28]
ffff4df0:	e593000c 	ldr	r0, [r3, #12]
ffff4df4:	e200403f 	and	r4, r0, #63	; 0x3f
ffff4df8:	e593000c 	ldr	r0, [r3, #12]
ffff4dfc:	e7e005d0 	ubfx	r0, r0, #11, #1
ffff4e00:	e1844780 	orr	r4, r4, r0, lsl #15
ffff4e04:	e593000c 	ldr	r0, [r3, #12]
ffff4e08:	e7e003d0 	ubfx	r0, r0, #7, #1
ffff4e0c:	e1844600 	orr	r4, r4, r0, lsl #12
ffff4e10:	e5930004 	ldr	r0, [r3, #4]
ffff4e14:	e3500000 	cmp	r0, #0
ffff4e18:	0a000006 	beq	0xffff4e38
ffff4e1c:	e3844040 	orr	r4, r4, #64	; 0x40
ffff4e20:	e593000c 	ldr	r0, [r3, #12]
ffff4e24:	e7e00350 	ubfx	r0, r0, #6, #1
ffff4e28:	e1844380 	orr	r4, r4, r0, lsl #7
ffff4e2c:	e593000c 	ldr	r0, [r3, #12]
ffff4e30:	e7e00450 	ubfx	r0, r0, #8, #1
ffff4e34:	e1844400 	orr	r4, r4, r0, lsl #8
ffff4e38:	e5930004 	ldr	r0, [r3, #4]
ffff4e3c:	e3500003 	cmp	r0, #3
ffff4e40:	1a000006 	bne	0xffff4e60
ffff4e44:	e3844c22 	orr	r4, r4, #8704	; 0x2200
ffff4e48:	e593000c 	ldr	r0, [r3, #12]
ffff4e4c:	e7e004d0 	ubfx	r0, r0, #9, #1
ffff4e50:	e1844500 	orr	r4, r4, r0, lsl #10
ffff4e54:	e593000c 	ldr	r0, [r3, #12]
ffff4e58:	e7e00550 	ubfx	r0, r0, #10, #1
ffff4e5c:	e1844580 	orr	r4, r4, r0, lsl #11
ffff4e60:	e3844102 	orr	r4, r4, #-2147483648	; 0x80000000
ffff4e64:	e5824018 	str	r4, [r2, #24]
ffff4e68:	e30f5fff 	movw	r5, #65535	; 0xffff
ffff4e6c:	e320f000 	nop	{0}
ffff4e70:	e1b00005 	movs	r0, r5
ffff4e74:	e2455001 	sub	r5, r5, #1
ffff4e78:	0a000002 	beq	0xffff4e88
ffff4e7c:	e5920038 	ldr	r0, [r2, #56]	; 0x38
ffff4e80:	e3100004 	tst	r0, #4
ffff4e84:	0afffff9 	beq	0xffff4e70
ffff4e88:	e3a00004 	mov	r0, #4
ffff4e8c:	e5820038 	str	r0, [r2, #56]	; 0x38
ffff4e90:	e3550000 	cmp	r5, #0
ffff4e94:	aa000001 	bge	0xffff4ea0
ffff4e98:	e3e00000 	mvn	r0, #0
ffff4e9c:	e8bd8070 	pop	{r4, r5, r6, pc}
ffff4ea0:	e5924038 	ldr	r4, [r2, #56]	; 0x38
ffff4ea4:	e5930004 	ldr	r0, [r3, #4]
ffff4ea8:	e3500000 	cmp	r0, #0
ffff4eac:	0a00001c 	beq	0xffff4f24
ffff4eb0:	e3000102 	movw	r0, #258	; 0x102
ffff4eb4:	e1100004 	tst	r0, r4
ffff4eb8:	0a000003 	beq	0xffff4ecc
ffff4ebc:	e3000102 	movw	r0, #258	; 0x102
ffff4ec0:	e5820038 	str	r0, [r2, #56]	; 0x38
ffff4ec4:	e3e00000 	mvn	r0, #0
ffff4ec8:	eafffff3 	b	0xffff4e9c
ffff4ecc:	e593000c 	ldr	r0, [r3, #12]
ffff4ed0:	e7e00450 	ubfx	r0, r0, #8, #1
ffff4ed4:	e3500000 	cmp	r0, #0
ffff4ed8:	0a000005 	beq	0xffff4ef4
ffff4edc:	e3140040 	tst	r4, #64	; 0x40
ffff4ee0:	0a000003 	beq	0xffff4ef4
ffff4ee4:	e3a00040 	mov	r0, #64	; 0x40
ffff4ee8:	e5820038 	str	r0, [r2, #56]	; 0x38
ffff4eec:	e3e00000 	mvn	r0, #0
ffff4ef0:	eaffffe9 	b	0xffff4e9c
ffff4ef4:	e5920020 	ldr	r0, [r2, #32]
ffff4ef8:	e5810000 	str	r0, [r1]
ffff4efc:	e593000c 	ldr	r0, [r3, #12]
ffff4f00:	e7e00350 	ubfx	r0, r0, #6, #1
ffff4f04:	e3500001 	cmp	r0, #1
ffff4f08:	1a000005 	bne	0xffff4f24
ffff4f0c:	e5920024 	ldr	r0, [r2, #36]	; 0x24
ffff4f10:	e5810004 	str	r0, [r1, #4]
ffff4f14:	e5920028 	ldr	r0, [r2, #40]	; 0x28
ffff4f18:	e5810008 	str	r0, [r1, #8]
ffff4f1c:	e592002c 	ldr	r0, [r2, #44]	; 0x2c
ffff4f20:	e581000c 	str	r0, [r1, #12]
ffff4f24:	e3a00000 	mov	r0, #0
ffff4f28:	eaffffdb 	b	0xffff4e9c
ffff4f2c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
ffff4f30:	e24dd094 	sub	sp, sp, #148	; 0x94
ffff4f34:	e1a04000 	mov	r4, r0
ffff4f38:	e1a05001 	mov	r5, r1
ffff4f3c:	e1a06002 	mov	r6, r2
ffff4f40:	e1a07003 	mov	r7, r3
ffff4f44:	e59d80b8 	ldr	r8, [sp, #184]	; 0xb8
ffff4f48:	e3a0a000 	mov	sl, #0
ffff4f4c:	e59fb18c 	ldr	fp, [pc, #396]	; 0xffff50e0
ffff4f50:	e3e00000 	mvn	r0, #0
ffff4f54:	e58d0090 	str	r0, [sp, #144]	; 0x90
ffff4f58:	e59f1184 	ldr	r1, [pc, #388]	; 0xffff50e4
ffff4f5c:	e0810608 	add	r0, r1, r8, lsl #12
ffff4f60:	e58d0004 	str	r0, [sp, #4]
ffff4f64:	e58d5000 	str	r5, [sp]
ffff4f68:	e5970000 	ldr	r0, [r7]
ffff4f6c:	e3800102 	orr	r0, r0, #-2147483648	; 0x80000000
ffff4f70:	e5870000 	str	r0, [r7]
ffff4f74:	e5876014 	str	r6, [r7, #20]
ffff4f78:	e1a02007 	mov	r2, r7
ffff4f7c:	e28d1010 	add	r1, sp, #16
ffff4f80:	e1a00004 	mov	r0, r4
ffff4f84:	ebffff95 	bl	0xffff4de0
ffff4f88:	e3500000 	cmp	r0, #0
ffff4f8c:	0a000002 	beq	0xffff4f9c
ffff4f90:	e3a00c02 	mov	r0, #512	; 0x200
ffff4f94:	e5870010 	str	r0, [r7, #16]
ffff4f98:	ea000043 	b	0xffff50ac
ffff4f9c:	e1a00126 	lsr	r0, r6, #2
ffff4fa0:	e58d0008 	str	r0, [sp, #8]
ffff4fa4:	ea000013 	b	0xffff4ff8
ffff4fa8:	e597003c 	ldr	r0, [r7, #60]	; 0x3c
ffff4fac:	e7e408d0 	ubfx	r0, r0, #17, #5
ffff4fb0:	e58d000c 	str	r0, [sp, #12]
ffff4fb4:	ea000006 	b	0xffff4fd4
ffff4fb8:	e59d0004 	ldr	r0, [sp, #4]
ffff4fbc:	e5901000 	ldr	r1, [r0]
ffff4fc0:	e1a0000a 	mov	r0, sl
ffff4fc4:	e28aa001 	add	sl, sl, #1
ffff4fc8:	e59d2000 	ldr	r2, [sp]
ffff4fcc:	e7821100 	str	r1, [r2, r0, lsl #2]
ffff4fd0:	e59fb108 	ldr	fp, [pc, #264]	; 0xffff50e0
ffff4fd4:	e59d000c 	ldr	r0, [sp, #12]
ffff4fd8:	e2401001 	sub	r1, r0, #1
ffff4fdc:	e3500000 	cmp	r0, #0
ffff4fe0:	e58d100c 	str	r1, [sp, #12]
ffff4fe4:	1afffff3 	bne	0xffff4fb8
ffff4fe8:	e1b0000b 	movs	r0, fp
ffff4fec:	e24bb001 	sub	fp, fp, #1
ffff4ff0:	1a000000 	bne	0xffff4ff8
ffff4ff4:	ea00002c 	b	0xffff50ac
ffff4ff8:	e59d0008 	ldr	r0, [sp, #8]
ffff4ffc:	e15a0000 	cmp	sl, r0
ffff5000:	3affffe8 	bcc	0xffff4fa8
ffff5004:	e3a00c02 	mov	r0, #512	; 0x200
ffff5008:	e5870010 	str	r0, [r7, #16]
ffff500c:	e59fb0cc 	ldr	fp, [pc, #204]	; 0xffff50e0
ffff5010:	e320f000 	nop	{0}
ffff5014:	e1b0000b 	movs	r0, fp
ffff5018:	e24bb001 	sub	fp, fp, #1
ffff501c:	0a000002 	beq	0xffff502c
ffff5020:	e5970038 	ldr	r0, [r7, #56]	; 0x38
ffff5024:	e3100008 	tst	r0, #8
ffff5028:	0afffff9 	beq	0xffff5014
ffff502c:	e3a00008 	mov	r0, #8
ffff5030:	e5870038 	str	r0, [r7, #56]	; 0x38
ffff5034:	e35b0000 	cmp	fp, #0
ffff5038:	aa000000 	bge	0xffff5040
ffff503c:	ea00001a 	b	0xffff50ac
ffff5040:	e594000c 	ldr	r0, [r4, #12]
ffff5044:	e7e003d0 	ubfx	r0, r0, #7, #1
ffff5048:	e3500000 	cmp	r0, #0
ffff504c:	0a00000c 	beq	0xffff5084
ffff5050:	e59fb090 	ldr	fp, [pc, #144]	; 0xffff50e8
ffff5054:	e320f000 	nop	{0}
ffff5058:	e1b0000b 	movs	r0, fp
ffff505c:	e24bb001 	sub	fp, fp, #1
ffff5060:	0a000002 	beq	0xffff5070
ffff5064:	e5970038 	ldr	r0, [r7, #56]	; 0x38
ffff5068:	e3100901 	tst	r0, #16384	; 0x4000
ffff506c:	0afffff9 	beq	0xffff5058
ffff5070:	e3a00901 	mov	r0, #16384	; 0x4000
ffff5074:	e5870038 	str	r0, [r7, #56]	; 0x38
ffff5078:	e35b0000 	cmp	fp, #0
ffff507c:	aa000000 	bge	0xffff5084
ffff5080:	ea000009 	b	0xffff50ac
ffff5084:	e5979038 	ldr	r9, [r7, #56]	; 0x38
ffff5088:	e30a0a80 	movw	r0, #43648	; 0xaa80
ffff508c:	e1100009 	tst	r0, r9
ffff5090:	0a000002 	beq	0xffff50a0
ffff5094:	e30a0a80 	movw	r0, #43648	; 0xaa80
ffff5098:	e5870038 	str	r0, [r7, #56]	; 0x38
ffff509c:	ea000002 	b	0xffff50ac
ffff50a0:	e3a00000 	mov	r0, #0
ffff50a4:	e58d0090 	str	r0, [sp, #144]	; 0x90
ffff50a8:	e320f000 	nop	{0}
ffff50ac:	e5970000 	ldr	r0, [r7]
ffff50b0:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff50b4:	e5870000 	str	r0, [r7]
ffff50b8:	e3e00000 	mvn	r0, #0
ffff50bc:	e5870038 	str	r0, [r7, #56]	; 0x38
ffff50c0:	e59d0090 	ldr	r0, [sp, #144]	; 0x90
ffff50c4:	e28dd094 	add	sp, sp, #148	; 0x94
ffff50c8:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
ffff50cc:	01c20000 	
ffff50d0:	00222222 	
ffff50d4:	00070008 	
ffff50d8:	00404044 	
ffff50dc:	80202000 	
ffff50e0:	0007ffff 	
ffff50e4:	01c0f100 	
ffff50e8:	000fffff 	
ffff50ec:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
ffff50f0:	e24dd038 	sub	sp, sp, #56	; 0x38
ffff50f4:	e1a05000 	mov	r5, r0
ffff50f8:	e3a07000 	mov	r7, #0
ffff50fc:	e3e08000 	mvn	r8, #0
ffff5100:	e59f1174 	ldr	r1, [pc, #372]	; 0xffff527c
ffff5104:	e0817605 	add	r7, r1, r5, lsl #12
ffff5108:	e1a02007 	mov	r2, r7
ffff510c:	e28d1008 	add	r1, sp, #8
ffff5110:	e1a00005 	mov	r0, r5
ffff5114:	ebfffe0e 	bl	0xffff4954
ffff5118:	e3700001 	cmn	r0, #1
ffff511c:	1a000000 	bne	0xffff5124
ffff5120:	ea000050 	b	0xffff5268
ffff5124:	e3a01000 	mov	r1, #0
ffff5128:	e1a00007 	mov	r0, r7
ffff512c:	ebfffe6a 	bl	0xffff4adc
ffff5130:	e58d5004 	str	r5, [sp, #4]
ffff5134:	e58d7000 	str	r7, [sp]
ffff5138:	e28d3008 	add	r3, sp, #8
ffff513c:	e3a02000 	mov	r2, #0
ffff5140:	e3a01008 	mov	r1, #8
ffff5144:	e3a00010 	mov	r0, #16
ffff5148:	ebfffe22 	bl	0xffff49d8
ffff514c:	e3500000 	cmp	r0, #0
ffff5150:	0a00000c 	beq	0xffff5188
ffff5154:	e3a01001 	mov	r1, #1
ffff5158:	e1a00007 	mov	r0, r7
ffff515c:	ebfffe5e 	bl	0xffff4adc
ffff5160:	e58d5004 	str	r5, [sp, #4]
ffff5164:	e58d7000 	str	r7, [sp]
ffff5168:	e28d3008 	add	r3, sp, #8
ffff516c:	e3a02000 	mov	r2, #0
ffff5170:	e3a01008 	mov	r1, #8
ffff5174:	e3a00010 	mov	r0, #16
ffff5178:	ebfffe16 	bl	0xffff49d8
ffff517c:	e3500000 	cmp	r0, #0
ffff5180:	0a000000 	beq	0xffff5188
ffff5184:	ea000037 	b	0xffff5268
ffff5188:	e28f10f0 	add	r1, pc, #240	; 0xf0
ffff518c:	e3a00000 	mov	r0, #0
ffff5190:	eb000477 	bl	0xffff6374
ffff5194:	e3500000 	cmp	r0, #0
ffff5198:	0a000000 	beq	0xffff51a0
ffff519c:	ea000031 	b	0xffff5268
ffff51a0:	e3a04000 	mov	r4, #0
ffff51a4:	e5946010 	ldr	r6, [r4, #16]
ffff51a8:	e3560902 	cmp	r6, #32768	; 0x8000
ffff51ac:	8a000003 	bhi	0xffff51c0
ffff51b0:	e1a00006 	mov	r0, r6
ffff51b4:	e7df049f 	bfc	r0, #9, #23
ffff51b8:	e3500000 	cmp	r0, #0
ffff51bc:	0a000000 	beq	0xffff51c4
ffff51c0:	ea000028 	b	0xffff5268
ffff51c4:	e3a01000 	mov	r1, #0
ffff51c8:	e1a00007 	mov	r0, r7
ffff51cc:	ebfffe42 	bl	0xffff4adc
ffff51d0:	e1a014a6 	lsr	r1, r6, #9
ffff51d4:	e58d5004 	str	r5, [sp, #4]
ffff51d8:	e58d7000 	str	r7, [sp]
ffff51dc:	e28d3008 	add	r3, sp, #8
ffff51e0:	e3a02000 	mov	r2, #0
ffff51e4:	e3a00010 	mov	r0, #16
ffff51e8:	ebfffdfa 	bl	0xffff49d8
ffff51ec:	e3500000 	cmp	r0, #0
ffff51f0:	0a00000c 	beq	0xffff5228
ffff51f4:	e3a01001 	mov	r1, #1
ffff51f8:	e1a00007 	mov	r0, r7
ffff51fc:	ebfffe36 	bl	0xffff4adc
ffff5200:	e1a014a6 	lsr	r1, r6, #9
ffff5204:	e58d5004 	str	r5, [sp, #4]
ffff5208:	e58d7000 	str	r7, [sp]
ffff520c:	e28d3008 	add	r3, sp, #8
ffff5210:	e3a02000 	mov	r2, #0
ffff5214:	e3a00010 	mov	r0, #16
ffff5218:	ebfffdee 	bl	0xffff49d8
ffff521c:	e3500000 	cmp	r0, #0
ffff5220:	0a000000 	beq	0xffff5228
ffff5224:	ea00000f 	b	0xffff5268
ffff5228:	e1a01006 	mov	r1, r6
ffff522c:	e3a00000 	mov	r0, #0
ffff5230:	eb000462 	bl	0xffff63c0
ffff5234:	e3500000 	cmp	r0, #0
ffff5238:	1a000009 	bne	0xffff5264
ffff523c:	e3a08000 	mov	r8, #0
ffff5240:	e3550000 	cmp	r5, #0
ffff5244:	1a000002 	bne	0xffff5254
ffff5248:	e3a00000 	mov	r0, #0
ffff524c:	e5c40028 	strb	r0, [r4, #40]	; 0x28
ffff5250:	ea000003 	b	0xffff5264
ffff5254:	e3550002 	cmp	r5, #2
ffff5258:	1a000001 	bne	0xffff5264
ffff525c:	e3a00002 	mov	r0, #2
ffff5260:	e5c40028 	strb	r0, [r4, #40]	; 0x28
ffff5264:	e320f000 	nop	{0}
ffff5268:	e1a00005 	mov	r0, r5
ffff526c:	ebfffdd4 	bl	0xffff49c4
ffff5270:	e1a00008 	mov	r0, r8
ffff5274:	e28dd038 	add	sp, sp, #56	; 0x38
ffff5278:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
ffff527c:	01c0f000 	biceq	pc, r0, r0
ffff5280:	4e4f4765 	cdpmi	7, 4, cr4, cr15, cr5, {3}
ffff5284:	3054422e 	subscc	r4, r4, lr, lsr #4
ffff5288:	00000000 	andeq	r0, r0, r0
ffff528c:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
ffff5290:	e1a04000 	mov	r4, r0
ffff5294:	e1a05001 	mov	r5, r1
ffff5298:	e5949000 	ldr	r9, [r4]
ffff529c:	e5940018 	ldr	r0, [r4, #24]
ffff52a0:	e58d0000 	str	r0, [sp]
ffff52a4:	e3a02000 	mov	r2, #0
ffff52a8:	e3a01001 	mov	r1, #1
ffff52ac:	e1a00005 	mov	r0, r5
ffff52b0:	e59d3000 	ldr	r3, [sp]
ffff52b4:	e12fff39 	blx	r9
ffff52b8:	e1a06000 	mov	r6, r0
ffff52bc:	e3560002 	cmp	r6, #2
ffff52c0:	1a000001 	bne	0xffff52cc
ffff52c4:	e3a00002 	mov	r0, #2
ffff52c8:	e8bd8ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
ffff52cc:	e3560003 	cmp	r6, #3
ffff52d0:	1a000001 	bne	0xffff52dc
ffff52d4:	e3a00003 	mov	r0, #3
ffff52d8:	eafffffa 	b	0xffff52c8
ffff52dc:	e28f1f7d 	add	r1, pc, #500	; 0x1f4
ffff52e0:	e3a00000 	mov	r0, #0
ffff52e4:	eb000422 	bl	0xffff6374
ffff52e8:	e3500000 	cmp	r0, #0
ffff52ec:	0a000001 	beq	0xffff52f8
ffff52f0:	e3e00000 	mvn	r0, #0
ffff52f4:	eafffff3 	b	0xffff52c8
ffff52f8:	e3a08000 	mov	r8, #0
ffff52fc:	e598a010 	ldr	sl, [r8, #16]
ffff5300:	e1a0000a 	mov	r0, sl
ffff5304:	e7df051f 	bfc	r0, #10, #22
ffff5308:	e3500000 	cmp	r0, #0
ffff530c:	0a000001 	beq	0xffff5318
ffff5310:	e3e00000 	mvn	r0, #0
ffff5314:	eaffffeb 	b	0xffff52c8
ffff5318:	eb000293 	bl	0xffff5d6c
ffff531c:	e1a0b000 	mov	fp, r0
ffff5320:	e35b0b01 	cmp	fp, #1024	; 0x400
ffff5324:	1a000001 	bne	0xffff5330
ffff5328:	e1a0752a 	lsr	r7, sl, #10
ffff532c:	ea000008 	b	0xffff5354
ffff5330:	e35b0a01 	cmp	fp, #4096	; 0x1000
ffff5334:	1a000001 	bne	0xffff5340
ffff5338:	e1a0762a 	lsr	r7, sl, #12
ffff533c:	ea000004 	b	0xffff5354
ffff5340:	e35b0a02 	cmp	fp, #8192	; 0x2000
ffff5344:	1a000001 	bne	0xffff5350
ffff5348:	e1a076aa 	lsr	r7, sl, #13
ffff534c:	ea000000 	b	0xffff5354
ffff5350:	e3a07001 	mov	r7, #1
ffff5354:	e3a02000 	mov	r2, #0
ffff5358:	e1a01007 	mov	r1, r7
ffff535c:	e1a00005 	mov	r0, r5
ffff5360:	e59d3000 	ldr	r3, [sp]
ffff5364:	e12fff39 	blx	r9
ffff5368:	e1a06000 	mov	r6, r0
ffff536c:	e3560002 	cmp	r6, #2
ffff5370:	1a000001 	bne	0xffff537c
ffff5374:	e3a00002 	mov	r0, #2
ffff5378:	eaffffd2 	b	0xffff52c8
ffff537c:	e3560003 	cmp	r6, #3
ffff5380:	1a000001 	bne	0xffff538c
ffff5384:	e3a00003 	mov	r0, #3
ffff5388:	eaffffce 	b	0xffff52c8
ffff538c:	e1a0100a 	mov	r1, sl
ffff5390:	e3a00000 	mov	r0, #0
ffff5394:	eb000409 	bl	0xffff63c0
ffff5398:	e3500000 	cmp	r0, #0
ffff539c:	1a000003 	bne	0xffff53b0
ffff53a0:	e3a00001 	mov	r0, #1
ffff53a4:	e5c80028 	strb	r0, [r8, #40]	; 0x28
ffff53a8:	e3a00000 	mov	r0, #0
ffff53ac:	eaffffc5 	b	0xffff52c8
ffff53b0:	e3e00000 	mvn	r0, #0
ffff53b4:	eaffffc3 	b	0xffff52c8
ffff53b8:	e92d4070 	push	{r4, r5, r6, lr}
ffff53bc:	e24dd028 	sub	sp, sp, #40	; 0x28
ffff53c0:	e3a04000 	mov	r4, #0
ffff53c4:	ea000019 	b	0xffff5430
ffff53c8:	e1a01004 	mov	r1, r4
ffff53cc:	e1a0000d 	mov	r0, sp
ffff53d0:	eb000043 	bl	0xffff54e4
ffff53d4:	e1a0000d 	mov	r0, sp
ffff53d8:	eb000216 	bl	0xffff5c38
ffff53dc:	e3a06040 	mov	r6, #64	; 0x40
ffff53e0:	ea00000d 	b	0xffff541c
ffff53e4:	e1a01006 	mov	r1, r6
ffff53e8:	e1a0000d 	mov	r0, sp
ffff53ec:	ebffffa6 	bl	0xffff528c
ffff53f0:	e1a05000 	mov	r5, r0
ffff53f4:	e3550000 	cmp	r5, #0
ffff53f8:	1a000003 	bne	0xffff540c
ffff53fc:	eb0001cc 	bl	0xffff5b34
ffff5400:	e3a00000 	mov	r0, #0
ffff5404:	e28dd028 	add	sp, sp, #40	; 0x28
ffff5408:	e8bd8070 	pop	{r4, r5, r6, pc}
ffff540c:	e3550002 	cmp	r5, #2
ffff5410:	1a000000 	bne	0xffff5418
ffff5414:	ea000002 	b	0xffff5424
ffff5418:	e2866040 	add	r6, r6, #64	; 0x40
ffff541c:	e3560c02 	cmp	r6, #512	; 0x200
ffff5420:	3affffef 	bcc	0xffff53e4
ffff5424:	e320f000 	nop	{0}
ffff5428:	eb0001c1 	bl	0xffff5b34
ffff542c:	e2844001 	add	r4, r4, #1
ffff5430:	e3540011 	cmp	r4, #17
ffff5434:	3affffe3 	bcc	0xffff53c8
ffff5438:	e3e00000 	mvn	r0, #0
ffff543c:	eafffff0 	b	0xffff5404
ffff5440:	e92d4030 	push	{r4, r5, lr}
ffff5444:	e24dd02c 	sub	sp, sp, #44	; 0x2c
ffff5448:	e3a05000 	mov	r5, #0
ffff544c:	ea000010 	b	0xffff5494
ffff5450:	e1a01005 	mov	r1, r5
ffff5454:	e28d0004 	add	r0, sp, #4
ffff5458:	eb000021 	bl	0xffff54e4
ffff545c:	e28d0004 	add	r0, sp, #4
ffff5460:	eb0001f4 	bl	0xffff5c38
ffff5464:	e3a01000 	mov	r1, #0
ffff5468:	e28d0004 	add	r0, sp, #4
ffff546c:	ebffff86 	bl	0xffff528c
ffff5470:	e1a04000 	mov	r4, r0
ffff5474:	e3540000 	cmp	r4, #0
ffff5478:	1a000003 	bne	0xffff548c
ffff547c:	eb0001ac 	bl	0xffff5b34
ffff5480:	e3a00000 	mov	r0, #0
ffff5484:	e28dd02c 	add	sp, sp, #44	; 0x2c
ffff5488:	e8bd8030 	pop	{r4, r5, pc}
ffff548c:	eb0001a8 	bl	0xffff5b34
ffff5490:	e2855001 	add	r5, r5, #1
ffff5494:	e3550011 	cmp	r5, #17
ffff5498:	3affffec 	bcc	0xffff5450
ffff549c:	e3e00000 	mvn	r0, #0
ffff54a0:	eafffff7 	b	0xffff5484
ffff54a4:	e92d4010 	push	{r4, lr}
ffff54a8:	ebffffe4 	bl	0xffff5440
ffff54ac:	e3500000 	cmp	r0, #0
ffff54b0:	1a000001 	bne	0xffff54bc
ffff54b4:	e3a00000 	mov	r0, #0
ffff54b8:	e8bd8010 	pop	{r4, pc}
ffff54bc:	ebffffbd 	bl	0xffff53b8
ffff54c0:	e3500000 	cmp	r0, #0
ffff54c4:	1a000001 	bne	0xffff54d0
ffff54c8:	e3a00000 	mov	r0, #0
ffff54cc:	eafffff9 	b	0xffff54b8
ffff54d0:	e3e00000 	mvn	r0, #0
ffff54d4:	eafffff7 	b	0xffff54b8
ffff54d8:	4e4f4765 	cdpmi	7, 4, cr4, cr15, cr5, {3}
ffff54dc:	3054422e 	subscc	r4, r4, lr, lsr #4
ffff54e0:	00000000 	andeq	r0, r0, r0
ffff54e4:	e92d4070 	push	{r4, r5, r6, lr}
ffff54e8:	e1a05000 	mov	r5, r0
ffff54ec:	e1a04001 	mov	r4, r1
ffff54f0:	e0840104 	add	r0, r4, r4, lsl #2
ffff54f4:	e59f2010 	ldr	r2, [pc, #16]	; 0xffff550c
ffff54f8:	e0821180 	add	r1, r2, r0, lsl #3
ffff54fc:	e3a02028 	mov	r2, #40	; 0x28
ffff5500:	e1a00005 	mov	r0, r5
ffff5504:	eb000400 	bl	0xffff650c
ffff5508:	e8bd8070 	pop	{r4, r5, r6, pc}
ffff550c:	ffff65ac
ffff5510:	e92d4010 	push	{r4, lr}
ffff5514:	e1a02000 	mov	r2, r0
ffff5518:	e3a03000 	mov	r3, #0
ffff551c:	e3a04000 	mov	r4, #0
ffff5520:	ea000002 	b	0xffff5530
ffff5524:	e3a00001 	mov	r0, #1
ffff5528:	e1844310 	orr	r4, r4, r0, lsl r3
ffff552c:	e2833001 	add	r3, r3, #1
ffff5530:	e1530001 	cmp	r3, r1
ffff5534:	3afffffa 	bcc	0xffff5524
ffff5538:	e0020004 	and	r0, r2, r4
ffff553c:	e8bd8010 	pop	{r4, pc}
ffff5540:	e3a02000 	mov	r2, #0
ffff5544:	e59f34b0 	ldr	r3, [pc, #1200]	; 0xffff59fc
ffff5548:	e5832000 	str	r2, [r3]
ffff554c:	e59f24ac 	ldr	r2, [pc, #1196]	; 0xffff5a00
ffff5550:	e5832304 	str	r2, [r3, #772]	; 0x304
ffff5554:	e0032002 	and	r2, r3, r2
ffff5558:	e5820308 	str	r0, [r2, #776]	; 0x308
ffff555c:	e3072f0f 	movw	r2, #32527	; 0x7f0f
ffff5560:	e5832318 	str	r2, [r3, #792]	; 0x318
ffff5564:	e1c32142 	bic	r2, r3, r2, asr #2
ffff5568:	e582130c 	str	r1, [r2, #780]	; 0x30c
ffff556c:	e59f2490 	ldr	r2, [pc, #1168]	; 0xffff5a04
ffff5570:	e5832300 	str	r2, [r3, #768]	; 0x300
ffff5574:	e12fff1e 	bx	lr
ffff5578:	e1a01000 	mov	r1, r0
ffff557c:	e320f000 	nop	{0}
ffff5580:	e59f0474 	ldr	r0, [pc, #1140]	; 0xffff59fc
ffff5584:	e5900300 	ldr	r0, [r0, #768]	; 0x300
ffff5588:	e3100102 	tst	r0, #-2147483648	; 0x80000000
ffff558c:	1a000001 	bne	0xffff5598
ffff5590:	e3a00000 	mov	r0, #0
ffff5594:	e12fff1e 	bx	lr
ffff5598:	e2410001 	sub	r0, r1, #1
ffff559c:	e1b01000 	movs	r1, r0
ffff55a0:	1afffff6 	bne	0xffff5580
ffff55a4:	e3a00002 	mov	r0, #2
ffff55a8:	eafffff9 	b	0xffff5594
ffff55ac:	e1a01000 	mov	r1, r0
ffff55b0:	e320f000 	nop	{0}
ffff55b4:	e59f044c 	ldr	r0, [pc, #1100]	; 0xffff5a08
ffff55b8:	e5900004 	ldr	r0, [r0, #4]
ffff55bc:	e3100002 	tst	r0, #2
ffff55c0:	0a000001 	beq	0xffff55cc
ffff55c4:	e3a00000 	mov	r0, #0
ffff55c8:	e12fff1e 	bx	lr
ffff55cc:	e2410001 	sub	r0, r1, #1
ffff55d0:	e1b01000 	movs	r1, r0
ffff55d4:	1afffff6 	bne	0xffff55b4
ffff55d8:	e3a00002 	mov	r0, #2
ffff55dc:	eafffff9 	b	0xffff55c8
ffff55e0:	e1a01000 	mov	r1, r0
ffff55e4:	e320f000 	nop	{0}
ffff55e8:	e59f0418 	ldr	r0, [pc, #1048]	; 0xffff5a08
ffff55ec:	e5900004 	ldr	r0, [r0, #4]
ffff55f0:	e3100008 	tst	r0, #8
ffff55f4:	1a000001 	bne	0xffff5600
ffff55f8:	e3a00000 	mov	r0, #0
ffff55fc:	e12fff1e 	bx	lr
ffff5600:	e2410001 	sub	r0, r1, #1
ffff5604:	e1b01000 	movs	r1, r0
ffff5608:	1afffff6 	bne	0xffff55e8
ffff560c:	e3a00002 	mov	r0, #2
ffff5610:	eafffff9 	b	0xffff55fc
ffff5614:	e92d4070 	push	{r4, r5, r6, lr}
ffff5618:	e1a04000 	mov	r4, r0
ffff561c:	e1a05001 	mov	r5, r1
ffff5620:	e1a06002 	mov	r6, r2
ffff5624:	e1a00004 	mov	r0, r4
ffff5628:	ebffffec 	bl	0xffff55e0
ffff562c:	e3500002 	cmp	r0, #2
ffff5630:	1a000001 	bne	0xffff563c
ffff5634:	e3a00002 	mov	r0, #2
ffff5638:	e8bd8070 	pop	{r4, r5, r6, pc}
ffff563c:	e1a00005 	mov	r0, r5
ffff5640:	ebffffd9 	bl	0xffff55ac
ffff5644:	e3500002 	cmp	r0, #2
ffff5648:	1a000001 	bne	0xffff5654
ffff564c:	e3a00002 	mov	r0, #2
ffff5650:	eafffff8 	b	0xffff5638
ffff5654:	e1a00006 	mov	r0, r6
ffff5658:	ebffffc6 	bl	0xffff5578
ffff565c:	e3500002 	cmp	r0, #2
ffff5660:	1a000001 	bne	0xffff566c
ffff5664:	e3a00002 	mov	r0, #2
ffff5668:	eafffff2 	b	0xffff5638
ffff566c:	e3a00000 	mov	r0, #0
ffff5670:	eafffff0 	b	0xffff5638
ffff5674:	e92d4010 	push	{r4, lr}
ffff5678:	e59f038c 	ldr	r0, [pc, #908]	; 0xffff5a0c
ffff567c:	e59f1384 	ldr	r1, [pc, #900]	; 0xffff5a08
ffff5680:	e5810024 	str	r0, [r1, #36]	; 0x24
ffff5684:	e3a00d4b 	mov	r0, #4800	; 0x12c0
ffff5688:	ebffffd4 	bl	0xffff55e0
ffff568c:	e3500002 	cmp	r0, #2
ffff5690:	1a000001 	bne	0xffff569c
ffff5694:	e3a00002 	mov	r0, #2
ffff5698:	e8bd8010 	pop	{r4, pc}
ffff569c:	e3010338 	movw	r0, #4920	; 0x1338
ffff56a0:	ebffffc1 	bl	0xffff55ac
ffff56a4:	e3500002 	cmp	r0, #2
ffff56a8:	1a000001 	bne	0xffff56b4
ffff56ac:	e3a00002 	mov	r0, #2
ffff56b0:	eafffff8 	b	0xffff5698
ffff56b4:	e3a00000 	mov	r0, #0
ffff56b8:	eafffff6 	b	0xffff5698
ffff56bc:	e92d5ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
ffff56c0:	e1a04000 	mov	r4, r0
ffff56c4:	e1a05001 	mov	r5, r1
ffff56c8:	e1a06002 	mov	r6, r2
ffff56cc:	e59f0334 	ldr	r0, [pc, #820]	; 0xffff5a08
ffff56d0:	e5900000 	ldr	r0, [r0]
ffff56d4:	e3800901 	orr	r0, r0, #16384	; 0x4000
ffff56d8:	e59f1328 	ldr	r1, [pc, #808]	; 0xffff5a08
ffff56dc:	e5810000 	str	r0, [r1]
ffff56e0:	eb0001a1 	bl	0xffff5d6c
ffff56e4:	e1a0b000 	mov	fp, r0
ffff56e8:	e1a0752b 	lsr	r7, fp, #10
ffff56ec:	e3019318 	movw	r9, #4888	; 0x1318
ffff56f0:	e3a00016 	mov	r0, #22
ffff56f4:	e0000097 	mul	r0, r7, r0
ffff56f8:	e280ad4b 	add	sl, r0, #4800	; 0x12c0
ffff56fc:	e59f030c 	ldr	r0, [pc, #780]	; 0xffff5a10
ffff5700:	e59f1300 	ldr	r1, [pc, #768]	; 0xffff5a08
ffff5704:	e5810028 	str	r0, [r1, #40]	; 0x28
ffff5708:	e1a0100b 	mov	r1, fp
ffff570c:	e1a00005 	mov	r0, r5
ffff5710:	ebffff8a 	bl	0xffff5540
ffff5714:	e59f02ec 	ldr	r0, [pc, #748]	; 0xffff5a08
ffff5718:	e580701c 	str	r7, [r0, #28]
ffff571c:	e1a00009 	mov	r0, r9
ffff5720:	ebffffae 	bl	0xffff55e0
ffff5724:	e3500002 	cmp	r0, #2
ffff5728:	1a000006 	bne	0xffff5748
ffff572c:	e59f02c8 	ldr	r0, [pc, #712]	; 0xffff59fc
ffff5730:	e5900300 	ldr	r0, [r0, #768]	; 0x300
ffff5734:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff5738:	e59f12bc 	ldr	r1, [pc, #700]	; 0xffff59fc
ffff573c:	e5810300 	str	r0, [r1, #768]	; 0x300
ffff5740:	e3a00002 	mov	r0, #2
ffff5744:	e8bd9ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}
ffff5748:	e1a08004 	mov	r8, r4
ffff574c:	e1a04008 	mov	r4, r8
ffff5750:	e1a00808 	lsl	r0, r8, #16
ffff5754:	e59f12ac 	ldr	r1, [pc, #684]	; 0xffff5a08
ffff5758:	e5810014 	str	r0, [r1, #20]
ffff575c:	e1a04008 	mov	r4, r8
ffff5760:	e1a00828 	lsr	r0, r8, #16
ffff5764:	e5810018 	str	r0, [r1, #24]
ffff5768:	e2860003 	add	r0, r6, #3
ffff576c:	e59f12a0 	ldr	r1, [pc, #672]	; 0xffff5a14
ffff5770:	e1810800 	orr	r0, r1, r0, lsl #16
ffff5774:	e59f128c 	ldr	r1, [pc, #652]	; 0xffff5a08
ffff5778:	e5810024 	str	r0, [r1, #36]	; 0x24
ffff577c:	e1a0200a 	mov	r2, sl
ffff5780:	e1a0100a 	mov	r1, sl
ffff5784:	e1a0000a 	mov	r0, sl
ffff5788:	ebffffa1 	bl	0xffff5614
ffff578c:	e3500002 	cmp	r0, #2
ffff5790:	1a000006 	bne	0xffff57b0
ffff5794:	e59f0260 	ldr	r0, [pc, #608]	; 0xffff59fc
ffff5798:	e5900300 	ldr	r0, [r0, #768]	; 0x300
ffff579c:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff57a0:	e59f1254 	ldr	r1, [pc, #596]	; 0xffff59fc
ffff57a4:	e5810300 	str	r0, [r1, #768]	; 0x300
ffff57a8:	e3a00002 	mov	r0, #2
ffff57ac:	eaffffe4 	b	0xffff5744
ffff57b0:	e59f1250 	ldr	r1, [pc, #592]	; 0xffff5a08
ffff57b4:	e5910038 	ldr	r0, [r1, #56]	; 0x38
ffff57b8:	e1a01007 	mov	r1, r7
ffff57bc:	ebffff53 	bl	0xffff5510
ffff57c0:	e3500000 	cmp	r0, #0
ffff57c4:	0a000006 	beq	0xffff57e4
ffff57c8:	e59f022c 	ldr	r0, [pc, #556]	; 0xffff59fc
ffff57cc:	e5900300 	ldr	r0, [r0, #768]	; 0x300
ffff57d0:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff57d4:	e59f1220 	ldr	r1, [pc, #544]	; 0xffff59fc
ffff57d8:	e5810300 	str	r0, [r1, #768]	; 0x300
ffff57dc:	e3a00003 	mov	r0, #3
ffff57e0:	eaffffd7 	b	0xffff5744
ffff57e4:	e59f0210 	ldr	r0, [pc, #528]	; 0xffff59fc
ffff57e8:	e5900300 	ldr	r0, [r0, #768]	; 0x300
ffff57ec:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff57f0:	e59f1204 	ldr	r1, [pc, #516]	; 0xffff59fc
ffff57f4:	e5810300 	str	r0, [r1, #768]	; 0x300
ffff57f8:	e3a00000 	mov	r0, #0
ffff57fc:	eaffffd0 	b	0xffff5744
ffff5800:	e92d5ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
ffff5804:	e1a04000 	mov	r4, r0
ffff5808:	e1a05001 	mov	r5, r1
ffff580c:	e1a06002 	mov	r6, r2
ffff5810:	e59f01f0 	ldr	r0, [pc, #496]	; 0xffff5a08
ffff5814:	e5900000 	ldr	r0, [r0]
ffff5818:	e3800901 	orr	r0, r0, #16384	; 0x4000
ffff581c:	e59f11e4 	ldr	r1, [pc, #484]	; 0xffff5a08
ffff5820:	e5810000 	str	r0, [r1]
ffff5824:	eb000150 	bl	0xffff5d6c
ffff5828:	e1a0b000 	mov	fp, r0
ffff582c:	e1a074ab 	lsr	r7, fp, #9
ffff5830:	e3019318 	movw	r9, #4888	; 0x1318
ffff5834:	e3a00016 	mov	r0, #22
ffff5838:	e0000097 	mul	r0, r7, r0
ffff583c:	e280ad4b 	add	sl, r0, #4800	; 0x12c0
ffff5840:	e59f01c8 	ldr	r0, [pc, #456]	; 0xffff5a10
ffff5844:	e59f11bc 	ldr	r1, [pc, #444]	; 0xffff5a08
ffff5848:	e5810028 	str	r0, [r1, #40]	; 0x28
ffff584c:	e1a0100b 	mov	r1, fp
ffff5850:	e1a00005 	mov	r0, r5
ffff5854:	ebffff39 	bl	0xffff5540
ffff5858:	e59f01a8 	ldr	r0, [pc, #424]	; 0xffff5a08
ffff585c:	e580701c 	str	r7, [r0, #28]
ffff5860:	e1a00009 	mov	r0, r9
ffff5864:	ebffff5d 	bl	0xffff55e0
ffff5868:	e3500002 	cmp	r0, #2
ffff586c:	1a000006 	bne	0xffff588c
ffff5870:	e59f0184 	ldr	r0, [pc, #388]	; 0xffff59fc
ffff5874:	e5900300 	ldr	r0, [r0, #768]	; 0x300
ffff5878:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff587c:	e59f1178 	ldr	r1, [pc, #376]	; 0xffff59fc
ffff5880:	e5810300 	str	r0, [r1, #768]	; 0x300
ffff5884:	e3a00002 	mov	r0, #2
ffff5888:	e8bd9ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}
ffff588c:	e1a08004 	mov	r8, r4
ffff5890:	e1a04008 	mov	r4, r8
ffff5894:	e1a00808 	lsl	r0, r8, #16
ffff5898:	e59f1168 	ldr	r1, [pc, #360]	; 0xffff5a08
ffff589c:	e5810014 	str	r0, [r1, #20]
ffff58a0:	e1a04008 	mov	r4, r8
ffff58a4:	e1a00828 	lsr	r0, r8, #16
ffff58a8:	e5810018 	str	r0, [r1, #24]
ffff58ac:	e2860003 	add	r0, r6, #3
ffff58b0:	e59f115c 	ldr	r1, [pc, #348]	; 0xffff5a14
ffff58b4:	e1810800 	orr	r0, r1, r0, lsl #16
ffff58b8:	e59f1148 	ldr	r1, [pc, #328]	; 0xffff5a08
ffff58bc:	e5810024 	str	r0, [r1, #36]	; 0x24
ffff58c0:	e1a0200a 	mov	r2, sl
ffff58c4:	e1a0100a 	mov	r1, sl
ffff58c8:	e1a0000a 	mov	r0, sl
ffff58cc:	ebffff50 	bl	0xffff5614
ffff58d0:	e3500002 	cmp	r0, #2
ffff58d4:	1a000006 	bne	0xffff58f4
ffff58d8:	e59f011c 	ldr	r0, [pc, #284]	; 0xffff59fc
ffff58dc:	e5900300 	ldr	r0, [r0, #768]	; 0x300
ffff58e0:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff58e4:	e59f1110 	ldr	r1, [pc, #272]	; 0xffff59fc
ffff58e8:	e5810300 	str	r0, [r1, #768]	; 0x300
ffff58ec:	e3a00002 	mov	r0, #2
ffff58f0:	eaffffe4 	b	0xffff5888
ffff58f4:	e59f110c 	ldr	r1, [pc, #268]	; 0xffff5a08
ffff58f8:	e5910038 	ldr	r0, [r1, #56]	; 0x38
ffff58fc:	e1a01007 	mov	r1, r7
ffff5900:	ebffff02 	bl	0xffff5510
ffff5904:	e3500000 	cmp	r0, #0
ffff5908:	0a000006 	beq	0xffff5928
ffff590c:	e59f00e8 	ldr	r0, [pc, #232]	; 0xffff59fc
ffff5910:	e5900300 	ldr	r0, [r0, #768]	; 0x300
ffff5914:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff5918:	e59f10dc 	ldr	r1, [pc, #220]	; 0xffff59fc
ffff591c:	e5810300 	str	r0, [r1, #768]	; 0x300
ffff5920:	e3a00003 	mov	r0, #3
ffff5924:	eaffffd7 	b	0xffff5888
ffff5928:	e59f00cc 	ldr	r0, [pc, #204]	; 0xffff59fc
ffff592c:	e5900300 	ldr	r0, [r0, #768]	; 0x300
ffff5930:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff5934:	e59f10c0 	ldr	r1, [pc, #192]	; 0xffff59fc
ffff5938:	e5810300 	str	r0, [r1, #768]	; 0x300
ffff593c:	e3a00000 	mov	r0, #0
ffff5940:	eaffffd0 	b	0xffff5888
ffff5944:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
ffff5948:	e1a04000 	mov	r4, r0
ffff594c:	e1a05001 	mov	r5, r1
ffff5950:	e1a06002 	mov	r6, r2
ffff5954:	e1a07003 	mov	r7, r3
ffff5958:	eb000103 	bl	0xffff5d6c
ffff595c:	e1a0a000 	mov	sl, r0
ffff5960:	e3a08000 	mov	r8, #0
ffff5964:	ea000009 	b	0xffff5990
ffff5968:	e0216a98 	mla	r1, r8, sl, r6
ffff596c:	e0840008 	add	r0, r4, r8
ffff5970:	e1a02007 	mov	r2, r7
ffff5974:	ebffff50 	bl	0xffff56bc
ffff5978:	e1a09000 	mov	r9, r0
ffff597c:	e3590000 	cmp	r9, #0
ffff5980:	0a000001 	beq	0xffff598c
ffff5984:	e1a00009 	mov	r0, r9
ffff5988:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
ffff598c:	e2888001 	add	r8, r8, #1
ffff5990:	e1580005 	cmp	r8, r5
ffff5994:	3afffff3 	bcc	0xffff5968
ffff5998:	e3a00000 	mov	r0, #0
ffff599c:	eafffff9 	b	0xffff5988
ffff59a0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
ffff59a4:	e1a04000 	mov	r4, r0
ffff59a8:	e1a05001 	mov	r5, r1
ffff59ac:	e1a06002 	mov	r6, r2
ffff59b0:	e1a07003 	mov	r7, r3
ffff59b4:	eb0000ec 	bl	0xffff5d6c
ffff59b8:	e1a0a000 	mov	sl, r0
ffff59bc:	e3a08000 	mov	r8, #0
ffff59c0:	ea000009 	b	0xffff59ec
ffff59c4:	e0216a98 	mla	r1, r8, sl, r6
ffff59c8:	e0840008 	add	r0, r4, r8
ffff59cc:	e1a02007 	mov	r2, r7
ffff59d0:	ebffff8a 	bl	0xffff5800
ffff59d4:	e1a09000 	mov	r9, r0
ffff59d8:	e3590000 	cmp	r9, #0
ffff59dc:	0a000001 	beq	0xffff59e8
ffff59e0:	e1a00009 	mov	r0, r9
ffff59e4:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
ffff59e8:	e2888001 	add	r8, r8, #1
ffff59ec:	e1580005 	cmp	r8, r5
ffff59f0:	3afffff3 	bcc	0xffff59c4
ffff59f4:	e3a00000 	mov	r0, #0
ffff59f8:	eafffff9 	b	0xffff59e4
ffff59fc:	01c02000 	biceq	r2, r0, r0
ffff5a00:	01c03030 	biceq	r3, r0, r0, lsr r0
ffff5a04:	84000423 	strhi	r0, [r0], #-1059	; 0x423
ffff5a08:	01c03000 	biceq	r3, r0, r0
ffff5a0c:	00c000ff 	strdeq	r0, [r0], #15
ffff5a10:	00e00530 	rsceq	r0, r0, r0, lsr r5
ffff5a14:	87e80000 	strbhi	r0, [r8, r0]!
ffff5a18:	e59f03ac 	ldr	r0, [pc, #940]	; 0xffff5dcc
ffff5a1c:	e59f13ac 	ldr	r1, [pc, #940]	; 0xffff5dd0
ffff5a20:	e5810848 	str	r0, [r1, #2120]	; 0x848
ffff5a24:	e581084c 	str	r0, [r1, #2124]	; 0x84c
ffff5a28:	e3020222 	movw	r0, #8738	; 0x2222
ffff5a2c:	e5810850 	str	r0, [r1, #2128]	; 0x850
ffff5a30:	e59f039c 	ldr	r0, [pc, #924]	; 0xffff5dd4
ffff5a34:	e581085c 	str	r0, [r1, #2140]	; 0x85c
ffff5a38:	e3a00055 	mov	r0, #85	; 0x55
ffff5a3c:	e5810860 	str	r0, [r1, #2144]	; 0x860
ffff5a40:	e3050140 	movw	r0, #20800	; 0x5140
ffff5a44:	e5810864 	str	r0, [r1, #2148]	; 0x864
ffff5a48:	e3a00016 	mov	r0, #22
ffff5a4c:	e5810868 	str	r0, [r1, #2152]	; 0x868
ffff5a50:	e12fff1e 	bx	lr
ffff5a54:	e92d4070 	push	{r4, r5, r6, lr}
ffff5a58:	ebffffee 	bl	0xffff5a18
ffff5a5c:	e59f036c 	ldr	r0, [pc, #876]	; 0xffff5dd0
ffff5a60:	e5900060 	ldr	r0, [r0, #96]	; 0x60
ffff5a64:	e3c00a02 	bic	r0, r0, #8192	; 0x2000
ffff5a68:	e59f1360 	ldr	r1, [pc, #864]	; 0xffff5dd0
ffff5a6c:	e5810060 	str	r0, [r1, #96]	; 0x60
ffff5a70:	e1a00001 	mov	r0, r1
ffff5a74:	e5900060 	ldr	r0, [r0, #96]	; 0x60
ffff5a78:	e3800a02 	orr	r0, r0, #8192	; 0x2000
ffff5a7c:	e5810060 	str	r0, [r1, #96]	; 0x60
ffff5a80:	e1a00001 	mov	r0, r1
ffff5a84:	e5900080 	ldr	r0, [r0, #128]	; 0x80
ffff5a88:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff5a8c:	e5810080 	str	r0, [r1, #128]	; 0x80
ffff5a90:	e59f4340 	ldr	r4, [pc, #832]	; 0xffff5dd8
ffff5a94:	e1a00001 	mov	r0, r1
ffff5a98:	e5900080 	ldr	r0, [r0, #128]	; 0x80
ffff5a9c:	e1c05004 	bic	r5, r0, r4
ffff5aa0:	e3855001 	orr	r5, r5, #1
ffff5aa4:	e1a00001 	mov	r0, r1
ffff5aa8:	e5805080 	str	r5, [r0, #128]	; 0x80
ffff5aac:	e5900080 	ldr	r0, [r0, #128]	; 0x80
ffff5ab0:	e3800102 	orr	r0, r0, #-2147483648	; 0x80000000
ffff5ab4:	e5810080 	str	r0, [r1, #128]	; 0x80
ffff5ab8:	e1a00001 	mov	r0, r1
ffff5abc:	e5900060 	ldr	r0, [r0, #96]	; 0x60
ffff5ac0:	e3800040 	orr	r0, r0, #64	; 0x40
ffff5ac4:	e5810060 	str	r0, [r1, #96]	; 0x60
ffff5ac8:	e3a00003 	mov	r0, #3
ffff5acc:	e2411a1d 	sub	r1, r1, #118784	; 0x1d000
ffff5ad0:	e5810000 	str	r0, [r1]
ffff5ad4:	e3a00000 	mov	r0, #0
ffff5ad8:	ea000000 	b	0xffff5ae0
ffff5adc:	e2800001 	add	r0, r0, #1
ffff5ae0:	e35000f0 	cmp	r0, #240	; 0xf0
ffff5ae4:	3afffffc 	bcc	0xffff5adc
ffff5ae8:	e8bd8070 	pop	{r4, r5, r6, pc}
ffff5aec:	e3a00000 	mov	r0, #0
ffff5af0:	e59f12d8 	ldr	r1, [pc, #728]	; 0xffff5dd0
ffff5af4:	e5810848 	str	r0, [r1, #2120]	; 0x848
ffff5af8:	e581084c 	str	r0, [r1, #2124]	; 0x84c
ffff5afc:	e5810850 	str	r0, [r1, #2128]	; 0x850
ffff5b00:	e59f02cc 	ldr	r0, [pc, #716]	; 0xffff5dd4
ffff5b04:	e581085c 	str	r0, [r1, #2140]	; 0x85c
ffff5b08:	e3a00055 	mov	r0, #85	; 0x55
ffff5b0c:	e5810860 	str	r0, [r1, #2144]	; 0x860
ffff5b10:	e3050140 	movw	r0, #20800	; 0x5140
ffff5b14:	e5810864 	str	r0, [r1, #2148]	; 0x864
ffff5b18:	e3a00016 	mov	r0, #22
ffff5b1c:	e5810868 	str	r0, [r1, #2152]	; 0x868
ffff5b20:	e12fff1e 	bx	lr
ffff5b24:	e59f02b0 	ldr	r0, [pc, #688]	; 0xffff5ddc
ffff5b28:	e59f12b0 	ldr	r1, [pc, #688]	; 0xffff5de0
ffff5b2c:	e5810034 	str	r0, [r1, #52]	; 0x34
ffff5b30:	e12fff1e 	bx	lr
ffff5b34:	e92d4010 	push	{r4, lr}
ffff5b38:	ebfffff9 	bl	0xffff5b24
ffff5b3c:	e59f029c 	ldr	r0, [pc, #668]	; 0xffff5de0
ffff5b40:	e5900000 	ldr	r0, [r0]
ffff5b44:	e3c00001 	bic	r0, r0, #1
ffff5b48:	e59f1290 	ldr	r1, [pc, #656]	; 0xffff5de0
ffff5b4c:	e5810000 	str	r0, [r1]
ffff5b50:	e2810a1d 	add	r0, r1, #118784	; 0x1d000
ffff5b54:	e5900080 	ldr	r0, [r0, #128]	; 0x80
ffff5b58:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff5b5c:	e2811a1d 	add	r1, r1, #118784	; 0x1d000
ffff5b60:	e5810080 	str	r0, [r1, #128]	; 0x80
ffff5b64:	e1a00001 	mov	r0, r1
ffff5b68:	e5900060 	ldr	r0, [r0, #96]	; 0x60
ffff5b6c:	e3c00a02 	bic	r0, r0, #8192	; 0x2000
ffff5b70:	e5810060 	str	r0, [r1, #96]	; 0x60
ffff5b74:	e1a00001 	mov	r0, r1
ffff5b78:	e5900060 	ldr	r0, [r0, #96]	; 0x60
ffff5b7c:	e3c00040 	bic	r0, r0, #64	; 0x40
ffff5b80:	e5810060 	str	r0, [r1, #96]	; 0x60
ffff5b84:	ebffffd8 	bl	0xffff5aec
ffff5b88:	e8bd8010 	pop	{r4, pc}
ffff5b8c:	e92d40f0 	push	{r4, r5, r6, r7, lr}
ffff5b90:	e3510c02 	cmp	r1, #512	; 0x200
ffff5b94:	0a000003 	beq	0xffff5ba8
ffff5b98:	e3510b01 	cmp	r1, #1024	; 0x400
ffff5b9c:	1a000004 	bne	0xffff5bb4
ffff5ba0:	e3a03000 	mov	r3, #0
ffff5ba4:	ea000005 	b	0xffff5bc0
ffff5ba8:	e320f000 	nop	{0}
ffff5bac:	e3a03001 	mov	r3, #1
ffff5bb0:	ea000002 	b	0xffff5bc0
ffff5bb4:	e320f000 	nop	{0}
ffff5bb8:	e3a03000 	mov	r3, #0
ffff5bbc:	e320f000 	nop	{0}
ffff5bc0:	e320f000 	nop	{0}
ffff5bc4:	e3500018 	cmp	r0, #24
ffff5bc8:	0a000008 	beq	0xffff5bf0
ffff5bcc:	e3500028 	cmp	r0, #40	; 0x28
ffff5bd0:	0a000003 	beq	0xffff5be4
ffff5bd4:	e3500040 	cmp	r0, #64	; 0x40
ffff5bd8:	1a000007 	bne	0xffff5bfc
ffff5bdc:	e3a05008 	mov	r5, #8
ffff5be0:	ea000008 	b	0xffff5c08
ffff5be4:	e320f000 	nop	{0}
ffff5be8:	e3a05004 	mov	r5, #4
ffff5bec:	ea000005 	b	0xffff5c08
ffff5bf0:	e320f000 	nop	{0}
ffff5bf4:	e3a05001 	mov	r5, #1
ffff5bf8:	ea000002 	b	0xffff5c08
ffff5bfc:	e320f000 	nop	{0}
ffff5c00:	e3a05008 	mov	r5, #8
ffff5c04:	e320f000 	nop	{0}
ffff5c08:	e320f000 	nop	{0}
ffff5c0c:	e59f61cc 	ldr	r6, [pc, #460]	; 0xffff5de0
ffff5c10:	e5964034 	ldr	r4, [r6, #52]	; 0x34
ffff5c14:	e30f6220 	movw	r6, #61984	; 0xf220
ffff5c18:	e1c44006 	bic	r4, r4, r6
ffff5c1c:	e1846605 	orr	r6, r4, r5, lsl #12
ffff5c20:	e1866283 	orr	r6, r6, r3, lsl #5
ffff5c24:	e3866001 	orr	r6, r6, #1
ffff5c28:	e1866482 	orr	r6, r6, r2, lsl #9
ffff5c2c:	e59f71ac 	ldr	r7, [pc, #428]	; 0xffff5de0
ffff5c30:	e5876034 	str	r6, [r7, #52]	; 0x34
ffff5c34:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
ffff5c38:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
ffff5c3c:	e1a04000 	mov	r4, r0
ffff5c40:	ebffff83 	bl	0xffff5a54
ffff5c44:	e5940008 	ldr	r0, [r4, #8]
ffff5c48:	e3500000 	cmp	r0, #0
ffff5c4c:	0a000000 	beq	0xffff5c54
ffff5c50:	ebfffe87 	bl	0xffff5674
ffff5c54:	e594001c 	ldr	r0, [r4, #28]
ffff5c58:	e5942020 	ldr	r2, [r4, #32]
ffff5c5c:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff5c60:	ebffffc9 	bl	0xffff5b8c
ffff5c64:	e59f0174 	ldr	r0, [pc, #372]	; 0xffff5de0
ffff5c68:	e5900000 	ldr	r0, [r0]
ffff5c6c:	e59f1170 	ldr	r1, [pc, #368]	; 0xffff5de4
ffff5c70:	e0005001 	and	r5, r0, r1
ffff5c74:	e5940014 	ldr	r0, [r4, #20]
ffff5c78:	e3500008 	cmp	r0, #8
ffff5c7c:	0a000010 	beq	0xffff5cc4
ffff5c80:	ca000004 	bgt	0xffff5c98
ffff5c84:	e3500002 	cmp	r0, #2
ffff5c88:	0a000007 	beq	0xffff5cac
ffff5c8c:	e3500004 	cmp	r0, #4
ffff5c90:	1a000014 	bne	0xffff5ce8
ffff5c94:	ea000007 	b	0xffff5cb8
ffff5c98:	e3500010 	cmp	r0, #16
ffff5c9c:	0a00000b 	beq	0xffff5cd0
ffff5ca0:	e3500020 	cmp	r0, #32
ffff5ca4:	1a00000f 	bne	0xffff5ce8
ffff5ca8:	ea00000b 	b	0xffff5cdc
ffff5cac:	e320f000 	nop	{0}
ffff5cb0:	e3a06000 	mov	r6, #0
ffff5cb4:	ea00000e 	b	0xffff5cf4
ffff5cb8:	e320f000 	nop	{0}
ffff5cbc:	e3a06001 	mov	r6, #1
ffff5cc0:	ea00000b 	b	0xffff5cf4
ffff5cc4:	e320f000 	nop	{0}
ffff5cc8:	e3a06002 	mov	r6, #2
ffff5ccc:	ea000008 	b	0xffff5cf4
ffff5cd0:	e320f000 	nop	{0}
ffff5cd4:	e3a06003 	mov	r6, #3
ffff5cd8:	ea000005 	b	0xffff5cf4
ffff5cdc:	e320f000 	nop	{0}
ffff5ce0:	e3a06004 	mov	r6, #4
ffff5ce4:	ea000002 	b	0xffff5cf4
ffff5ce8:	e320f000 	nop	{0}
ffff5cec:	e3a06000 	mov	r6, #0
ffff5cf0:	e320f000 	nop	{0}
ffff5cf4:	e320f000 	nop	{0}
ffff5cf8:	e5940004 	ldr	r0, [r4, #4]
ffff5cfc:	e2007003 	and	r7, r0, #3
ffff5d00:	e1850907 	orr	r0, r5, r7, lsl #18
ffff5d04:	e1800406 	orr	r0, r0, r6, lsl #8
ffff5d08:	e3800901 	orr	r0, r0, #16384	; 0x4000
ffff5d0c:	e59f10cc 	ldr	r1, [pc, #204]	; 0xffff5de0
ffff5d10:	e5810000 	str	r0, [r1]
ffff5d14:	e1a00001 	mov	r0, r1
ffff5d18:	e590000c 	ldr	r0, [r0, #12]
ffff5d1c:	e3001f3f 	movw	r1, #3903	; 0xf3f
ffff5d20:	e1c05001 	bic	r5, r0, r1
ffff5d24:	e5940004 	ldr	r0, [r4, #4]
ffff5d28:	e3500003 	cmp	r0, #3
ffff5d2c:	1a000004 	bne	0xffff5d44
ffff5d30:	e594000c 	ldr	r0, [r4, #12]
ffff5d34:	e200800f 	and	r8, r0, #15
ffff5d38:	e5940010 	ldr	r0, [r4, #16]
ffff5d3c:	e200903f 	and	r9, r0, #63	; 0x3f
ffff5d40:	ea000001 	b	0xffff5d4c
ffff5d44:	e3a08000 	mov	r8, #0
ffff5d48:	e3a09000 	mov	r9, #0
ffff5d4c:	e1850408 	orr	r0, r5, r8, lsl #8
ffff5d50:	e1800009 	orr	r0, r0, r9
ffff5d54:	e59f1084 	ldr	r1, [pc, #132]	; 0xffff5de0
ffff5d58:	e581000c 	str	r0, [r1, #12]
ffff5d5c:	e5940014 	ldr	r0, [r4, #20]
ffff5d60:	e1a00480 	lsl	r0, r0, #9
ffff5d64:	e58100a0 	str	r0, [r1, #160]	; 0xa0
ffff5d68:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
ffff5d6c:	e59f206c 	ldr	r2, [pc, #108]	; 0xffff5de0
ffff5d70:	e5922000 	ldr	r2, [r2]
ffff5d74:	e7e31452 	ubfx	r1, r2, #8, #4
ffff5d78:	e3510000 	cmp	r1, #0
ffff5d7c:	0a000004 	beq	0xffff5d94
ffff5d80:	e3510002 	cmp	r1, #2
ffff5d84:	0a000005 	beq	0xffff5da0
ffff5d88:	e3510003 	cmp	r1, #3
ffff5d8c:	1a000009 	bne	0xffff5db8
ffff5d90:	ea000005 	b	0xffff5dac
ffff5d94:	e320f000 	nop	{0}
ffff5d98:	e3a00b01 	mov	r0, #1024	; 0x400
ffff5d9c:	ea000008 	b	0xffff5dc4
ffff5da0:	e320f000 	nop	{0}
ffff5da4:	e3a00a01 	mov	r0, #4096	; 0x1000
ffff5da8:	ea000005 	b	0xffff5dc4
ffff5dac:	e320f000 	nop	{0}
ffff5db0:	e3a00a02 	mov	r0, #8192	; 0x2000
ffff5db4:	ea000002 	b	0xffff5dc4
ffff5db8:	e320f000 	nop	{0}
ffff5dbc:	e3a00b01 	mov	r0, #1024	; 0x400
ffff5dc0:	e320f000 	nop	{0}
ffff5dc4:	e320f000 	nop	{0}
ffff5dc8:	e12fff1e 	bx	lr
ffff5dcc:	22222222 
ffff5dd0:	01c20000 
ffff5dd4:	55555555 
ffff5dd8:	0303000f 
ffff5ddc:	4a800008 
ffff5de0:	01c03000 
ffff5de4:	fff3b0fb 
ffff5de8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
ffff5dec:	eb00003c 	bl	0xffff5ee4
ffff5df0:	e3a04000 	mov	r4, #0
ffff5df4:	ea000029 	b	0xffff5ea0
ffff5df8:	e1a00004 	mov	r0, r4
ffff5dfc:	eb00014e 	bl	0xffff633c
ffff5e00:	e1a05000 	mov	r5, r0
ffff5e04:	e3a02001 	mov	r2, #1
ffff5e08:	e3a01000 	mov	r1, #0
ffff5e0c:	e1a00001 	mov	r0, r1
ffff5e10:	e12fff35 	blx	r5
ffff5e14:	e3500002 	cmp	r0, #2
ffff5e18:	1a000000 	bne	0xffff5e20
ffff5e1c:	ea00001e 	b	0xffff5e9c
ffff5e20:	e28f108c 	add	r1, pc, #140	; 0x8c
ffff5e24:	e3a00000 	mov	r0, #0
ffff5e28:	eb000151 	bl	0xffff6374
ffff5e2c:	e3500000 	cmp	r0, #0
ffff5e30:	0a000000 	beq	0xffff5e38
ffff5e34:	ea000018 	b	0xffff5e9c
ffff5e38:	e3a07000 	mov	r7, #0
ffff5e3c:	e5976010 	ldr	r6, [r7, #16]
ffff5e40:	e1a00006 	mov	r0, r6
ffff5e44:	e7df049f 	bfc	r0, #9, #23
ffff5e48:	e3500000 	cmp	r0, #0
ffff5e4c:	0a000000 	beq	0xffff5e54
ffff5e50:	ea000011 	b	0xffff5e9c
ffff5e54:	e1a02426 	lsr	r2, r6, #8
ffff5e58:	e3a01000 	mov	r1, #0
ffff5e5c:	e1a00001 	mov	r0, r1
ffff5e60:	e12fff35 	blx	r5
ffff5e64:	e3500002 	cmp	r0, #2
ffff5e68:	1a000000 	bne	0xffff5e70
ffff5e6c:	ea00000a 	b	0xffff5e9c
ffff5e70:	e1a01006 	mov	r1, r6
ffff5e74:	e3a00000 	mov	r0, #0
ffff5e78:	eb000150 	bl	0xffff63c0
ffff5e7c:	e3500000 	cmp	r0, #0
ffff5e80:	1a000004 	bne	0xffff5e98
ffff5e84:	e3a00003 	mov	r0, #3
ffff5e88:	e5c70028 	strb	r0, [r7, #40]	; 0x28
ffff5e8c:	eb000032 	bl	0xffff5f5c
ffff5e90:	e3a00000 	mov	r0, #0
ffff5e94:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
ffff5e98:	e320f000 	nop	{0}
ffff5e9c:	e2844001 	add	r4, r4, #1
ffff5ea0:	e3540002 	cmp	r4, #2
ffff5ea4:	3affffd3 	bcc	0xffff5df8
ffff5ea8:	eb00002b 	bl	0xffff5f5c
ffff5eac:	e3e00000 	mvn	r0, #0
ffff5eb0:	eafffff7 	b	0xffff5e94
ffff5eb4:	4e4f4765 	cdpmi	7, 4, cr4, cr15, cr5, {3}
ffff5eb8:	3054422e 	subscc	r4, r4, lr, lsr #4
ffff5ebc:	00000000 	andeq	r0, r0, r0
ffff5ec0:	e3031333 	movw	r1, #13107	; 0x3333
ffff5ec4:	e59f248c 	ldr	r2, [pc, #1164]	; 0xffff6358
ffff5ec8:	e5821848 	str	r1, [r2, #2120]	; 0x848
ffff5ecc:	e1c21001 	bic	r1, r2, r1
ffff5ed0:	e5910864 	ldr	r0, [r1, #2148]	; 0x864
ffff5ed4:	e3c000c0 	bic	r0, r0, #192	; 0xc0
ffff5ed8:	e3800040 	orr	r0, r0, #64	; 0x40
ffff5edc:	e5810864 	str	r0, [r1, #2148]	; 0x864
ffff5ee0:	e12fff1e 	bx	lr
ffff5ee4:	e92d4010 	push	{r4, lr}
ffff5ee8:	e59f0468 	ldr	r0, [pc, #1128]	; 0xffff6358
ffff5eec:	e5900060 	ldr	r0, [r0, #96]	; 0x60
ffff5ef0:	e3800601 	orr	r0, r0, #1048576	; 0x100000
ffff5ef4:	e59f145c 	ldr	r1, [pc, #1116]	; 0xffff6358
ffff5ef8:	e5810060 	str	r0, [r1, #96]	; 0x60
ffff5efc:	e1a00001 	mov	r0, r1
ffff5f00:	e59000a0 	ldr	r0, [r0, #160]	; 0xa0
ffff5f04:	e3800102 	orr	r0, r0, #-2147483648	; 0x80000000
ffff5f08:	e58100a0 	str	r0, [r1, #160]	; 0xa0
ffff5f0c:	ebffffeb 	bl	0xffff5ec0
ffff5f10:	e59f0440 	ldr	r0, [pc, #1088]	; 0xffff6358
ffff5f14:	e5900060 	ldr	r0, [r0, #96]	; 0x60
ffff5f18:	e3800040 	orr	r0, r0, #64	; 0x40
ffff5f1c:	e59f1434 	ldr	r1, [pc, #1076]	; 0xffff6358
ffff5f20:	e5810060 	str	r0, [r1, #96]	; 0x60
ffff5f24:	e3010001 	movw	r0, #4097	; 0x1001
ffff5f28:	e2411a1b 	sub	r1, r1, #110592	; 0x1b000
ffff5f2c:	e581001c 	str	r0, [r1, #28]
ffff5f30:	e3000202 	movw	r0, #514	; 0x202
ffff5f34:	e5810014 	str	r0, [r1, #20]
ffff5f38:	e59f041c 	ldr	r0, [pc, #1052]	; 0xffff635c
ffff5f3c:	e5810008 	str	r0, [r1, #8]
ffff5f40:	e8bd8010 	pop	{r4, pc}
ffff5f44:	e3a00000 	mov	r0, #0
ffff5f48:	e59f1408 	ldr	r1, [pc, #1032]	; 0xffff6358
ffff5f4c:	e5810848 	str	r0, [r1, #2120]	; 0x848
ffff5f50:	e3050140 	movw	r0, #20800	; 0x5140
ffff5f54:	e5810864 	str	r0, [r1, #2148]	; 0x864
ffff5f58:	e12fff1e 	bx	lr
ffff5f5c:	e92d4010 	push	{r4, lr}
ffff5f60:	e3a00000 	mov	r0, #0
ffff5f64:	e59f13f4 	ldr	r1, [pc, #1012]	; 0xffff6360
ffff5f68:	e5810014 	str	r0, [r1, #20]
ffff5f6c:	e1c10000 	bic	r0, r1, r0
ffff5f70:	e5900008 	ldr	r0, [r0, #8]
ffff5f74:	e3c00001 	bic	r0, r0, #1
ffff5f78:	e5810008 	str	r0, [r1, #8]
ffff5f7c:	ebfffff0 	bl	0xffff5f44
ffff5f80:	e59f03d0 	ldr	r0, [pc, #976]	; 0xffff6358
ffff5f84:	e5900060 	ldr	r0, [r0, #96]	; 0x60
ffff5f88:	e3c00040 	bic	r0, r0, #64	; 0x40
ffff5f8c:	e59f13c4 	ldr	r1, [pc, #964]	; 0xffff6358
ffff5f90:	e5810060 	str	r0, [r1, #96]	; 0x60
ffff5f94:	e1a00001 	mov	r0, r1
ffff5f98:	e59000a0 	ldr	r0, [r0, #160]	; 0xa0
ffff5f9c:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff5fa0:	e58100a0 	str	r0, [r1, #160]	; 0xa0
ffff5fa4:	e1a00001 	mov	r0, r1
ffff5fa8:	e5900060 	ldr	r0, [r0, #96]	; 0x60
ffff5fac:	e3c00601 	bic	r0, r0, #1048576	; 0x100000
ffff5fb0:	e5810060 	str	r0, [r1, #96]	; 0x60
ffff5fb4:	e8bd8010 	pop	{r4, pc}
ffff5fb8:	e1a01000 	mov	r1, r0
ffff5fbc:	e320f000 	nop	{0}
ffff5fc0:	e59f039c 	ldr	r0, [pc, #924]	; 0xffff6364
ffff5fc4:	e5900100 	ldr	r0, [r0, #256]	; 0x100
ffff5fc8:	e3100102 	tst	r0, #-2147483648	; 0x80000000
ffff5fcc:	1a000001 	bne	0xffff5fd8
ffff5fd0:	e3a00000 	mov	r0, #0
ffff5fd4:	e12fff1e 	bx	lr
ffff5fd8:	e2410001 	sub	r0, r1, #1
ffff5fdc:	e1b01000 	movs	r1, r0
ffff5fe0:	1afffff6 	bne	0xffff5fc0
ffff5fe4:	e3a00002 	mov	r0, #2
ffff5fe8:	eafffff9 	b	0xffff5fd4
ffff5fec:	e1a01000 	mov	r1, r0
ffff5ff0:	e320f000 	nop	{0}
ffff5ff4:	e59f0368 	ldr	r0, [pc, #872]	; 0xffff6364
ffff5ff8:	e5900120 	ldr	r0, [r0, #288]	; 0x120
ffff5ffc:	e3100102 	tst	r0, #-2147483648	; 0x80000000
ffff6000:	1a000001 	bne	0xffff600c
ffff6004:	e3a00000 	mov	r0, #0
ffff6008:	e12fff1e 	bx	lr
ffff600c:	e2410001 	sub	r0, r1, #1
ffff6010:	e1b01000 	movs	r1, r0
ffff6014:	1afffff6 	bne	0xffff5ff4
ffff6018:	e3a00002 	mov	r0, #2
ffff601c:	eafffff9 	b	0xffff6008
ffff6020:	e30f1fff 	movw	r1, #65535	; 0xffff
ffff6024:	e320f000 	nop	{0}
ffff6028:	e1b00001 	movs	r0, r1
ffff602c:	e2411001 	sub	r1, r1, #1
ffff6030:	0a000003 	beq	0xffff6044
ffff6034:	e59f0324 	ldr	r0, [pc, #804]	; 0xffff6360
ffff6038:	e5900010 	ldr	r0, [r0, #16]
ffff603c:	e3100102 	tst	r0, #-2147483648	; 0x80000000
ffff6040:	1afffff8 	bne	0xffff6028
ffff6044:	e3510000 	cmp	r1, #0
ffff6048:	da000001 	ble	0xffff6054
ffff604c:	e3a00000 	mov	r0, #0
ffff6050:	e12fff1e 	bx	lr
ffff6054:	e3a00002 	mov	r0, #2
ffff6058:	eafffffc 	b	0xffff6050
ffff605c:	e1a01000 	mov	r1, r0
ffff6060:	e320f000 	nop	{0}
ffff6064:	e59f02f4 	ldr	r0, [pc, #756]	; 0xffff6360
ffff6068:	e5900010 	ldr	r0, [r0, #16]
ffff606c:	e3100801 	tst	r0, #65536	; 0x10000
ffff6070:	0a000001 	beq	0xffff607c
ffff6074:	e3a00000 	mov	r0, #0
ffff6078:	e12fff1e 	bx	lr
ffff607c:	e2410001 	sub	r0, r1, #1
ffff6080:	e1b01000 	movs	r1, r0
ffff6084:	1afffff6 	bne	0xffff6064
ffff6088:	e3a00002 	mov	r0, #2
ffff608c:	eafffff9 	b	0xffff6078
ffff6090:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
ffff6094:	e1a04000 	mov	r4, r0
ffff6098:	e1a05001 	mov	r5, r1
ffff609c:	e1a06002 	mov	r6, r2
ffff60a0:	e1a07003 	mov	r7, r3
ffff60a4:	e0840005 	add	r0, r4, r5
ffff60a8:	e2808e96 	add	r8, r0, #2400	; 0x960
ffff60ac:	e0840005 	add	r0, r4, r5
ffff60b0:	e59f12a8 	ldr	r1, [pc, #680]	; 0xffff6360
ffff60b4:	e5810020 	str	r0, [r1, #32]
ffff60b8:	e1a00001 	mov	r0, r1
ffff60bc:	e5804024 	str	r4, [r0, #36]	; 0x24
ffff60c0:	e2400a03 	sub	r0, r0, #12288	; 0x3000
ffff60c4:	e5806124 	str	r6, [r0, #292]	; 0x124
ffff60c8:	e2810004 	add	r0, r1, #4
ffff60cc:	e2411a03 	sub	r1, r1, #12288	; 0x3000
ffff60d0:	e5810128 	str	r0, [r1, #296]	; 0x128
ffff60d4:	e1c101c0 	bic	r0, r1, r0, asr #3
ffff60d8:	e580412c 	str	r4, [r0, #300]	; 0x12c
ffff60dc:	e59f0284 	ldr	r0, [pc, #644]	; 0xffff6368
ffff60e0:	e5810120 	str	r0, [r1, #288]	; 0x120
ffff60e4:	e2810a03 	add	r0, r1, #12288	; 0x3000
ffff60e8:	e5810104 	str	r0, [r1, #260]	; 0x104
ffff60ec:	e2400a03 	sub	r0, r0, #12288	; 0x3000
ffff60f0:	e5807108 	str	r7, [r0, #264]	; 0x108
ffff60f4:	e580510c 	str	r5, [r0, #268]	; 0x10c
ffff60f8:	e59f026c 	ldr	r0, [pc, #620]	; 0xffff636c
ffff60fc:	e5810100 	str	r0, [r1, #256]	; 0x100
ffff6100:	e2810a03 	add	r0, r1, #12288	; 0x3000
ffff6104:	e5900008 	ldr	r0, [r0, #8]
ffff6108:	e3800b01 	orr	r0, r0, #1024	; 0x400
ffff610c:	e2811a03 	add	r1, r1, #12288	; 0x3000
ffff6110:	e5810008 	str	r0, [r1, #8]
ffff6114:	e1a00008 	mov	r0, r8
ffff6118:	ebffffb3 	bl	0xffff5fec
ffff611c:	e3500002 	cmp	r0, #2
ffff6120:	1a00000a 	bne	0xffff6150
ffff6124:	e59f0238 	ldr	r0, [pc, #568]	; 0xffff6364
ffff6128:	e5900120 	ldr	r0, [r0, #288]	; 0x120
ffff612c:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff6130:	e59f122c 	ldr	r1, [pc, #556]	; 0xffff6364
ffff6134:	e5810120 	str	r0, [r1, #288]	; 0x120
ffff6138:	e1a00001 	mov	r0, r1
ffff613c:	e5900100 	ldr	r0, [r0, #256]	; 0x100
ffff6140:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff6144:	e5810100 	str	r0, [r1, #256]	; 0x100
ffff6148:	e3a00002 	mov	r0, #2
ffff614c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
ffff6150:	e1a00008 	mov	r0, r8
ffff6154:	ebffff97 	bl	0xffff5fb8
ffff6158:	e3500002 	cmp	r0, #2
ffff615c:	1a00000a 	bne	0xffff618c
ffff6160:	e59f01fc 	ldr	r0, [pc, #508]	; 0xffff6364
ffff6164:	e5900120 	ldr	r0, [r0, #288]	; 0x120
ffff6168:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff616c:	e59f11f0 	ldr	r1, [pc, #496]	; 0xffff6364
ffff6170:	e5810120 	str	r0, [r1, #288]	; 0x120
ffff6174:	e1a00001 	mov	r0, r1
ffff6178:	e5900100 	ldr	r0, [r0, #256]	; 0x100
ffff617c:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff6180:	e5810100 	str	r0, [r1, #256]	; 0x100
ffff6184:	e3a00002 	mov	r0, #2
ffff6188:	eaffffef 	b	0xffff614c
ffff618c:	e1a00008 	mov	r0, r8
ffff6190:	ebffffb1 	bl	0xffff605c
ffff6194:	e3500002 	cmp	r0, #2
ffff6198:	1a00000a 	bne	0xffff61c8
ffff619c:	e59f01c0 	ldr	r0, [pc, #448]	; 0xffff6364
ffff61a0:	e5900120 	ldr	r0, [r0, #288]	; 0x120
ffff61a4:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff61a8:	e59f11b4 	ldr	r1, [pc, #436]	; 0xffff6364
ffff61ac:	e5810120 	str	r0, [r1, #288]	; 0x120
ffff61b0:	e1a00001 	mov	r0, r1
ffff61b4:	e5900100 	ldr	r0, [r0, #256]	; 0x100
ffff61b8:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff61bc:	e5810100 	str	r0, [r1, #256]	; 0x100
ffff61c0:	e3a00002 	mov	r0, #2
ffff61c4:	eaffffe0 	b	0xffff614c
ffff61c8:	e59f0194 	ldr	r0, [pc, #404]	; 0xffff6364
ffff61cc:	e5900120 	ldr	r0, [r0, #288]	; 0x120
ffff61d0:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff61d4:	e59f1188 	ldr	r1, [pc, #392]	; 0xffff6364
ffff61d8:	e5810120 	str	r0, [r1, #288]	; 0x120
ffff61dc:	e1a00001 	mov	r0, r1
ffff61e0:	e5900100 	ldr	r0, [r0, #256]	; 0x100
ffff61e4:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff61e8:	e5810100 	str	r0, [r1, #256]	; 0x100
ffff61ec:	e2810a03 	add	r0, r1, #12288	; 0x3000
ffff61f0:	e5900010 	ldr	r0, [r0, #16]
ffff61f4:	e3800801 	orr	r0, r0, #65536	; 0x10000
ffff61f8:	e2811a03 	add	r1, r1, #12288	; 0x3000
ffff61fc:	e5810010 	str	r0, [r1, #16]
ffff6200:	ebffff86 	bl	0xffff6020
ffff6204:	e3500002 	cmp	r0, #2
ffff6208:	1a000001 	bne	0xffff6214
ffff620c:	e3a00002 	mov	r0, #2
ffff6210:	eaffffcd 	b	0xffff614c
ffff6214:	e3a00000 	mov	r0, #0
ffff6218:	eaffffcb 	b	0xffff614c
ffff621c:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
ffff6220:	e1a04000 	mov	r4, r0
ffff6224:	e1a05001 	mov	r5, r1
ffff6228:	e1a06002 	mov	r6, r2
ffff622c:	e1a0b005 	mov	fp, r5
ffff6230:	e3a08000 	mov	r8, #0
ffff6234:	e1a07404 	lsl	r7, r4, #8
ffff6238:	e1a0a406 	lsl	sl, r6, #8
ffff623c:	ea000018 	b	0xffff62a4
ffff6240:	e3a00003 	mov	r0, #3
ffff6244:	e5cd0000 	strb	r0, [sp]
ffff6248:	e1a00827 	lsr	r0, r7, #16
ffff624c:	e5cd0001 	strb	r0, [sp, #1]
ffff6250:	e1a00427 	lsr	r0, r7, #8
ffff6254:	e5cd0002 	strb	r0, [sp, #2]
ffff6258:	e5cd7003 	strb	r7, [sp, #3]
ffff625c:	e04a0008 	sub	r0, sl, r8
ffff6260:	e3500b02 	cmp	r0, #2048	; 0x800
ffff6264:	9a000001 	bls	0xffff6270
ffff6268:	e3a00b02 	mov	r0, #2048	; 0x800
ffff626c:	ea000000 	b	0xffff6274
ffff6270:	e04a0008 	sub	r0, sl, r8
ffff6274:	e1a09000 	mov	r9, r0
ffff6278:	e08b3008 	add	r3, fp, r8
ffff627c:	e1a0200d 	mov	r2, sp
ffff6280:	e1a01009 	mov	r1, r9
ffff6284:	e3a00004 	mov	r0, #4
ffff6288:	ebffff80 	bl	0xffff6090
ffff628c:	e3500002 	cmp	r0, #2
ffff6290:	1a000001 	bne	0xffff629c
ffff6294:	e3a00002 	mov	r0, #2
ffff6298:	e8bd8ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
ffff629c:	e0877009 	add	r7, r7, r9
ffff62a0:	e0888009 	add	r8, r8, r9
ffff62a4:	e158000a 	cmp	r8, sl
ffff62a8:	3affffe4 	bcc	0xffff6240
ffff62ac:	e3a00000 	mov	r0, #0
ffff62b0:	eafffff8 	b	0xffff6298
ffff62b4:	e92d47fc 	push	{r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
ffff62b8:	e1a04000 	mov	r4, r0
ffff62bc:	e1a05001 	mov	r5, r1
ffff62c0:	e1a06002 	mov	r6, r2
ffff62c4:	e1a09005 	mov	r9, r5
ffff62c8:	e3a00000 	mov	r0, #0
ffff62cc:	e58d0004 	str	r0, [sp, #4]
ffff62d0:	e3a07000 	mov	r7, #0
ffff62d4:	e3a0a000 	mov	sl, #0
ffff62d8:	e1a08484 	lsl	r8, r4, #9
ffff62dc:	ea000012 	b	0xffff632c
ffff62e0:	e3a000e8 	mov	r0, #232	; 0xe8
ffff62e4:	e5cd0000 	strb	r0, [sp]
ffff62e8:	e1a00828 	lsr	r0, r8, #16
ffff62ec:	e5cd0001 	strb	r0, [sp, #1]
ffff62f0:	e1a00428 	lsr	r0, r8, #8
ffff62f4:	e5cd0002 	strb	r0, [sp, #2]
ffff62f8:	e5cd8003 	strb	r8, [sp, #3]
ffff62fc:	e089300a 	add	r3, r9, sl
ffff6300:	e1a0200d 	mov	r2, sp
ffff6304:	e3a01c01 	mov	r1, #256	; 0x100
ffff6308:	e3a00008 	mov	r0, #8
ffff630c:	ebffff5f 	bl	0xffff6090
ffff6310:	e3500002 	cmp	r0, #2
ffff6314:	1a000001 	bne	0xffff6320
ffff6318:	e3a00002 	mov	r0, #2
ffff631c:	e8bd87fc 	pop	{r2, r3, r4, r5, r6, r7, r8, r9, sl, pc}
ffff6320:	e2877001 	add	r7, r7, #1
ffff6324:	e28aac01 	add	sl, sl, #256	; 0x100
ffff6328:	e2888c02 	add	r8, r8, #512	; 0x200
ffff632c:	e1570006 	cmp	r7, r6
ffff6330:	3affffea 	bcc	0xffff62e0
ffff6334:	e3a00000 	mov	r0, #0
ffff6338:	eafffff7 	b	0xffff631c
ffff633c:	e92d400c 	push	{r2, r3, lr}
ffff6340:	e1a01000 	mov	r1, r0
ffff6344:	e59f2024 	ldr	r2, [pc, #36]	; 0xffff6370
ffff6348:	e8920005 	ldm	r2, {r0, r2}
ffff634c:	e88d0005 	stm	sp, {r0, r2}
ffff6350:	e79d0101 	ldr	r0, [sp, r1, lsl #2]
ffff6354:	e8bd800c 	pop	{r2, r3, pc}
ffff6358:	01c20000 	
ffff635c:	0004831f 	
ffff6360:	01c05000 	
ffff6364:	01c02000 	
ffff6368:	9c380415 	
ffff636c:	9c150438 	
ffff6370:	ffff6854 
ffff6374:	e92d40f0 	push	{r4, r5, r6, r7, lr}
ffff6378:	e1a02000 	mov	r2, r0
ffff637c:	e1a03002 	mov	r3, r2
ffff6380:	e1a02003 	mov	r2, r3
ffff6384:	e2836004 	add	r6, r3, #4
ffff6388:	e3a04000 	mov	r4, #0
ffff638c:	e3a05008 	mov	r5, #8
ffff6390:	ea000006 	b	0xffff63b0
ffff6394:	e4d60001 	ldrb	r0, [r6], #1
ffff6398:	e4d17001 	ldrb	r7, [r1], #1
ffff639c:	e1500007 	cmp	r0, r7
ffff63a0:	0a000001 	beq	0xffff63ac
ffff63a4:	e3a00001 	mov	r0, #1
ffff63a8:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
ffff63ac:	e2844001 	add	r4, r4, #1
ffff63b0:	e1540005 	cmp	r4, r5
ffff63b4:	3afffff6 	bcc	0xffff6394
ffff63b8:	e3a00000 	mov	r0, #0
ffff63bc:	eafffff9 	b	0xffff63a8
ffff63c0:	e92d40f0 	push	{r4, r5, r6, r7, lr}
ffff63c4:	e1a02000 	mov	r2, r0
ffff63c8:	e1a06002 	mov	r6, r2
ffff63cc:	e1a02006 	mov	r2, r6
ffff63d0:	e596500c 	ldr	r5, [r6, #12]
ffff63d4:	e59f00c0 	ldr	r0, [pc, #192]	; 0xffff649c
ffff63d8:	e1a02006 	mov	r2, r6
ffff63dc:	e586000c 	str	r0, [r6, #12]
ffff63e0:	e1a04121 	lsr	r4, r1, #2
ffff63e4:	e3a07000 	mov	r7, #0
ffff63e8:	e1a03002 	mov	r3, r2
ffff63ec:	e320f000 	nop	{0}
ffff63f0:	e4930004 	ldr	r0, [r3], #4
ffff63f4:	e0877000 	add	r7, r7, r0
ffff63f8:	e4930004 	ldr	r0, [r3], #4
ffff63fc:	e0877000 	add	r7, r7, r0
ffff6400:	e4930004 	ldr	r0, [r3], #4
ffff6404:	e0877000 	add	r7, r7, r0
ffff6408:	e4930004 	ldr	r0, [r3], #4
ffff640c:	e0877000 	add	r7, r7, r0
ffff6410:	e2440004 	sub	r0, r4, #4
ffff6414:	e1a04000 	mov	r4, r0
ffff6418:	e3500003 	cmp	r0, #3
ffff641c:	8afffff3 	bhi	0xffff63f0
ffff6420:	ea000001 	b	0xffff642c
ffff6424:	e4930004 	ldr	r0, [r3], #4
ffff6428:	e0877000 	add	r7, r7, r0
ffff642c:	e1b00004 	movs	r0, r4
ffff6430:	e2444001 	sub	r4, r4, #1
ffff6434:	1afffffa 	bne	0xffff6424
ffff6438:	e586500c 	str	r5, [r6, #12]
ffff643c:	e1570005 	cmp	r7, r5
ffff6440:	1a000001 	bne	0xffff644c
ffff6444:	e3a00000 	mov	r0, #0
ffff6448:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
ffff644c:	e3a00001 	mov	r0, #1
ffff6450:	eafffffc 	b	0xffff6448
ffff6454:	e92d4070 	push	{r4, r5, r6, lr}
ffff6458:	e1a04000 	mov	r4, r0
ffff645c:	e1a05001 	mov	r5, r1
ffff6460:	e1a06002 	mov	r6, r2
ffff6464:	e1a01006 	mov	r1, r6
ffff6468:	e1a00004 	mov	r0, r4
ffff646c:	ebffffc0 	bl	0xffff6374
ffff6470:	e3500000 	cmp	r0, #0
ffff6474:	1a000006 	bne	0xffff6494
ffff6478:	e1a01005 	mov	r1, r5
ffff647c:	e1a00004 	mov	r0, r4
ffff6480:	ebffffce 	bl	0xffff63c0
ffff6484:	e3500000 	cmp	r0, #0
ffff6488:	1a000001 	bne	0xffff6494
ffff648c:	e3a00000 	mov	r0, #0
ffff6490:	e8bd8070 	pop	{r4, r5, r6, pc}
ffff6494:	e3a00001 	mov	r0, #1
ffff6498:	eafffffc 	b	0xffff6490
ffff649c:	5f0a6c39 	svcpl	0x000a6c39
ffff64a0:	e1a01000 	mov	r1, r0
ffff64a4:	ea000000 	b	0xffff64ac
ffff64a8:	e2411001 	sub	r1, r1, #1
ffff64ac:	e3510000 	cmp	r1, #0
ffff64b0:	cafffffc 	bgt	0xffff64a8
ffff64b4:	e12fff1e 	bx	lr

ffff64b8:	e92d4070 	push	{r4, r5, r6, lr}
ffff64bc:	e3a05000 	mov	r5, #0
ffff64c0:	e3a0603c 	mov	r6, #60	; 0x3c
ffff64c4:	e3a04004 	mov	r4, #4
ffff64c8:	ea000006 	b	0xffff64e8
ffff64cc:	e1a00006 	mov	r0, r6
ffff64d0:	ebfffff2 	bl	0xffff64a0
ffff64d4:	e3a00507 	mov	r0, #29360128	; 0x1c00000
ffff64d8:	e5900024 	ldr	r0, [r0, #36]	; 0x24
ffff64dc:	e7e00450 	ubfx	r0, r0, #8, #1
ffff64e0:	e0855000 	add	r5, r5, r0
ffff64e4:	e2444001 	sub	r4, r4, #1
ffff64e8:	e3540000 	cmp	r4, #0
ffff64ec:	cafffff6 	bgt	0xffff64cc
ffff64f0:	e3550000 	cmp	r5, #0
ffff64f4:	1a000001 	bne	0xffff6500
ffff64f8:	e3e00000 	mvn	r0, #0
ffff64fc:	e8bd8070 	pop	{r4, r5, r6, pc}
ffff6500:	e3a00000 	mov	r0, #0
ffff6504:	eafffffc 	b	0xffff64fc
ffff6508:	e12fff1e 	bx	lr

ffff650c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
ffff6510:	e2522020 	subs	r2, r2, #32
ffff6514:	3a00000d 	bcc	0xffff6550
ffff6518:	e3520e12 	cmp	r2, #288	; 0x120
ffff651c:	3a000007 	bcc	0xffff6540
ffff6520:	f5d1f100 	pld	[r1, #256]	; 0x100
ffff6524:	e8b151f8 	ldm	r1!, {r3, r4, r5, r6, r7, r8, ip, lr}
ffff6528:	e2422040 	sub	r2, r2, #64	; 0x40
ffff652c:	e3520e12 	cmp	r2, #288	; 0x120
ffff6530:	e8a051f8 	stmia	r0!, {r3, r4, r5, r6, r7, r8, ip, lr}
ffff6534:	e8b151f8 	ldm	r1!, {r3, r4, r5, r6, r7, r8, ip, lr}
ffff6538:	e8a051f8 	stmia	r0!, {r3, r4, r5, r6, r7, r8, ip, lr}
ffff653c:	2afffff7 	bcs	0xffff6520
ffff6540:	e8b151f8 	ldm	r1!, {r3, r4, r5, r6, r7, r8, ip, lr}
ffff6544:	e2522020 	subs	r2, r2, #32
ffff6548:	e8a051f8 	stmia	r0!, {r3, r4, r5, r6, r7, r8, ip, lr}
ffff654c:	2afffffb 	bcs	0xffff6540
ffff6550:	e1b0ce02 	lsls	ip, r2, #28
ffff6554:	28b15018 	ldmcs	r1!, {r3, r4, ip, lr}
ffff6558:	28a05018 	stmiacs	r0!, {r3, r4, ip, lr}
ffff655c:	48b10018 	ldmmi	r1!, {r3, r4}
ffff6560:	48a00018 	stmiami	r0!, {r3, r4}
ffff6564:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
ffff6568:	e1b0cf02 	lsls	ip, r2, #30
ffff656c:	24913004 	ldrcs	r3, [r1], #4
ffff6570:	24803004 	strcs	r3, [r0], #4
ffff6574:	012fff1e 	bxeq	lr
ffff6578:	e1b02f82 	lsls	r2, r2, #31
ffff657c:	20d130b2 	ldrhcs	r3, [r1], #2
ffff6580:	44d12001 	ldrbmi	r2, [r1], #1
ffff6584:	20c030b2 	strhcs	r3, [r0], #2
ffff6588:	44c02001 	strbmi	r2, [r0], #1
ffff658c:	e12fff1e 	bx	lr
ffff6590:	e1a0f000 	mov	pc, r0
	...
ffff659c:	00000001
ffff65a0:	00000200
ffff65a4:	00ffffff
ffff65a8:	000000ff
ffff65ac:	ffff5944
ffff65b0:	00000000 
ffff65b4:	00000001 
	...
ffff65c0:	00000002 
ffff65c4:	00000001 
ffff65c8:	00000040 
ffff65cc:	00000001 
ffff65d0:	00000400 
ffff65d4:	ffff59a0
	...
ffff65e8:	00000002 
ffff65ec:	00000001 
ffff65f0:	00000040 
ffff65f4:	00000001 
ffff65f8:	00000200 
ffff65fc:	ffff5944
	...
ffff6610:	00000002 
ffff6614:	00000000 
ffff6618:	00000040 
ffff661c:	00000001 
ffff6620:	00000400 
ffff6624:	ffff59a0
	...
ffff6638:	00000002 
ffff663c:	00000000 
ffff6640:	00000040 
ffff6644:	00000001 
ffff6648:	00000200 
ffff664c:	ffff5944
	...
ffff6660:	00000010 
ffff6664:	00000001 
ffff6668:	00000018 
ffff666c:	00000001 
ffff6670:	00000400 
ffff6674:	ffff5944
	...
ffff6688:	00000010 
ffff668c:	00000001 
ffff6690:	00000028 
ffff6694:	00000001 
ffff6698:	00000400 
ffff669c:	ffff5944
	...
ffff66b0:	00000008 
ffff66b4:	00000001 
ffff66b8:	00000040 
ffff66bc:	00000001 
ffff66c0:	00000400 
ffff66c4:	ffff59a0
	...
ffff66d8:	00000008 
ffff66dc:	00000001 
ffff66e0:	00000040 
ffff66e4:	00000001 
ffff66e8:	00000200 
ffff66ec:	ffff5944
ffff66f0:	00000003 
ffff66f4:	00000001 
ffff66f8:	00000001 
ffff66fc:	0000003f 
ffff6700:	00000002 
ffff6704:	00000001 
ffff6708:	00000040 
ffff670c:	00000001 
ffff6710:	00000400 
ffff6714:	ffff5944
ffff6718:	00000003 
ffff671c:	00000000 
ffff6720:	00000002 
ffff6724:	0000003f 
ffff6728:	00000002 
ffff672c:	00000001 
ffff6730:	00000040 
ffff6734:	00000001 
ffff6738:	00000400 
ffff673c:	ffff5944
ffff6740:	00000003 
ffff6744:	00000000 
ffff6748:	00000003 
ffff674c:	0000003f 
ffff6750:	00000002 
ffff6754:	00000001 
ffff6758:	00000040 
ffff675c:	00000001 
ffff6760:	00000400 
ffff6764:	ffff59a0
ffff6768:	00000003 
ffff676c:	00000000 
ffff6770:	00000001 
ffff6774:	0000003f 
ffff6778:	00000002 
ffff677c:	00000001 
ffff6780:	00000040 
ffff6784:	00000001 
ffff6788:	00000200 
ffff678c:	ffff59a0
ffff6790:	00000003 
ffff6794:	00000000 
ffff6798:	00000002 
ffff679c:	0000003f 
ffff67a0:	00000002 
ffff67a4:	00000001 
ffff67a8:	00000040 
ffff67ac:	00000001 
ffff67b0:	00000200 
ffff67b4:	ffff59a0 
ffff67b8:	00000003 
ffff67bc:	00000000 
ffff67c0:	00000003 
ffff67c4:	0000003f 
ffff67c8:	00000002 
ffff67cc:	00000001 
ffff67d0:	00000040 
ffff67d4:	00000001 
ffff67d8:	00000200 
ffff67dc:	ffff59a0 
ffff67e0:	00000003 
ffff67e4:	00000000 
ffff67e8:	00000001 
ffff67ec:	0000003f 
ffff67f0:	00000008 
ffff67f4:	00000001 
ffff67f8:	00000040 
ffff67fc:	00000001 
ffff6800:	00000200 
ffff6804:	ffff59a0 
ffff6808:	00000003 
ffff680c:	00000000 
ffff6810:	00000002 
ffff6814:	0000003f 
ffff6818:	00000008 
ffff681c:	00000001 
ffff6820:	00000040 
ffff6824:	00000001 
ffff6828:	00000200 
ffff682c:	ffff59a0 
ffff6830:	00000003 
ffff6834:	00000000 
ffff6838:	00000003 
ffff683c:	0000003f 
ffff6840:	00000008 
ffff6844:	00000001 
ffff6848:	00000040 
ffff684c:	00000001 
ffff6850:	00000200 
ffff6854:	ffff621c 
ffff6858:	ffff62b4 
	...
