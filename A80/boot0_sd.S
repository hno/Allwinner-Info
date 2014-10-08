
./lichee/tools/pack/chips/sun9iw1p1/bin/boot0_sdcard_sun9iw1p1.bin:     filformat binary


Disassembly of section .data:

00010000 <.data>:
v10000:
   10000:	ea0000bc 	b	0x102f8
   10004:	4e4f4765 	"eGON.BT0"
   10008:	3054422e 
   1000c:	6f162d05
   10010:	00008000
   10014:	00000030
   10018:	30303131 	"1100"
	...
   10024:	30303131 	"1100"
   10028:	2e330000 	0,0,"3.1.0",0
   1002c:	00302e31 
   10030:	000002c8 	0xc8,0x02,0,0
   10034:	30333231 	"1230"
	...
   100bc:	01030002 
   100c0:	00000001 
   100c4:	01030102 
   100c8:	00000001 
	...
   100f8:	01020006 
   100fc:	00000002 
   10100:	01020106 
   10104:	00000002 
   10108:	01020206 
   1010c:	00000002 
   10110:	01020306 
   10114:	00000002 
   10118:	01020406 
   1011c:	00000002 
   10120:	01020506 
   10124:	00000002 
	...
   102f8:	e10f0000 	mrs	r0, CPSR
   102fc:	e3c0001f 	bic	r0, r0, #31
   10300:	e3800013 	orr	r0, r0, #19
   10304:	e38000c0 	orr	r0, r0, #192	; 0xc0
   10308:	e3c00c02 	bic	r0, r0, #512	; 0x200
   1030c:	e121f000 	msr	CPSR_c, r0
   10310:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
   10314:	e3c00005 	bic	r0, r0, #5
   10318:	e3c00b06 	bic	r0, r0, #6144	; 0x1800
   1031c:	e3c00002 	bic	r0, r0, #2
   10320:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
   10324:	e59fd008 	ldr	sp, [pc, #8]	; 0x10334 = 0x19000
   10328:	eb000d57 	bl	0x1388c
   1032c:	eb000b0a 	bl	0x12f5c
   10330:	eafffffe 	b	0x10330

v10334:
   10334:	00019000 

f10338:
   10338:	e92d4070 	push	{r4, r5, r6, lr}
   1033c:	e1a05000 	mov	r5, r0
   10340:	e59f0140 	ldr	r0, [pc, #320]	; 0x10488
   10344:	e5d04028 	ldrb	r4, [r0, #40]	; 0x28
   10348:	e28f0f4f 	add	r0, pc, #316	; 0x1048c "card boot number = %d\n"
   1034c:	e1a01004 	mov	r1, r4
   10350:	eb0016cd 	bl	0x15e8c
   10354:	e28f0f52 	add	r0, pc, #328	; 0x104a4 "card no is %d\n"
   10358:	e1a01004 	mov	r1, r4
   1035c:	eb0016ca 	bl	0x15e8c
   10360:	e3540000 	cmp	r4, #0
   10364:	aa000003 	bge	0x10378
   10368:	e28f0f51 	add	r0, pc, #324	; 0x104b4
   1036c:	e1a01004 	mov	r1, r4
   10370:	eb0016c5 	bl	0x15e8c
   10374:	ea00001a 	b	0x103e4
   10378:	e0855104 	add	r5, r5, r4, lsl #2
   1037c:	e1a01004 	mov	r1, r4
   10380:	e28f0e15 	add	r0, pc, #336	; 0x104d8
   10384:	e5952038 	ldr	r2, [r5, #56]	; 0x38
   10388:	eb0016bf 	bl	0x15e8c
   1038c:	e5950038 	ldr	r0, [r5, #56]	; 0x38
   10390:	e3500000 	cmp	r0, #0
   10394:	03a00004 	moveq	r0, #4
   10398:	05850038 	streq	r0, [r5, #56]	; 0x38
   1039c:	e1a01000 	mov	r1, r0
   103a0:	e1a00004 	mov	r0, r4
   103a4:	eb000a96 	bl	0x12e04
   103a8:	e3700001 	cmn	r0, #1
   103ac:	028f0d05 	addeq	r0, pc, #320	; 0x104f4
   103b0:	0a00000a 	beq	0x103e0
   103b4:	e28f0e15 	add	r0, pc, #336	; 0x1050c
   103b8:	e1a01004 	mov	r1, r4
   103bc:	eb0016b2 	bl	0x15e8c
   103c0:	e3a0242a 	mov	r2, #704643072	; 0x2a000000
   103c4:	e1a03004 	mov	r3, r4
   103c8:	e3a01002 	mov	r1, #2
   103cc:	e3090530 	movw	r0, #38192	; 0x9530
   103d0:	eb000a94 	bl	0x12e28
   103d4:	e3500002 	cmp	r0, #2
   103d8:	0a000005 	beq	0x103f4
   103dc:	e28f0f4f 	add	r0, pc, #316	; 0x10520
   103e0:	eb0016a9 	bl	0x15e8c
   103e4:	e1a00004 	mov	r0, r4
   103e8:	eb000a8a 	bl	0x12e18
   103ec:	e3a00001 	mov	r0, #1
   103f0:	e8bd8070 	pop	{r4, r5, r6, pc}
   103f4:	e28f1f51 	add	r1, pc, #324	; 0x10540
   103f8:	e3a0042a 	mov	r0, #704643072	; 0x2a000000
   103fc:	eb000bc9 	bl	0x13328
   10400:	e3500000 	cmp	r0, #0
   10404:	128f0f4f 	addne	r0, pc, #316	; 0x10548
   10408:	1afffff4 	bne	0x103e0
   1040c:	e3a0642a 	mov	r6, #704643072	; 0x2a000000
   10410:	e28f0f55 	add	r0, pc, #340	; 0x1056c
   10414:	e5965014 	ldr	r5, [r6, #20]
   10418:	e1a01005 	mov	r1, r5
   1041c:	eb00169a 	bl	0x15e8c
   10420:	e1b00b85 	lsls	r0, r5, #23
   10424:	128f0f57 	addne	r0, pc, #348	; 0x10588
   10428:	1affffec 	bne	0x103e0
   1042c:	e1a014a5 	lsr	r1, r5, #9
   10430:	e1a03004 	mov	r3, r4
   10434:	e3a0242a 	mov	r2, #704643072	; 0x2a000000
   10438:	e3090530 	movw	r0, #38192	; 0x9530
   1043c:	eb000a79 	bl	0x12e28
   10440:	e15004a5 	cmp	r0, r5, lsr #9
   10444:	1affffe4 	bne	0x103dc
   10448:	e3a0042a 	mov	r0, #704643072	; 0x2a000000
   1044c:	e1a01005 	mov	r1, r5
   10450:	eb000bbb 	bl	0x13344
   10454:	e3500000 	cmp	r0, #0
   10458:	128f0f51 	addne	r0, pc, #324	; 0x105a4
   1045c:	1affffdf 	bne	0x103e0
   10460:	e3540000 	cmp	r4, #0
   10464:	03a00001 	moveq	r0, #1
   10468:	13a00002 	movne	r0, #2
   1046c:	e58600e4 	str	r0, [r6, #228]	; 0xe4
   10470:	e28f0f52 	add	r0, pc, #328	; 0x105c0
   10474:	eb001684 	bl	0x15e8c
   10478:	e1a00004 	mov	r0, r4
   1047c:	eb000a65 	bl	0x12e18
   10480:	e3a00000 	mov	r0, #0
   10484:	e8bd8070 	pop	{r4, r5, r6, pc}
v10488:
   10488:	00010000 
v1048c:
   1048c:	"card boot number = %d\n",0,0
v104a4:
   104a4:	"card no is %d\n",0,0
v104b4:
   104b4:	"bad card number %d in card boot\n",0,0,0,0
v104d8:
   104d8:	"sdcard %d line count %d\n",0,0,0,0
v104f4:
   104f4:	"Fail in Init sdmmc\n",0,0,0,0
v1050c:
   1050c:	"sdcard %d init ok\n",0,0
v10520:
   10520:	"Fail in reading uboot head.\n",0,0,0,0
v10548:
   10548:	"ERROR! NOT find the head of uboot.\n",0
v1056c:
   1056c:	"The size of uboot is %x.\n",0,0,0
v10588:
   10588:	"boot0 length is NOT align.\n",0
v105a4:
   105a4:	"Fail in checking uboot.\n",0,0,0,0
v105c0:
   105c0:	"Succeed in loading uboot from sdmmc flash.\n",0


f105ec:
   105ec:	e5903098 	ldr	r3, [r0, #152]	; 0x98
   105f0:	e12fff13 	bx	r3

f105f4:
   105f4:	e92d40f0 	push	{r4, r5, r6, r7, lr}
   105f8:	e24dd024 	sub	sp, sp, #36	; 0x24
   105fc:	e1a06000 	mov	r6, r0
   10600:	e3a0000d 	mov	r0, #13
   10604:	e59f7260 	ldr	r7, [pc, #608]	; 0x1086c
   10608:	e1a04001 	mov	r4, r1
   1060c:	e58d0000 	str	r0, [sp]
   10610:	e3a00015 	mov	r0, #21
   10614:	e58d0004 	str	r0, [sp, #4]
   10618:	e1d607bc 	ldrh	r0, [r6, #124]	; 0x7c
   1061c:	e1a00800 	lsl	r0, r0, #16
   10620:	e58d0008 	str	r0, [sp, #8]
   10624:	e3a00000 	mov	r0, #0
   10628:	e58d001c 	str	r0, [sp, #28]
   1062c:	e3a02000 	mov	r2, #0
   10630:	e1a0100d 	mov	r1, sp
   10634:	e1a00006 	mov	r0, r6
   10638:	ebffffeb 	bl	0x105ec
   1063c:	e1b05000 	movs	r5, r0
   10640:	0a000005 	beq	0x1065c
   10644:	e5961030 	ldr	r1, [r6, #48]	; 0x30
   10648:	e28f0e22 	add	r0, pc, #544	; 0x10870
   1064c:	eb00160e 	bl	0x15e8c
   10650:	e1a00005 	mov	r0, r5
   10654:	e28dd024 	add	sp, sp, #36	; 0x24
   10658:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
   1065c:	e59d000c 	ldr	r0, [sp, #12]
   10660:	e3100c01 	tst	r0, #256	; 0x100
   10664:	0a000002 	beq	0x10674
   10668:	e3540000 	cmp	r4, #0
   1066c:	0a00000f 	beq	0x106b0
   10670:	ea00000c 	b	0x106a8
   10674:	e3a00001 	mov	r0, #1
   10678:	eb000c6b 	bl	0x1382c
   1067c:	e59d000c 	ldr	r0, [sp, #12]
   10680:	e1100007 	tst	r0, r7
   10684:	0a000005 	beq	0x106a0
   10688:	e59d200c 	ldr	r2, [sp, #12]
   1068c:	e28f0c02 	add	r0, pc, #512	; 0x10894
   10690:	e5961030 	ldr	r1, [r6, #48]	; 0x30
   10694:	eb0015fc 	bl	0x15e8c
   10698:	e3e00011 	mvn	r0, #17
   1069c:	eaffffec 	b	0x10654
   106a0:	e2544001 	subs	r4, r4, #1
   106a4:	2affffe0 	bcs	0x1062c
   106a8:	e3a00000 	mov	r0, #0
   106ac:	eaffffe8 	b	0x10654
   106b0:	e5961030 	ldr	r1, [r6, #48]	; 0x30
   106b4:	e28f0f7f 	add	r0, pc, #508	; 0x108b8
   106b8:	eb0015f3 	bl	0x15e8c
   106bc:	e3e00012 	mvn	r0, #18
   106c0:	eaffffe3 	b	0x10654

f106c4:
   106c4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   106c8:	e24dd024 	sub	sp, sp, #36	; 0x24
   106cc:	e3a02010 	mov	r2, #16
   106d0:	e58d2000 	str	r2, [sp]
   106d4:	e3a02015 	mov	r2, #21
   106d8:	e58d1008 	str	r1, [sp, #8]
   106dc:	e3a01000 	mov	r1, #0
   106e0:	e58d2004 	str	r2, [sp, #4]
   106e4:	e1a02001 	mov	r2, r1
   106e8:	e58d101c 	str	r1, [sp, #28]
   106ec:	e1a0100d 	mov	r1, sp
   106f0:	ebffffbd 	bl	0x105ec
   106f4:	e28dd024 	add	sp, sp, #36	; 0x24
   106f8:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

f106fc:
   106fc:	e1a01000 	mov	r1, r0
   10700:	e59f01dc 	ldr	r0, [pc, #476]	; 0x108e4
   10704:	e92d4010 	push	{r4, lr}
   10708:	e7900101 	ldr	r0, [r0, r1, lsl #2]
   1070c:	e3500000 	cmp	r0, #0
   10710:	18bd8010 	popne	{r4, pc}
   10714:	e28f0f73 	add	r0, pc, #460	; 0x108e8
   10718:	eb0015db 	bl	0x15e8c
   1071c:	e3a00000 	mov	r0, #0
   10720:	e8bd8010 	pop	{r4, pc}

f10724:
   10724:	e92d40f0 	push	{r4, r5, r6, r7, lr}
   10728:	e24dd034 	sub	sp, sp, #52	; 0x34
   1072c:	e1a04000 	mov	r4, r0
   10730:	e3530001 	cmp	r3, #1
   10734:	e1a05003 	mov	r5, r3
   10738:	83a00012 	movhi	r0, #18
   1073c:	93a00011 	movls	r0, #17
   10740:	e58d0000 	str	r0, [sp]
   10744:	e3a07000 	mov	r7, #0
   10748:	e594003c 	ldr	r0, [r4, #60]	; 0x3c
   1074c:	e30063e8 	movw	r6, #1000	; 0x3e8
   10750:	e3500000 	cmp	r0, #0
   10754:	05940084 	ldreq	r0, [r4, #132]	; 0x84
   10758:	158d2008 	strne	r2, [sp, #8]
   1075c:	e58d1020 	str	r1, [sp, #32]
   10760:	e1a0100d 	mov	r1, sp
   10764:	00000290 	muleq	r0, r0, r2
   10768:	058d0008 	streq	r0, [sp, #8]
   1076c:	e3a00015 	mov	r0, #21
   10770:	e58d0004 	str	r0, [sp, #4]
   10774:	e28d2020 	add	r2, sp, #32
   10778:	e58d5028 	str	r5, [sp, #40]	; 0x28
   1077c:	e58d701c 	str	r7, [sp, #28]
   10780:	e5940084 	ldr	r0, [r4, #132]	; 0x84
   10784:	e58d002c 	str	r0, [sp, #44]	; 0x2c
   10788:	e3a00001 	mov	r0, #1
   1078c:	e58d0024 	str	r0, [sp, #36]	; 0x24
   10790:	e1a00004 	mov	r0, r4
   10794:	ebffff94 	bl	0x105ec
   10798:	e3500000 	cmp	r0, #0
   1079c:	15941030 	ldrne	r1, [r4, #48]	; 0x30
   107a0:	128f0e16 	addne	r0, pc, #352	; 0x10908
   107a4:	0a000003 	beq	0x107b8
   107a8:	eb0015b7 	bl	0x15e8c
   107ac:	e3a00000 	mov	r0, #0
   107b0:	e28dd034 	add	sp, sp, #52	; 0x34
   107b4:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
   107b8:	e3550001 	cmp	r5, #1
   107bc:	9a000010 	bls	0x10804
   107c0:	e28d1004 	add	r1, sp, #4
   107c4:	e3a0000c 	mov	r0, #12
   107c8:	e58d0000 	str	r0, [sp]
   107cc:	e3a0001d 	mov	r0, #29
   107d0:	e3a02000 	mov	r2, #0
   107d4:	e8810081 	stm	r1, {r0, r7}
   107d8:	e1a0100d 	mov	r1, sp
   107dc:	e1a00004 	mov	r0, r4
   107e0:	e58d701c 	str	r7, [sp, #28]
   107e4:	ebffff80 	bl	0x105ec
   107e8:	e3500000 	cmp	r0, #0
   107ec:	15941030 	ldrne	r1, [r4, #48]	; 0x30
   107f0:	128f0f4d 	addne	r0, pc, #308	; 0x1092c
   107f4:	1affffeb 	bne	0x107a8
   107f8:	e1a01006 	mov	r1, r6
   107fc:	e1a00004 	mov	r0, r4
   10800:	ebffff7b 	bl	0x105f4

f10804:
   10804:	e1a00005 	mov	r0, r5
   10808:	eaffffe8 	b	0x107b0
   1080c:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   10810:	e1a07001 	mov	r7, r1
   10814:	e1a08003 	mov	r8, r3
   10818:	e1a06000 	mov	r6, r0
   1081c:	e1a09002 	mov	r9, r2
   10820:	e1a05002 	mov	r5, r2
   10824:	ebffffb4 	bl	0x106fc
   10828:	e3590000 	cmp	r9, #0
   1082c:	e1a04000 	mov	r4, r0
   10830:	05901030 	ldreq	r1, [r0, #48]	; 0x30
   10834:	028f0f46 	addeq	r0, pc, #280	; 0x10954
   10838:	0a000064 	beq	0x109d0
   1083c:	e3540000 	cmp	r4, #0
   10840:	028f0f4d 	addeq	r0, pc, #308	; 0x1097c
   10844:	01a01006 	moveq	r1, r6
   10848:	0a000060 	beq	0x109d0
   1084c:	e59430a8 	ldr	r3, [r4, #168]	; 0xa8
   10850:	e0872009 	add	r2, r7, r9
   10854:	e1520003 	cmp	r2, r3
   10858:	9a00005f 	bls	0x109dc
   1085c:	e5901030 	ldr	r1, [r0, #48]	; 0x30
   10860:	e28f0f4d 	add	r0, pc, #308	; 0x1099c
   10864:	eb001588 	bl	0x15e8c
   10868:	ea000059 	b	0x109d4
v1086c:
   1086c:	fdf94080 	ldc2l	0, cr4, [r9, #512]!	; 0x200
v10870:
   10870:	"[mmc]: mmc %d Send status failed\n",0,0,0
v10894:
   10894:	"[mmc]: mmc %d Status Error: 0x%08X\n",0
v108b8:
   108b8:	"[mmc]: mmc %d Timeout waiting card ready\n",0,0,0
v108e4:
   108e4:	00016c0c 	andeq	r6, r1, ip, lsl #24
v108e8:
   108e8:	"[mmc]: MMC Device %d not found\n",0
v10908:
   10908:	"[mmc]: mmc %d  read blcok failed\n",0,0,0
v1092c:
   1092c:	"[mmc]: mmc %d fail to send stop cmd\n",0,0,0,0
v10954:
   10954:	"[mmc]: mmc %d blkcnt should not be 0\n",0,0,0
v1097c:
   1097c:	"[mmc]: Can not find mmc dev %d\n",0
v1099c:
   1099c:	"[mmc]: mmc %d: block number 0x%x exceeds max(0x%x)\n",0
   109d0:	eb00152d 	bl	0x15e8c
   109d4:	e3a00000 	mov	r0, #0
   109d8:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

f109dc:
   109dc:	e5941084 	ldr	r1, [r4, #132]	; 0x84
   109e0:	ebffff37 	bl	0x106c4
   109e4:	e3500000 	cmp	r0, #0
   109e8:	15941030 	ldrne	r1, [r4, #48]	; 0x30
   109ec:	128f0c02 	addne	r0, pc, #512	; 0x10bf4
   109f0:	1afffff6 	bne	0x109d0
   109f4:	e59460a4 	ldr	r6, [r4, #164]	; 0xa4
   109f8:	e1a02007 	mov	r2, r7
   109fc:	e1a01008 	mov	r1, r8
   10a00:	e1a00004 	mov	r0, r4
   10a04:	e1560005 	cmp	r6, r5
   10a08:	21a06005 	movcs	r6, r5
   10a0c:	e1a03006 	mov	r3, r6
   10a10:	ebffff43 	bl	0x10724
   10a14:	e1500006 	cmp	r0, r6
   10a18:	15941030 	ldrne	r1, [r4, #48]	; 0x30
   10a1c:	128f0f7d 	addne	r0, pc, #500	; 0x10c18
   10a20:	1affffea 	bne	0x109d0
   10a24:	e5940084 	ldr	r0, [r4, #132]	; 0x84
   10a28:	e0555006 	subs	r5, r5, r6
   10a2c:	e0877006 	add	r7, r7, r6
   10a30:	e0288096 	mla	r8, r6, r0, r8
   10a34:	01a00009 	moveq	r0, r9
   10a38:	1affffed 	bne	0x109f4
   10a3c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

f10a40:
   10a40:	e92d4030 	push	{r4, r5, lr}
   10a44:	e24dd024 	sub	sp, sp, #36	; 0x24
   10a48:	e1a05000 	mov	r5, r0
   10a4c:	e3a00001 	mov	r0, #1
   10a50:	eb000b75 	bl	0x1382c
   10a54:	e3a00000 	mov	r0, #0
   10a58:	e58d0008 	str	r0, [sp, #8]
   10a5c:	e1a02000 	mov	r2, r0
   10a60:	e1a0100d 	mov	r1, sp
   10a64:	e58d0000 	str	r0, [sp]
   10a68:	e58d0004 	str	r0, [sp, #4]
   10a6c:	e58d001c 	str	r0, [sp, #28]
   10a70:	e1a00005 	mov	r0, r5
   10a74:	ebfffedc 	bl	0x105ec
   10a78:	e1b04000 	movs	r4, r0
   10a7c:	0a000005 	beq	0x10a98
   10a80:	e5951030 	ldr	r1, [r5, #48]	; 0x30
   10a84:	e28f0e1b 	add	r0, pc, #432	; 0x10c3c
   10a88:	eb0014ff 	bl	0x15e8c
   10a8c:	e1a00004 	mov	r0, r4
   10a90:	e28dd024 	add	sp, sp, #36	; 0x24
   10a94:	e8bd8030 	pop	{r4, r5, pc}
   10a98:	e3a00002 	mov	r0, #2
   10a9c:	eb000b62 	bl	0x1382c
   10aa0:	e3a00000 	mov	r0, #0
   10aa4:	eafffff9 	b	0x10a90

f10aa8:
   10aa8:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   10aac:	e59f91a8 	ldr	r9, [pc, #424]	; 0x10c5c
   10ab0:	e24dd024 	sub	sp, sp, #36	; 0x24
   10ab4:	e1a04000 	mov	r4, r0
   10ab8:	e30053e8 	movw	r5, #1000	; 0x3e8
   10abc:	e3a0a037 	mov	sl, #55	; 0x37
   10ac0:	e3a0b015 	mov	fp, #21
   10ac4:	e3a08001 	mov	r8, #1
   10ac8:	e3a07000 	mov	r7, #0
   10acc:	e58d7008 	str	r7, [sp, #8]
   10ad0:	e3a02000 	mov	r2, #0
   10ad4:	e1cda0f0 	strd	sl, [sp]
   10ad8:	e1a0100d 	mov	r1, sp
   10adc:	e1a00004 	mov	r0, r4
   10ae0:	e58d701c 	str	r7, [sp, #28]
   10ae4:	ebfffec0 	bl	0x105ec
   10ae8:	e1b06000 	movs	r6, r0
   10aec:	15941030 	ldrne	r1, [r4, #48]	; 0x30
   10af0:	128f0f5a 	addne	r0, pc, #360	; 0x10c60
   10af4:	0a000003 	beq	0x10b08
   10af8:	eb0014e3 	bl	0x15e8c
   10afc:	e1a00006 	mov	r0, r6
   10b00:	e28dd024 	add	sp, sp, #36	; 0x24
   10b04:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   10b08:	e3a00029 	mov	r0, #41	; 0x29
   10b0c:	e3a02000 	mov	r2, #0
   10b10:	e88d0101 	stm	sp, {r0, r8}
   10b14:	e594004c 	ldr	r0, [r4, #76]	; 0x4c
   10b18:	e3100b01 	tst	r0, #1024	; 0x400
   10b1c:	05940024 	ldreq	r0, [r4, #36]	; 0x24
   10b20:	13a00000 	movne	r0, #0
   10b24:	059f1158 	ldreq	r1, [pc, #344]	; 0x10c84
   10b28:	00000001 	andeq	r0, r0, r1
   10b2c:	e58d0008 	str	r0, [sp, #8]
   10b30:	e5940028 	ldr	r0, [r4, #40]	; 0x28
   10b34:	e1a0100d 	mov	r1, sp
   10b38:	e1500009 	cmp	r0, r9
   10b3c:	059d0008 	ldreq	r0, [sp, #8]
   10b40:	03800101 	orreq	r0, r0, #1073741824	; 0x40000000
   10b44:	058d0008 	streq	r0, [sp, #8]
   10b48:	e1a00004 	mov	r0, r4
   10b4c:	ebfffea6 	bl	0x105ec
   10b50:	e1b06000 	movs	r6, r0
   10b54:	15941030 	ldrne	r1, [r4, #48]	; 0x30
   10b58:	128f0f4a 	addne	r0, pc, #296	; 0x10c88
   10b5c:	1affffe5 	bne	0x10af8
   10b60:	e3a00001 	mov	r0, #1
   10b64:	eb000b30 	bl	0x1382c
   10b68:	e59d000c 	ldr	r0, [sp, #12]
   10b6c:	e3100102 	tst	r0, #-2147483648	; 0x80000000
   10b70:	0a000006 	beq	0x10b90
   10b74:	e3550000 	cmp	r5, #0
   10b78:	ca000007 	bgt	0x10b9c
   10b7c:	e5941030 	ldr	r1, [r4, #48]	; 0x30
   10b80:	e28f0f49 	add	r0, pc, #292	; 0x10cac
   10b84:	eb0014c0 	bl	0x15e8c
   10b88:	e3e00010 	mvn	r0, #16
   10b8c:	eaffffdb 	b	0x10b00
   10b90:	e2555001 	subs	r5, r5, #1
   10b94:	2affffcc 	bcs	0x10acc
   10b98:	eafffff7 	b	0x10b7c
   10b9c:	e5940028 	ldr	r0, [r4, #40]	; 0x28
   10ba0:	e1500009 	cmp	r0, r9
   10ba4:	159f0128 	ldrne	r0, [pc, #296]	; 0x10cd4
   10ba8:	15840028 	strne	r0, [r4, #40]	; 0x28
   10bac:	e594004c 	ldr	r0, [r4, #76]	; 0x4c
   10bb0:	e3100b01 	tst	r0, #1024	; 0x400
   10bb4:	0a000050 	beq	0x10cfc
   10bb8:	e58d7008 	str	r7, [sp, #8]
   10bbc:	e3a0003a 	mov	r0, #58	; 0x3a
   10bc0:	e58d701c 	str	r7, [sp, #28]
   10bc4:	e3a02000 	mov	r2, #0
   10bc8:	e88d0101 	stm	sp, {r0, r8}
   10bcc:	e1a0100d 	mov	r1, sp
   10bd0:	e1a00004 	mov	r0, r4
   10bd4:	ebfffe84 	bl	0x105ec
   10bd8:	e1b05000 	movs	r5, r0
   10bdc:	0a000046 	beq	0x10cfc
   10be0:	e5941030 	ldr	r1, [r4, #48]	; 0x30
   10be4:	e28f00ec 	add	r0, pc, #236	; 0x10cd8
   10be8:	eb0014a7 	bl	0x15e8c
   10bec:	e1a00005 	mov	r0, r5
   10bf0:	eaffffc2 	b	0x10b00
v10bf4:
   10bf4:	"[mmc]: mmc %d Set block len failed\n",0
v10c18:
   10c18:	"[mmc]: mmc %d block read failed\n",0,0,0,0
v10c3c:
   10c3c:	"[mmc]: mmc %d go idle failed\n",0,0,0
v10c5c:
   10c5c:	00020020 	andeq	r0, r2, r0, lsr #32
v10c60:
   10c60:	"[mmc]: mmc %d send app cmd failed\n",0,0
v10c84:
   10c84:	00ff8000 	rscseq	r8, pc, r0
v10c88:
   10c88:	"[mmc]: mmc %d send cmd41 failed\n",0,0,0,0
v10cac:
   10cac:	"[mmc]: mmc %d wait card init failed\n",0,0,0,0
v10cd4:
   10cd4:	00020010 	andeq	r0, r2, r0, lsl r0
v10cd8:
   10cd8:	"[mmc]: mmc %d spi read ocr failed\n",0,0
   10cfc:	e59d000c 	ldr	r0, [sp, #12]
   10d00:	e5840050 	str	r0, [r4, #80]	; 0x50
   10d04:	e7e00f50 	ubfx	r0, r0, #30, #1
   10d08:	e584003c 	str	r0, [r4, #60]	; 0x3c
   10d0c:	e3a00000 	mov	r0, #0
   10d10:	e1c477bc 	strh	r7, [r4, #124]	; 0x7c
   10d14:	eaffff79 	b	0x10b00

f10d18:
   10d18:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
   10d1c:	e24dd024 	sub	sp, sp, #36	; 0x24
   10d20:	e1a04000 	mov	r4, r0
   10d24:	e3025710 	movw	r5, #10000	; 0x2710
   10d28:	ebffff44 	bl	0x10a40
   10d2c:	e3a08000 	mov	r8, #0
   10d30:	e59f02c0 	ldr	r0, [pc, #704]	; 0x10ff8
   10d34:	e3a07001 	mov	r7, #1
   10d38:	e58d801c 	str	r8, [sp, #28]
   10d3c:	e1a02008 	mov	r2, r8
   10d40:	e1a0100d 	mov	r1, sp
   10d44:	e58d7000 	str	r7, [sp]
   10d48:	e58d7004 	str	r7, [sp, #4]
   10d4c:	e58d0008 	str	r0, [sp, #8]
   10d50:	e1a00004 	mov	r0, r4
   10d54:	ebfffe24 	bl	0x105ec
   10d58:	e1b06000 	movs	r6, r0
   10d5c:	1a00001b 	bne	0x10dd0
   10d60:	e3a00001 	mov	r0, #1
   10d64:	eb000ab0 	bl	0x1382c
   10d68:	e59f928c 	ldr	r9, [pc, #652]	; 0x10ffc
   10d6c:	e58d7000 	str	r7, [sp]
   10d70:	e58d7004 	str	r7, [sp, #4]
   10d74:	e594004c 	ldr	r0, [r4, #76]	; 0x4c
   10d78:	e3100b01 	tst	r0, #1024	; 0x400
   10d7c:	13a00000 	movne	r0, #0
   10d80:	1a000005 	bne	0x10d9c
   10d84:	e5940024 	ldr	r0, [r4, #36]	; 0x24
   10d88:	e59d100c 	ldr	r1, [sp, #12]
   10d8c:	e0000001 	and	r0, r0, r1
   10d90:	e0000009 	and	r0, r0, r9
   10d94:	e2011206 	and	r1, r1, #1610612736	; 0x60000000
   10d98:	e1800001 	orr	r0, r0, r1
   10d9c:	e58d0008 	str	r0, [sp, #8]
   10da0:	e594004c 	ldr	r0, [r4, #76]	; 0x4c
   10da4:	e3a02000 	mov	r2, #0
   10da8:	e1a0100d 	mov	r1, sp
   10dac:	e3100b02 	tst	r0, #2048	; 0x800
   10db0:	159d0008 	ldrne	r0, [sp, #8]
   10db4:	13800101 	orrne	r0, r0, #1073741824	; 0x40000000
   10db8:	158d0008 	strne	r0, [sp, #8]
   10dbc:	e1a00004 	mov	r0, r4
   10dc0:	e58d801c 	str	r8, [sp, #28]
   10dc4:	ebfffe08 	bl	0x105ec
   10dc8:	e1b06000 	movs	r6, r0
   10dcc:	0a000005 	beq	0x10de8
   10dd0:	e5941030 	ldr	r1, [r4, #48]	; 0x30
   10dd4:	e28f0f89 	add	r0, pc, #548	; 0x11000
   10dd8:	eb00142b 	bl	0x15e8c
   10ddc:	e1a00006 	mov	r0, r6
   10de0:	e28dd024 	add	sp, sp, #36	; 0x24
   10de4:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
   10de8:	e3a00001 	mov	r0, #1
   10dec:	eb000a8e 	bl	0x1382c
   10df0:	e59d000c 	ldr	r0, [sp, #12]
   10df4:	e3100102 	tst	r0, #-2147483648	; 0x80000000
   10df8:	0a000006 	beq	0x10e18
   10dfc:	e3550000 	cmp	r5, #0
   10e00:	ca000007 	bgt	0x10e24
   10e04:	e5941030 	ldr	r1, [r4, #48]	; 0x30
   10e08:	e28f0f85 	add	r0, pc, #532	; 0x11024
   10e0c:	eb00141e 	bl	0x15e8c
   10e10:	e3e00010 	mvn	r0, #16
   10e14:	eafffff1 	b	0x10de0
   10e18:	e2555001 	subs	r5, r5, #1
   10e1c:	2affffd2 	bcs	0x10d6c
   10e20:	eafffff7 	b	0x10e04
   10e24:	e594004c 	ldr	r0, [r4, #76]	; 0x4c
   10e28:	e3100b01 	tst	r0, #1024	; 0x400
   10e2c:	0a000008 	beq	0x10e54
   10e30:	e3a0003a 	mov	r0, #58	; 0x3a
   10e34:	e3a02000 	mov	r2, #0
   10e38:	e88d0181 	stm	sp, {r0, r7, r8}
   10e3c:	e1a0100d 	mov	r1, sp
   10e40:	e1a00004 	mov	r0, r4
   10e44:	e58d801c 	str	r8, [sp, #28]
   10e48:	ebfffde7 	bl	0x105ec
   10e4c:	e3500000 	cmp	r0, #0
   10e50:	1affffe2 	bne	0x10de0
   10e54:	e3a00801 	mov	r0, #65536	; 0x10000
   10e58:	e5840028 	str	r0, [r4, #40]	; 0x28
   10e5c:	e59d000c 	ldr	r0, [sp, #12]
   10e60:	e5840050 	str	r0, [r4, #80]	; 0x50
   10e64:	e7e00f50 	ubfx	r0, r0, #30, #1
   10e68:	e584003c 	str	r0, [r4, #60]	; 0x3c
   10e6c:	e3a00000 	mov	r0, #0
   10e70:	e1c477bc 	strh	r7, [r4, #124]	; 0x7c
   10e74:	eaffffd9 	b	0x10de0

f10e78:
   10e78:	e92d4030 	push	{r4, r5, lr}
   10e7c:	e24dd034 	sub	sp, sp, #52	; 0x34
   10e80:	e1a05000 	mov	r5, r0
   10e84:	e3a00008 	mov	r0, #8
   10e88:	e28d2020 	add	r2, sp, #32
   10e8c:	e58d0000 	str	r0, [sp]
   10e90:	e3a00015 	mov	r0, #21
   10e94:	e58d0004 	str	r0, [sp, #4]
   10e98:	e3a00000 	mov	r0, #0
   10e9c:	e58d0008 	str	r0, [sp, #8]
   10ea0:	e1cd01fc 	strd	r0, [sp, #28]
   10ea4:	e3001200 	movw	r1, #512	; 0x200
   10ea8:	e3a00001 	mov	r0, #1
   10eac:	e58d0024 	str	r0, [sp, #36]	; 0x24
   10eb0:	e1cd02f8 	strd	r0, [sp, #40]	; 0x28
   10eb4:	e1a0100d 	mov	r1, sp
   10eb8:	e1a00005 	mov	r0, r5
   10ebc:	ebfffdca 	bl	0x105ec
   10ec0:	e1b04000 	movs	r4, r0
   10ec4:	15951030 	ldrne	r1, [r5, #48]	; 0x30
   10ec8:	128f0f5f 	addne	r0, pc, #380	; 0x1104c
   10ecc:	1b0013ee 	blne	0x15e8c
   10ed0:	e28dd034 	add	sp, sp, #52	; 0x34
   10ed4:	e1a00004 	mov	r0, r4
   10ed8:	e8bd8030 	pop	{r4, r5, pc}

f10edc:
   10edc:	e92d4070 	push	{r4, r5, r6, lr}
   10ee0:	e24dd020 	sub	sp, sp, #32
   10ee4:	e1a05000 	mov	r5, r0
   10ee8:	e3a00006 	mov	r0, #6
   10eec:	e30063e8 	movw	r6, #1000	; 0x3e8
   10ef0:	e1a0100d 	mov	r1, sp
   10ef4:	e58d0000 	str	r0, [sp]
   10ef8:	e3a0001d 	mov	r0, #29
   10efc:	e58d0004 	str	r0, [sp, #4]
   10f00:	e1a00802 	lsl	r0, r2, #16
   10f04:	e1800403 	orr	r0, r0, r3, lsl #8
   10f08:	e3800403 	orr	r0, r0, #50331648	; 0x3000000
   10f0c:	e58d0008 	str	r0, [sp, #8]
   10f10:	e3a00000 	mov	r0, #0
   10f14:	e58d001c 	str	r0, [sp, #28]
   10f18:	e1a02000 	mov	r2, r0
   10f1c:	e1a00005 	mov	r0, r5
   10f20:	ebfffdb1 	bl	0x105ec
   10f24:	e1b04000 	movs	r4, r0
   10f28:	15951030 	ldrne	r1, [r5, #48]	; 0x30
   10f2c:	128f0f4f 	addne	r0, pc, #316	; 0x11070
   10f30:	1b0013d5 	blne	0x15e8c
   10f34:	e1a01006 	mov	r1, r6
   10f38:	e1a00005 	mov	r0, r5
   10f3c:	ebfffdac 	bl	0x105f4
   10f40:	e28dd020 	add	sp, sp, #32
   10f44:	e1a00004 	mov	r0, r4
   10f48:	e8bd8070 	pop	{r4, r5, r6, pc}

f10f4c:
   10f4c:	e92d40f0 	push	{r4, r5, r6, r7, lr}
   10f50:	e1a04000 	mov	r4, r0
   10f54:	e3a00000 	mov	r0, #0
   10f58:	e24ddf81 	sub	sp, sp, #516	; 0x204
   10f5c:	e3a05005 	mov	r5, #5
   10f60:	e5840048 	str	r0, [r4, #72]	; 0x48
   10f64:	e594004c 	ldr	r0, [r4, #76]	; 0x4c
   10f68:	e3100b01 	tst	r0, #1024	; 0x400
   10f6c:	1a000074 	bne	0x11144
   10f70:	e5940028 	ldr	r0, [r4, #40]	; 0x28
   10f74:	e59f1114 	ldr	r1, [pc, #276]	; 0x11090
   10f78:	e1510000 	cmp	r1, r0
   10f7c:	8a000070 	bhi	0x11144
   10f80:	e3000100 	movw	r0, #256	; 0x100
   10f84:	e1a0100d 	mov	r1, sp
   10f88:	e5840048 	str	r0, [r4, #72]	; 0x48
   10f8c:	e1a00004 	mov	r0, r4
   10f90:	ebffffb8 	bl	0x10e78
   10f94:	e1b06000 	movs	r6, r0
   10f98:	05dd00c4 	ldrbeq	r0, [sp, #196]	; 0xc4
   10f9c:	128f00f0 	addne	r0, pc, #240	; 0x11094
   10fa0:	15941030 	ldrne	r1, [r4, #48]	; 0x30
   10fa4:	0200700f 	andeq	r7, r0, #15
   10fa8:	0a000003 	beq	0x10fbc
   10fac:	eb0013b6 	bl	0x15e8c
   10fb0:	e1a00006 	mov	r0, r6
   10fb4:	e28ddf81 	add	sp, sp, #516	; 0x204
   10fb8:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
   10fbc:	e3a03001 	mov	r3, #1
   10fc0:	e3a020b9 	mov	r2, #185	; 0xb9
   10fc4:	e1a01003 	mov	r1, r3
   10fc8:	e1a00004 	mov	r0, r4
   10fcc:	ebffffc2 	bl	0x10edc
   10fd0:	e1b06000 	movs	r6, r0
   10fd4:	0a000048 	beq	0x110fc
   10fd8:	e28f00d8 	add	r0, pc, #216	; 0x110b8
   10fdc:	eb0013aa 	bl	0x15e8c
   10fe0:	e2455001 	sub	r5, r5, #1
   10fe4:	e3750001 	cmn	r5, #1
   10fe8:	05941030 	ldreq	r1, [r4, #48]	; 0x30
   10fec:	028f00e4 	addeq	r0, pc, #228	; 0x110d8
   10ff0:	1afffff1 	bne	0x10fbc
   10ff4:	eaffffec 	b	0x10fac
v10ff8:
   10ff8:	40ff8000 	rscsmi	r8, pc, r0
v10ffc:
   10ffc:	007fff80 	rsbseq	pc, pc, r0, lsl #31

v11000:
   11000:	"[mmc]: mmc %d send op cond failed\n",0,0
    
v11024:
   11024:	"[mmc]: mmc %d wait for mmc init failed\n",0
v1104c:
   1104c:	"[mmc]: mmc %d send ext csd failed\n",0,0
v11070:
   11070:	"[mmc]: mmc %d switch failed\n",0,0,0,0
v11090:
   11090:	00010040 	andeq	r0, r1, r0, asr #32
v11094:
   11094:	"[mmc]: mmc %d get ext csd failed\n",0,0,0
v110b8:
   110b8:	"[mmc]: retry mmc switch(cmd6)\n",0,0
v110d8:
   110d8:	"[mmc]: mmc %d change to hs failed\n",0,0

   110fc:	e1a0100d 	mov	r1, sp
   11100:	e1a00004 	mov	r0, r4
   11104:	ebffff5b 	bl	0x10e78
   11108:	e1b05000 	movs	r5, r0
   1110c:	0a000004 	beq	0x11124
   11110:	e5941030 	ldr	r1, [r4, #48]	; 0x30
   11114:	e28f0fab 	add	r0, pc, #684	; 0x113c8
   11118:	eb00135b 	bl	0x15e8c
   1111c:	e1a00005 	mov	r0, r5
   11120:	eaffffa3 	b	0x10fb4
   11124:	e5dd00b9 	ldrb	r0, [sp, #185]	; 0xb9
   11128:	e3500000 	cmp	r0, #0
   1112c:	0affffa0 	beq	0x10fb4
   11130:	e5940048 	ldr	r0, [r4, #72]	; 0x48
   11134:	e3170002 	tst	r7, #2
   11138:	13800011 	orrne	r0, r0, #17
   1113c:	03800001 	orreq	r0, r0, #1
   11140:	e5840048 	str	r0, [r4, #72]	; 0x48
   11144:	e3a00000 	mov	r0, #0
   11148:	eaffff99 	b	0x10fb4
   1114c:	e92d4010 	push	{r4, lr}
   11150:	e1a04001 	mov	r4, r1
   11154:	ebfffd68 	bl	0x106fc
   11158:	e3500000 	cmp	r0, #0
   1115c:	03e00000 	mvneq	r0, #0
   11160:	08bd8010 	popeq	{r4, pc}
   11164:	e3a020b3 	mov	r2, #179	; 0xb3
   11168:	e3a01001 	mov	r1, #1
   1116c:	e5d0307e 	ldrb	r3, [r0, #126]	; 0x7e
   11170:	e7c23014 	bfi	r3, r4, #0, #3
   11174:	e8bd4010 	pop	{r4, lr}
   11178:	eaffff57 	b	0x10edc

f1117c:
   1117c:	e92d4010 	push	{r4, lr}
   11180:	e24dd030 	sub	sp, sp, #48	; 0x30
   11184:	e3a04006 	mov	r4, #6
   11188:	e58d4000 	str	r4, [sp]
   1118c:	e3a04015 	mov	r4, #21
   11190:	e58d4004 	str	r4, [sp, #4]
   11194:	e3e044ff 	mvn	r4, #-16777216	; 0xff000000
   11198:	e1844f81 	orr	r4, r4, r1, lsl #31
   1119c:	e59dc038 	ldr	ip, [sp, #56]	; 0x38
   111a0:	e1a01102 	lsl	r1, r2, #2
   111a4:	e3a0200f 	mov	r2, #15
   111a8:	e1c42112 	bic	r2, r4, r2, lsl r1
   111ac:	e1821113 	orr	r1, r2, r3, lsl r1
   111b0:	e28d401c 	add	r4, sp, #28
   111b4:	e58d1008 	str	r1, [sp, #8]
   111b8:	e3a01000 	mov	r1, #0
   111bc:	e28d2020 	add	r2, sp, #32
   111c0:	e8841002 	stm	r4, {r1, ip}
   111c4:	e3a01040 	mov	r1, #64	; 0x40
   111c8:	e58d102c 	str	r1, [sp, #44]	; 0x2c
   111cc:	e3a01001 	mov	r1, #1
   111d0:	e58d1028 	str	r1, [sp, #40]	; 0x28
   111d4:	e58d1024 	str	r1, [sp, #36]	; 0x24
   111d8:	e1a0100d 	mov	r1, sp
   111dc:	ebfffd02 	bl	0x105ec
   111e0:	e28dd030 	add	sp, sp, #48	; 0x30
   111e4:	e8bd8010 	pop	{r4, pc}

f111e8:
   111e8:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
   111ec:	e24dd07c 	sub	sp, sp, #124	; 0x7c
   111f0:	e3a06000 	mov	r6, #0
   111f4:	e5806048 	str	r6, [r0, #72]	; 0x48
   111f8:	e1a04000 	mov	r4, r0
   111fc:	e590004c 	ldr	r0, [r0, #76]	; 0x4c
   11200:	e3100b01 	tst	r0, #1024	; 0x400
   11204:	1a00006d 	bne	0x113c0
   11208:	e28d1004 	add	r1, sp, #4
   1120c:	e3a00037 	mov	r0, #55	; 0x37
   11210:	e3a07015 	mov	r7, #21
   11214:	e3a02000 	mov	r2, #0
   11218:	e8810081 	stm	r1, {r0, r7}
   1121c:	e1d407bc 	ldrh	r0, [r4, #124]	; 0x7c
   11220:	e1a00800 	lsl	r0, r0, #16
   11224:	e58d000c 	str	r0, [sp, #12]
   11228:	e1a00004 	mov	r0, r4
   1122c:	e58d6020 	str	r6, [sp, #32]
   11230:	ebfffced 	bl	0x105ec
   11234:	e1b05000 	movs	r5, r0
   11238:	15941030 	ldrne	r1, [r4, #48]	; 0x30
   1123c:	128f0f6a 	addne	r0, pc, #424	; 0x113ec
   11240:	0a000003 	beq	0x11254
   11244:	eb001310 	bl	0x15e8c
   11248:	e1a00005 	mov	r0, r5
   1124c:	e28dd07c 	add	sp, sp, #124	; 0x7c
   11250:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
   11254:	e28d1004 	add	r1, sp, #4
   11258:	e58d600c 	str	r6, [sp, #12]
   1125c:	e3a00033 	mov	r0, #51	; 0x33
   11260:	e58d6020 	str	r6, [sp, #32]
   11264:	e28d8074 	add	r8, sp, #116	; 0x74
   11268:	e3a06003 	mov	r6, #3
   1126c:	e8810081 	stm	r1, {r0, r7}
   11270:	e3a09008 	mov	r9, #8
   11274:	e3a07001 	mov	r7, #1
   11278:	e28d006c 	add	r0, sp, #108	; 0x6c
   1127c:	e58d8064 	str	r8, [sp, #100]	; 0x64
   11280:	e28d2064 	add	r2, sp, #100	; 0x64
   11284:	e28d1004 	add	r1, sp, #4
   11288:	e8800280 	stm	r0, {r7, r9}
   1128c:	e1a00004 	mov	r0, r4
   11290:	e58d7068 	str	r7, [sp, #104]	; 0x68
   11294:	ebfffcd4 	bl	0x105ec
   11298:	e1b05000 	movs	r5, r0
   1129c:	0a000005 	beq	0x112b8
   112a0:	e2466001 	sub	r6, r6, #1
   112a4:	e3760001 	cmn	r6, #1
   112a8:	05941030 	ldreq	r1, [r4, #48]	; 0x30
   112ac:	028f0f57 	addeq	r0, pc, #348	; 0x11410
   112b0:	1afffff0 	bne	0x11278
   112b4:	eaffffe2 	b	0x11244
   112b8:	e59d0074 	ldr	r0, [sp, #116]	; 0x74
   112bc:	e51f25f0 	ldr	r2, [pc, #-1520]	; 0x10cd4
   112c0:	e6bf0f30 	rev	r0, r0
   112c4:	e5840054 	str	r0, [r4, #84]	; 0x54
   112c8:	e59d1078 	ldr	r1, [sp, #120]	; 0x78
   112cc:	e6bf1f31 	rev	r1, r1
   112d0:	e5841058 	str	r1, [r4, #88]	; 0x58
   112d4:	e7e31c50 	ubfx	r1, r0, #24, #4
   112d8:	e3510000 	cmp	r1, #0
   112dc:	0a000005 	beq	0x112f8
   112e0:	e3510001 	cmp	r1, #1
   112e4:	0282100a 	addeq	r1, r2, #10
   112e8:	0a000004 	beq	0x11300
   112ec:	e3510002 	cmp	r1, #2
   112f0:	051f169c 	ldreq	r1, [pc, #-1692]	; 0x10c5c
   112f4:	0a000001 	beq	0x11300
   112f8:	e5842028 	str	r2, [r4, #40]	; 0x28
   112fc:	ea000000 	b	0x11304
   11300:	e5841028 	str	r1, [r4, #40]	; 0x28
   11304:	e3100701 	tst	r0, #262144	; 0x40000
   11308:	15940048 	ldrne	r0, [r4, #72]	; 0x48
   1130c:	13800c01 	orrne	r0, r0, #256	; 0x100
   11310:	15840048 	strne	r0, [r4, #72]	; 0x48
   11314:	e5940028 	ldr	r0, [r4, #40]	; 0x28
   11318:	e1500002 	cmp	r0, r2
   1131c:	128d7024 	addne	r7, sp, #36	; 0x24
   11320:	13a06004 	movne	r6, #4
   11324:	0a000025 	beq	0x113c0
   11328:	ea00000d 	b	0x11364
   1132c:	e3a02000 	mov	r2, #0
   11330:	e3a03001 	mov	r3, #1
   11334:	e1a01002 	mov	r1, r2
   11338:	e1a00004 	mov	r0, r4
   1133c:	e58d7000 	str	r7, [sp]
   11340:	ebffff8d 	bl	0x1117c
   11344:	e1b05000 	movs	r5, r0
   11348:	15941030 	ldrne	r1, [r4, #48]	; 0x30
   1134c:	128f00dc 	addne	r0, pc, #220	; 0x11430
   11350:	1affffbb 	bne	0x11244
   11354:	e59d0040 	ldr	r0, [sp, #64]	; 0x40
   11358:	e6bf0f30 	rev	r0, r0
   1135c:	e3100802 	tst	r0, #131072	; 0x20000
   11360:	0a000001 	beq	0x1136c
   11364:	e2566001 	subs	r6, r6, #1
   11368:	2affffef 	bcs	0x1132c
   1136c:	e59d0030 	ldr	r0, [sp, #48]	; 0x30
   11370:	e6bf0f30 	rev	r0, r0
   11374:	e2100802 	ands	r0, r0, #131072	; 0x20000
   11378:	0affffb3 	beq	0x1124c
   1137c:	e3a03001 	mov	r3, #1
   11380:	e3a02000 	mov	r2, #0
   11384:	e1a01003 	mov	r1, r3
   11388:	e1a00004 	mov	r0, r4
   1138c:	e58d7000 	str	r7, [sp]
   11390:	ebffff79 	bl	0x1117c
   11394:	e1b05000 	movs	r5, r0
   11398:	15941030 	ldrne	r1, [r4, #48]	; 0x30
   1139c:	128f00bc 	addne	r0, pc, #188	; 0x11460
   113a0:	1affffa7 	bne	0x11244
   113a4:	e59d0034 	ldr	r0, [sp, #52]	; 0x34
   113a8:	e6bf0f30 	rev	r0, r0
   113ac:	e200040f 	and	r0, r0, #251658240	; 0xf000000
   113b0:	e3500401 	cmp	r0, #16777216	; 0x1000000
   113b4:	05940048 	ldreq	r0, [r4, #72]	; 0x48
   113b8:	03800001 	orreq	r0, r0, #1
   113bc:	05840048 	streq	r0, [r4, #72]	; 0x48
   113c0:	e3a00000 	mov	r0, #0
   113c4:	eaffffa0 	b	0x1124c

v113c8:
   113c8:	"[mmc]: mmc %d send ext csd faild\n",0,0,0
v113ec:
   113ec:	"[mmc]: mmc %d Send app cmd failed\n",0,0
v11410:
   11410:	"[mmc]: mmc %d Send scr failed\n",0,0
v11430:
   11430:	"[mmc]: mmc %d Check high speed status faild\n",0,0,0,0
v11460:
   11460:	"[mmc]: mmc %d switch to high speed failed\n",0,0

   1148c:	e590109c 	ldr	r1, [r0, #156]	; 0x9c
   11490:	e12fff11 	bx	r1

f11494:
   11494:	e5902038 	ldr	r2, [r0, #56]	; 0x38
   11498:	e1520001 	cmp	r2, r1
   1149c:	31a01002 	movcc	r1, r2
   114a0:	e5902034 	ldr	r2, [r0, #52]	; 0x34
   114a4:	e1520001 	cmp	r2, r1
   114a8:	81a01002 	movhi	r1, r2
   114ac:	e5801044 	str	r1, [r0, #68]	; 0x44
   114b0:	e590109c 	ldr	r1, [r0, #156]	; 0x9c
   114b4:	e12fff11 	bx	r1

f114b8:
   114b8:	e5801040 	str	r1, [r0, #64]	; 0x40
   114bc:	e590109c 	ldr	r1, [r0, #156]	; 0x9c
   114c0:	e12fff11 	bx	r1

f114c4:
   114c4:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   114c8:	e24ddf8b 	sub	sp, sp, #556	; 0x22c
   114cc:	e1a04000 	mov	r4, r0
   114d0:	e590004c 	ldr	r0, [r0, #76]	; 0x4c
   114d4:	e28d1f82 	add	r1, sp, #520	; 0x208
   114d8:	e3a09000 	mov	r9, #0
   114dc:	e3a0b007 	mov	fp, #7
   114e0:	e3100b01 	tst	r0, #1024	; 0x400
   114e4:	e58d9210 	str	r9, [sp, #528]	; 0x210
   114e8:	13a0000a 	movne	r0, #10
   114ec:	03a00002 	moveq	r0, #2
   114f0:	e58d9224 	str	r9, [sp, #548]	; 0x224
   114f4:	e30063e8 	movw	r6, #1000	; 0x3e8
   114f8:	e8810801 	stm	r1, {r0, fp}
   114fc:	e1a02009 	mov	r2, r9
   11500:	e1a00004 	mov	r0, r4
   11504:	ebfffc38 	bl	0x105ec
   11508:	e1b05000 	movs	r5, r0
   1150c:	15941030 	ldrne	r1, [r4, #48]	; 0x30
   11510:	128f0e2d 	addne	r0, pc, #720	; 0x117e8
   11514:	0a000001 	beq	0x11520
   11518:	eb00125b 	bl	0x15e8c
   1151c:	ea000094 	b	0x11774
   11520:	e28d5f85 	add	r5, sp, #532	; 0x214
   11524:	e3a08015 	mov	r8, #21
   11528:	e895000f 	ldm	r5, {r0, r1, r2, r3}
   1152c:	e284506c 	add	r5, r4, #108	; 0x6c
   11530:	e885000f 	stm	r5, {r0, r1, r2, r3}
   11534:	e594004c 	ldr	r0, [r4, #76]	; 0x4c
   11538:	e3100b01 	tst	r0, #1024	; 0x400
   1153c:	1a000013 	bne	0x11590
   11540:	e3a00003 	mov	r0, #3
   11544:	e58d0208 	str	r0, [sp, #520]	; 0x208
   11548:	e1d407bc 	ldrh	r0, [r4, #124]	; 0x7c
   1154c:	e28d1f82 	add	r1, sp, #520	; 0x208
   11550:	e3a02000 	mov	r2, #0
   11554:	e58d820c 	str	r8, [sp, #524]	; 0x20c
   11558:	e1a00800 	lsl	r0, r0, #16
   1155c:	e58d0210 	str	r0, [sp, #528]	; 0x210
   11560:	e1a00004 	mov	r0, r4
   11564:	e58d9224 	str	r9, [sp, #548]	; 0x224
   11568:	ebfffc1f 	bl	0x105ec
   1156c:	e1b05000 	movs	r5, r0
   11570:	15941030 	ldrne	r1, [r4, #48]	; 0x30
   11574:	128f0e2a 	addne	r0, pc, #672	; 0x1181c
   11578:	1affffe6 	bne	0x11518
   1157c:	e5940028 	ldr	r0, [r4, #40]	; 0x28
   11580:	e3100802 	tst	r0, #131072	; 0x20000
   11584:	159d0214 	ldrne	r0, [sp, #532]	; 0x214
   11588:	11a00820 	lsrne	r0, r0, #16
   1158c:	11c407bc 	strhne	r0, [r4, #124]	; 0x7c
   11590:	e28d1f82 	add	r1, sp, #520	; 0x208
   11594:	e3a00009 	mov	r0, #9
   11598:	e3a02000 	mov	r2, #0
   1159c:	e8810801 	stm	r1, {r0, fp}
   115a0:	e1d407bc 	ldrh	r0, [r4, #124]	; 0x7c
   115a4:	e1a00800 	lsl	r0, r0, #16
   115a8:	e58d0210 	str	r0, [sp, #528]	; 0x210
   115ac:	e1a00004 	mov	r0, r4
   115b0:	e58d9224 	str	r9, [sp, #548]	; 0x224
   115b4:	ebfffc0c 	bl	0x105ec
   115b8:	e1a05000 	mov	r5, r0
   115bc:	e1a01006 	mov	r1, r6
   115c0:	e1a00004 	mov	r0, r4
   115c4:	ebfffc0a 	bl	0x105f4
   115c8:	e3550000 	cmp	r5, #0
   115cc:	15941030 	ldrne	r1, [r4, #48]	; 0x30
   115d0:	128f0f99 	addne	r0, pc, #612	; 0x1183c
   115d4:	1affffcf 	bne	0x11518
   115d8:	e59d0214 	ldr	r0, [sp, #532]	; 0x214
   115dc:	e584005c 	str	r0, [r4, #92]	; 0x5c
   115e0:	e59d1218 	ldr	r1, [sp, #536]	; 0x218
   115e4:	e5841060 	str	r1, [r4, #96]	; 0x60
   115e8:	e59d021c 	ldr	r0, [sp, #540]	; 0x21c
   115ec:	e5840064 	str	r0, [r4, #100]	; 0x64
   115f0:	e59d2220 	ldr	r2, [sp, #544]	; 0x220
   115f4:	e5842068 	str	r2, [r4, #104]	; 0x68
   115f8:	e5942028 	ldr	r2, [r4, #40]	; 0x28
   115fc:	e59f6258 	ldr	r6, [pc, #600]	; 0x1185c
   11600:	e3520801 	cmp	r2, #65536	; 0x10000
   11604:	e286a01e 	add	sl, r6, #30
   11608:	1a000014 	bne	0x11660
   1160c:	e59d2214 	ldr	r2, [sp, #532]	; 0x214
   11610:	e2463010 	sub	r3, r6, #16
   11614:	e7e32d52 	ubfx	r2, r2, #26, #4
   11618:	e3520005 	cmp	r2, #5
   1161c:	308ff102 	addcc	pc, pc, r2, lsl #2
   11620:	ea000004 	b	0x11638
   11624:	ea000003 	b	0x11638
   11628:	ea000004 	b	0x11640
   1162c:	ea000005 	b	0x11648
   11630:	ea000006 	b	0x11650
   11634:	ea000008 	b	0x1165c
   11638:	e5843028 	str	r3, [r4, #40]	; 0x28
   1163c:	ea000007 	b	0x11660
   11640:	e59f2218 	ldr	r2, [pc, #536]	; 0x11860
   11644:	ea000002 	b	0x11654
   11648:	e5846028 	str	r6, [r4, #40]	; 0x28
   1164c:	ea000003 	b	0x11660
   11650:	e59f220c 	ldr	r2, [pc, #524]	; 0x11864
   11654:	e5842028 	str	r2, [r4, #40]	; 0x28
   11658:	ea000000 	b	0x11660
   1165c:	e584a028 	str	sl, [r4, #40]	; 0x28
   11660:	e3a07001 	mov	r7, #1
   11664:	e59d2214 	ldr	r2, [sp, #532]	; 0x214
   11668:	e59f31f8 	ldr	r3, [pc, #504]	; 0x11868
   1166c:	e2022007 	and	r2, r2, #7
   11670:	e59f51f4 	ldr	r5, [pc, #500]	; 0x1186c
   11674:	e7933102 	ldr	r3, [r3, r2, lsl #2]
   11678:	e59d2214 	ldr	r2, [sp, #532]	; 0x214
   1167c:	e7e321d2 	ubfx	r2, r2, #3, #4
   11680:	e7952102 	ldr	r2, [r5, r2, lsl #2]
   11684:	e0020293 	mul	r2, r3, r2
   11688:	e5842080 	str	r2, [r4, #128]	; 0x80
   1168c:	e59d2218 	ldr	r2, [sp, #536]	; 0x218
   11690:	e7e32852 	ubfx	r2, r2, #16, #4
   11694:	e1a05217 	lsl	r5, r7, r2
   11698:	e5845084 	str	r5, [r4, #132]	; 0x84
   1169c:	e5942028 	ldr	r2, [r4, #40]	; 0x28
   116a0:	e3120802 	tst	r2, #131072	; 0x20000
   116a4:	15845088 	strne	r5, [r4, #136]	; 0x88
   116a8:	1a000003 	bne	0x116bc
   116ac:	e59d2220 	ldr	r2, [sp, #544]	; 0x220
   116b0:	e7e32b52 	ubfx	r2, r2, #22, #4
   116b4:	e1a02217 	lsl	r2, r7, r2
   116b8:	e5842088 	str	r2, [r4, #136]	; 0x88
   116bc:	e594203c 	ldr	r2, [r4, #60]	; 0x3c
   116c0:	e3520000 	cmp	r2, #0
   116c4:	e3a02000 	mov	r2, #0
   116c8:	11a01d01 	lslne	r1, r1, #26
   116cc:	11a01521 	lsrne	r1, r1, #10
   116d0:	11811820 	orrne	r1, r1, r0, lsr #16
   116d4:	07df151f 	bfceq	r1, #10, #22
   116d8:	01a01101 	lsleq	r1, r1, #2
   116dc:	01811f20 	orreq	r1, r1, r0, lsr #30
   116e0:	13a00008 	movne	r0, #8
   116e4:	07e207d0 	ubfxeq	r0, r0, #15, #3
   116e8:	e2913001 	adds	r3, r1, #1
   116ec:	e2a21000 	adc	r1, r2, #0
   116f0:	e2902002 	adds	r2, r0, #2
   116f4:	e1a00003 	mov	r0, r3
   116f8:	fa001451 	blx	0x16844
   116fc:	e08c3590 	umull	r3, ip, r0, r5
   11700:	e021c591 	mla	r1, r1, r5, ip
   11704:	e3a02000 	mov	r2, #0
   11708:	e3550c02 	cmp	r5, #512	; 0x200
   1170c:	e0201290 	mla	r0, r0, r2, r1
   11710:	e5840094 	str	r0, [r4, #148]	; 0x94
   11714:	e3000200 	movw	r0, #512	; 0x200
   11718:	e5843090 	str	r3, [r4, #144]	; 0x90
   1171c:	85840084 	strhi	r0, [r4, #132]	; 0x84
   11720:	e5941088 	ldr	r1, [r4, #136]	; 0x88
   11724:	e3510c02 	cmp	r1, #512	; 0x200
   11728:	85840088 	strhi	r0, [r4, #136]	; 0x88
   1172c:	e594004c 	ldr	r0, [r4, #76]	; 0x4c
   11730:	e3100b01 	tst	r0, #1024	; 0x400
   11734:	1a000011 	bne	0x11780
   11738:	e3a0001d 	mov	r0, #29
   1173c:	e58d020c 	str	r0, [sp, #524]	; 0x20c
   11740:	e58db208 	str	fp, [sp, #520]	; 0x208
   11744:	e28d1f82 	add	r1, sp, #520	; 0x208
   11748:	e1d407bc 	ldrh	r0, [r4, #124]	; 0x7c
   1174c:	e3a02000 	mov	r2, #0
   11750:	e1a00800 	lsl	r0, r0, #16
   11754:	e58d0210 	str	r0, [sp, #528]	; 0x210
   11758:	e1a00004 	mov	r0, r4
   1175c:	e58d9224 	str	r9, [sp, #548]	; 0x224
   11760:	ebfffba1 	bl	0x105ec
   11764:	e1b05000 	movs	r5, r0
   11768:	0a000004 	beq	0x11780
   1176c:	e28f00fc 	add	r0, pc, #252	; 0x11870
   11770:	eb0011c5 	bl	0x15e8c
   11774:	e1a00005 	mov	r0, r5
   11778:	e28ddf8b 	add	sp, sp, #556	; 0x22c
   1177c:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   11780:	e584708c 	str	r7, [r4, #140]	; 0x8c
   11784:	e3a000ff 	mov	r0, #255	; 0xff
   11788:	e5c4007e 	strb	r0, [r4, #126]	; 0x7e
   1178c:	e5940028 	ldr	r0, [r4, #40]	; 0x28
   11790:	e59f70f8 	ldr	r7, [pc, #248]	; 0x11890
   11794:	e3100802 	tst	r0, #131072	; 0x20000
   11798:	1a00006e 	bne	0x11958
   1179c:	e15a0000 	cmp	sl, r0
   117a0:	8a00006c 	bhi	0x11958
   117a4:	e28d1008 	add	r1, sp, #8
   117a8:	e1a00004 	mov	r0, r4
   117ac:	ebfffdb1 	bl	0x10e78
   117b0:	e3500000 	cmp	r0, #0
   117b4:	1a000057 	bne	0x11918
   117b8:	e5dd10c8 	ldrb	r1, [sp, #200]	; 0xc8
   117bc:	e3510008 	cmp	r1, #8
   117c0:	308ff101 	addcc	pc, pc, r1, lsl #2
   117c4:	ea000041 	b	0x118d0
   117c8:	ea000031 	b	0x11894
   117cc:	ea000032 	b	0x1189c
   117d0:	ea000033 	b	0x118a4
   117d4:	ea000034 	b	0x118ac
   117d8:	ea00003c 	b	0x118d0
   117dc:	ea000035 	b	0x118b8
   117e0:	ea000036 	b	0x118c0
   117e4:	ea000037 	b	0x118c8

v117e8:
   117e8:	"[mmc]: mmc %d Put the Card in Identify Mode failed\n",0
v1181c:
   1181c:	"[mmc]: mmc %d send rca failed\n",0,0
v1183c:
   1183c:	"[mmc]: mmc %d get csd failed\n",0,0,0
v1185c:
   1185c:	00010022
v11860:
   11860:	00010014
v11864:
   11864:	00010030
v11868:
   11868:	00016b50
v1186c:
   1186c:	00016b60
v11870:
   11870:	"[mmc]: Select the card failed\n",0,0
v11890:
   11890:	00010041
   11894:	e584a028 	str	sl, [r4, #40]	; 0x28
   11898:	ea00000e 	b	0x118d8
   1189c:	e5847028 	str	r7, [r4, #40]	; 0x28
   118a0:	ea00000c 	b	0x118d8
   118a4:	e59f029c 	ldr	r0, [pc, #668]	; 0x11b48
   118a8:	ea000000 	b	0x118b0
   118ac:	e59f0298 	ldr	r0, [pc, #664]	; 0x11b4c
   118b0:	e5840028 	str	r0, [r4, #40]	; 0x28
   118b4:	ea000007 	b	0x118d8
   118b8:	e59f0290 	ldr	r0, [pc, #656]	; 0x11b50
   118bc:	eafffffb 	b	0x118b0
   118c0:	e59f028c 	ldr	r0, [pc, #652]	; 0x11b54
   118c4:	eafffff9 	b	0x118b0
   118c8:	e59f0288 	ldr	r0, [pc, #648]	; 0x11b58
   118cc:	eafffff7 	b	0x118b0
   118d0:	e3500000 	cmp	r0, #0
   118d4:	1a00000f 	bne	0x11918
   118d8:	e5dd00c8 	ldrb	r0, [sp, #200]	; 0xc8
   118dc:	e3500002 	cmp	r0, #2
   118e0:	3a00000c 	bcc	0x11918
   118e4:	e5dd10df 	ldrb	r1, [sp, #223]	; 0xdf
   118e8:	e59d00dc 	ldr	r0, [sp, #220]	; 0xdc
   118ec:	e7df0c11 	bfi	r0, r1, #24, #8
   118f0:	e1a01fc0 	asr	r1, r0, #31
   118f4:	e1a01481 	lsl	r1, r1, #9
   118f8:	e1811ba0 	orr	r1, r1, r0, lsr #23
   118fc:	e1a00480 	lsl	r0, r0, #9
   11900:	e1a03a20 	lsr	r3, r0, #20
   11904:	e1832601 	orr	r2, r3, r1, lsl #12
   11908:	e2722b02 	rsbs	r2, r2, #2048	; 0x800
   1190c:	e1a03a21 	lsr	r3, r1, #20
   11910:	e2f32000 	rscs	r2, r3, #0
   11914:	31c409f0 	strdcc	r0, [r4, #144]	; 0x90
   11918:	e5dd00b7 	ldrb	r0, [sp, #183]	; 0xb7
   1191c:	e3500000 	cmp	r0, #0
   11920:	15dd00e8 	ldrbne	r0, [sp, #232]	; 0xe8
   11924:	11a00980 	lslne	r0, r0, #19
   11928:	1a000005 	bne	0x11944
   1192c:	e5940064 	ldr	r0, [r4, #100]	; 0x64
   11930:	e7e41550 	ubfx	r1, r0, #10, #5
   11934:	e7e402d0 	ubfx	r0, r0, #5, #5
   11938:	e2811001 	add	r1, r1, #1
   1193c:	e2800001 	add	r0, r0, #1
   11940:	e1600081 	smulbb	r0, r1, r0
   11944:	e584008c 	str	r0, [r4, #140]	; 0x8c
   11948:	e5dd00a8 	ldrb	r0, [sp, #168]	; 0xa8
   1194c:	e3100001 	tst	r0, #1
   11950:	15dd00bb 	ldrbne	r0, [sp, #187]	; 0xbb
   11954:	15c4007e 	strbne	r0, [r4, #126]	; 0x7e
   11958:	e1a00004 	mov	r0, r4
   1195c:	e59fa1f8 	ldr	sl, [pc, #504]	; 0x11b5c
   11960:	e1a0100a 	mov	r1, sl
   11964:	ebfffeca 	bl	0x11494
   11968:	e5940028 	ldr	r0, [r4, #40]	; 0x28
   1196c:	e3100802 	tst	r0, #131072	; 0x20000
   11970:	e1a00004 	mov	r0, r4
   11974:	0a000001 	beq	0x11980
   11978:	ebfffe1a 	bl	0x111e8
   1197c:	ea000000 	b	0x11984
   11980:	ebfffd71 	bl	0x10f4c
   11984:	e1b05000 	movs	r5, r0
   11988:	15941030 	ldrne	r1, [r4, #48]	; 0x30
   1198c:	128f0f73 	addne	r0, pc, #460	; 0x11b60
   11990:	1afffee0 	bne	0x11518
   11994:	e1c404d8 	ldrd	r0, [r4, #72]	; 0x48
   11998:	e0000001 	and	r0, r0, r1
   1199c:	e5840048 	str	r0, [r4, #72]	; 0x48
   119a0:	e5941028 	ldr	r1, [r4, #40]	; 0x28
   119a4:	e3110802 	tst	r1, #131072	; 0x20000
   119a8:	0a00002f 	beq	0x11a6c
   119ac:	e3100c01 	tst	r0, #256	; 0x100
   119b0:	0a00001d 	beq	0x11a2c
   119b4:	e28d1f82 	add	r1, sp, #520	; 0x208
   119b8:	e3a00037 	mov	r0, #55	; 0x37
   119bc:	e3a02000 	mov	r2, #0
   119c0:	e8810101 	stm	r1, {r0, r8}
   119c4:	e1d407bc 	ldrh	r0, [r4, #124]	; 0x7c
   119c8:	e1a00800 	lsl	r0, r0, #16
   119cc:	e58d0210 	str	r0, [sp, #528]	; 0x210
   119d0:	e1a00004 	mov	r0, r4
   119d4:	e58d9224 	str	r9, [sp, #548]	; 0x224
   119d8:	ebfffb03 	bl	0x105ec
   119dc:	e1b05000 	movs	r5, r0
   119e0:	159f01a0 	ldrne	r0, [pc, #416]	; 0x11b88
   119e4:	15941030 	ldrne	r1, [r4, #48]	; 0x30
   119e8:	1afffeca 	bne	0x11518
   119ec:	e28d1f82 	add	r1, sp, #520	; 0x208
   119f0:	e3a00006 	mov	r0, #6
   119f4:	e3a02000 	mov	r2, #0
   119f8:	e8810101 	stm	r1, {r0, r8}
   119fc:	e3a00002 	mov	r0, #2
   11a00:	e58d0210 	str	r0, [sp, #528]	; 0x210
   11a04:	e1a00004 	mov	r0, r4
   11a08:	e58d9224 	str	r9, [sp, #548]	; 0x224
   11a0c:	ebfffaf6 	bl	0x105ec
   11a10:	e1b05000 	movs	r5, r0
   11a14:	15941030 	ldrne	r1, [r4, #48]	; 0x30
   11a18:	128f0f5b 	addne	r0, pc, #364	; 0x11b8c
   11a1c:	1afffebd 	bne	0x11518
   11a20:	e3a01004 	mov	r1, #4
   11a24:	e1a00004 	mov	r0, r4
   11a28:	ebfffea2 	bl	0x114b8
   11a2c:	e5940048 	ldr	r0, [r4, #72]	; 0x48
   11a30:	e3100001 	tst	r0, #1
   11a34:	159f1178 	ldrne	r1, [pc, #376]	; 0x11bb4
   11a38:	01a0100a 	moveq	r1, sl
   11a3c:	e1a00004 	mov	r0, r4
   11a40:	ebfffe93 	bl	0x11494
   11a44:	e5942084 	ldr	r2, [r4, #132]	; 0x84
   11a48:	e3a03000 	mov	r3, #0
   11a4c:	e58420ac 	str	r2, [r4, #172]	; 0xac
   11a50:	e1c409d0 	ldrd	r0, [r4, #144]	; 0x90
   11a54:	eb0012ae 	bl	0x16514
   11a58:	e58400a8 	str	r0, [r4, #168]	; 0xa8
   11a5c:	e5940028 	ldr	r0, [r4, #40]	; 0x28
   11a60:	e3100802 	tst	r0, #131072	; 0x20000
   11a64:	0a000023 	beq	0x11af8
   11a68:	ea000097 	b	0x11ccc
   11a6c:	e3100c01 	tst	r0, #256	; 0x100
   11a70:	0a000013 	beq	0x11ac4
   11a74:	e3a03001 	mov	r3, #1
   11a78:	e3a020b7 	mov	r2, #183	; 0xb7
   11a7c:	e1a01003 	mov	r1, r3
   11a80:	e1a00004 	mov	r0, r4
   11a84:	ebfffd14 	bl	0x10edc
   11a88:	e1b05000 	movs	r5, r0
   11a8c:	15941030 	ldrne	r1, [r4, #48]	; 0x30
   11a90:	128f0e12 	addne	r0, pc, #288	; 0x11bb8
   11a94:	03a01004 	moveq	r1, #4
   11a98:	1afffe9e 	bne	0x11518
   11a9c:	e1a00004 	mov	r0, r4
   11aa0:	ebfffe84 	bl	0x114b8
   11aa4:	e5940048 	ldr	r0, [r4, #72]	; 0x48
   11aa8:	e3100001 	tst	r0, #1
   11aac:	059f112c 	ldreq	r1, [pc, #300]	; 0x11be0
   11ab0:	0affffe1 	beq	0x11a3c
   11ab4:	e3100010 	tst	r0, #16
   11ab8:	159f1124 	ldrne	r1, [pc, #292]	; 0x11be4
   11abc:	059f1124 	ldreq	r1, [pc, #292]	; 0x11be8
   11ac0:	eaffffdd 	b	0x11a3c
   11ac4:	e3100c02 	tst	r0, #512	; 0x200
   11ac8:	0afffff5 	beq	0x11aa4
   11acc:	e3a03002 	mov	r3, #2
   11ad0:	e3a020b7 	mov	r2, #183	; 0xb7
   11ad4:	e3a01001 	mov	r1, #1
   11ad8:	e1a00004 	mov	r0, r4
   11adc:	ebfffcfe 	bl	0x10edc
   11ae0:	e1b05000 	movs	r5, r0
   11ae4:	15941030 	ldrne	r1, [r4, #48]	; 0x30
   11ae8:	128f00fc 	addne	r0, pc, #252	; 0x11bec
   11aec:	03a01008 	moveq	r1, #8
   11af0:	1afffe88 	bne	0x11518
   11af4:	eaffffe8 	b	0x11a9c
   11af8:	e2401801 	sub	r1, r0, #65536	; 0x10000
   11afc:	e1500007 	cmp	r0, r7
   11b00:	e2411041 	sub	r1, r1, #65	; 0x41
   11b04:	028f0f42 	addeq	r0, pc, #264	; 0x11c14
   11b08:	0a00006e 	beq	0x11cc8
   11b0c:	ca00005b 	bgt	0x11c80
   11b10:	e2401801 	sub	r1, r0, #65536	; 0x10000
   11b14:	e1500006 	cmp	r0, r6
   11b18:	e2411022 	sub	r1, r1, #34	; 0x22
   11b1c:	028f0f41 	addeq	r0, pc, #260	; 0x11c28
   11b20:	0a000068 	beq	0x11cc8
   11b24:	ca00004e 	bgt	0x11c64
   11b28:	e2400801 	sub	r0, r0, #65536	; 0x10000
   11b2c:	e2500012 	subs	r0, r0, #18
   11b30:	028f0f41 	addeq	r0, pc, #260	; 0x11c3c
   11b34:	0a000063 	beq	0x11cc8
   11b38:	e3500002 	cmp	r0, #2
   11b3c:	028f0f43 	addeq	r0, pc, #268	; 0x11c50
   11b40:	0a000060 	beq	0x11cc8
   11b44:	ea00005e 	b	0x11cc4
v11b48:
   11b48:	00010042 	andeq	r0, r1, r2, asr #32
v11b4c:
   11b4c:	00010043 	andeq	r0, r1, r3, asr #32
v11b50:
   11b50:	00010044 	andeq	r0, r1, r4, asr #32
v11b54:
   11b54:	00010045 	andeq	r0, r1, r5, asr #32
v11b58:
   11b58:	00010050 	andeq	r0, r1, r0, asr r0
v11b5c:
   11b5c:	017d7840 	cmneq	sp, r0, asr #16
v11b60:
   11b60:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   11b64:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
   11b68:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
   11b6c:	68432064 	stmdavs	r3, {r2, r5, r6, sp}^
   11b70:	65676e61 	strbvs	r6, [r7, #-3681]!	; 0xe61
   11b74:	65707320 	ldrbvs	r7, [r0, #-800]!	; 0x320
   11b78:	6d206465 	cfstrsvs	mvf6, [r0, #-404]!	; 0xfffffe6c
   11b7c:	2065646f 	rsbcs	r6, r5, pc, ror #8
   11b80:	6c696166 	stfvse	f6, [r9], #-408	; 0xfffffe68
   11b84:	000a6465 	andeq	r6, sl, r5, ror #8
v11b88:
   11b88:	00010c60 	andeq	r0, r1, r0, ror #24
v11b8c:
   11b8c:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   11b90:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
   11b94:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
   11b98:	64732064 	ldrbtvs	r2, [r3], #-100	; 0x64
   11b9c:	74657320 	strbtvc	r7, [r5], #-800	; 0x320
   11ba0:	73756220 	cmnvc	r5, #32, 4
   11ba4:	64697720 	strbtvs	r7, [r9], #-1824	; 0x720
   11ba8:	66206874 			; <UNDEFINED> instruction: 0x66206874
   11bac:	656c6961 	strbvs	r6, [ip, #-2401]!	; 0x961
   11bb0:	00000a64 	andeq	r0, r0, r4, ror #20
v11bb4:
   11bb4:	02faf080 	rscseq	pc, sl, #128	; 0x10080
v11bb8:
   11bb8:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   11bbc:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
   11bc0:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
   11bc4:	77732064 	ldrbvc	r2, [r3, -r4, rrx]!
   11bc8:	68637469 	stmdavs	r3!, {r0, r3, r5, r6, sl, ip, sp, lr}^
   11bcc:	73756220 	cmnvc	r5, #32, 4
   11bd0:	64697720 	strbtvs	r7, [r9], #-1824	; 0x720
   11bd4:	66206874 			; <UNDEFINED> instruction: 0x66206874
   11bd8:	656c6961 	strbvs	r6, [ip, #-2401]!	; 0x961
   11bdc:	00000a64 	andeq	r0, r0, r4, ror #20
v11be0:
   11be0:	01312d00 	teqeq	r1, r0, lsl #26
v11be4:
   11be4:	03197500 	tsteq	r9, #0, 10
v11be8:
   11be8:	018cba80 	orreq	fp, ip, r0, lsl #21
v11bec:
   11bec:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   11bf0:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
   11bf4:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
   11bf8:	77732064 	ldrbvc	r2, [r3, -r4, rrx]!
   11bfc:	68637469 	stmdavs	r3!, {r0, r3, r5, r6, sl, ip, sp, lr}^
   11c00:	73756220 	cmnvc	r5, #32, 4
   11c04:	64697720 	strbtvs	r7, [r9], #-1824	; 0x720
   11c08:	20386874 	eorscs	r6, r8, r4, ror r8
   11c0c:	6c696166 	stfvse	f6, [r9], #-408	; 0xfffffe68
   11c10:	000a6465 	andeq	r6, sl, r5, ror #8
v11c14:
   11c14:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   11c18:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
   11c1c:	7620434d 	strtvc	r4, [r0], -sp, asr #6
   11c20:	34207265 	strtcc	r7, [r0], #-613	; 0x265
   11c24:	000a312e 	andeq	r3, sl, lr, lsr #2
v11c28:
   11c28:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   11c2c:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
   11c30:	7620434d 	strtvc	r4, [r0], -sp, asr #6
   11c34:	32207265 	eorcc	r7, r0, #1342177286	; 0x50000006
   11c38:	000a322e 	andeq	r3, sl, lr, lsr #4
v11c3c:
   11c3c:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   11c40:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
   11c44:	7620434d 	strtvc	r4, [r0], -sp, asr #6
   11c48:	31207265 	teqcc	r0, r5, ror #4
   11c4c:	000a322e 	andeq	r3, sl, lr, lsr #4
v11c50:
   11c50:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   11c54:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
   11c58:	7620434d 	strtvc	r4, [r0], -sp, asr #6
   11c5c:	31207265 	teqcc	r0, r5, ror #4
   11c60:	000a342e 	andeq	r3, sl, lr, lsr #8
   11c64:	e351000e 	cmp	r1, #14
   11c68:	028f00e0 	addeq	r0, pc, #224	; 0x11d50
   11c6c:	0a000015 	beq	0x11cc8
   11c70:	e351001e 	cmp	r1, #30
   11c74:	028f00e8 	addeq	r0, pc, #232	; 0x11d64
   11c78:	0a000012 	beq	0x11cc8
   11c7c:	ea000010 	b	0x11cc4
   11c80:	e3510003 	cmp	r1, #3
   11c84:	028f00ec 	addeq	r0, pc, #236	; 0x11d78
   11c88:	0a00000e 	beq	0x11cc8
   11c8c:	ca000006 	bgt	0x11cac
   11c90:	e3510001 	cmp	r1, #1
   11c94:	028f00f4 	addeq	r0, pc, #244	; 0x11d90
   11c98:	0a00000a 	beq	0x11cc8
   11c9c:	e3510002 	cmp	r1, #2
   11ca0:	028f00fc 	addeq	r0, pc, #252	; 0x11da4
   11ca4:	0a000007 	beq	0x11cc8
   11ca8:	ea000005 	b	0x11cc4
   11cac:	e3510004 	cmp	r1, #4
   11cb0:	028f0c01 	addeq	r0, pc, #256	; 0x11db8
   11cb4:	0a000003 	beq	0x11cc8
   11cb8:	e351000f 	cmp	r1, #15
   11cbc:	028f0f42 	addeq	r0, pc, #264	; 0x11dcc
   11cc0:	0a000000 	beq	0x11cc8
   11cc4:	e28f0f45 	add	r0, pc, #276	; 0x11de0
   11cc8:	eb00106f 	bl	0x15e8c
   11ccc:	e59400a8 	ldr	r0, [r4, #168]	; 0xa8
   11cd0:	e1a025a0 	lsr	r2, r0, #11
   11cd4:	e5940048 	ldr	r0, [r4, #72]	; 0x48
   11cd8:	e3100c01 	tst	r0, #256	; 0x100
   11cdc:	e28f0f45 	add	r0, pc, #276	; 0x11df8
   11ce0:	13a01004 	movne	r1, #4
   11ce4:	03a01001 	moveq	r1, #1
   11ce8:	eb001067 	bl	0x15e8c
   11cec:	e5940074 	ldr	r0, [r4, #116]	; 0x74
   11cf0:	e5941078 	ldr	r1, [r4, #120]	; 0x78
   11cf4:	e1a00400 	lsl	r0, r0, #8
   11cf8:	e1802c21 	orr	r2, r0, r1, lsr #24
   11cfc:	e594006c 	ldr	r0, [r4, #108]	; 0x6c
   11d00:	e1a01420 	lsr	r1, r0, #8
   11d04:	e28f0f46 	add	r0, pc, #280	; 0x11e24
   11d08:	eb00105f 	bl	0x15e8c
   11d0c:	e5940070 	ldr	r0, [r4, #112]	; 0x70
   11d10:	e20020ff 	and	r2, r0, #255	; 0xff
   11d14:	e7e71450 	ubfx	r1, r0, #8, #8
   11d18:	e88d0006 	stm	sp, {r1, r2}
   11d1c:	e1a02c20 	lsr	r2, r0, #24
   11d20:	e7e73850 	ubfx	r3, r0, #16, #8
   11d24:	e594006c 	ldr	r0, [r4, #108]	; 0x6c
   11d28:	e20010ff 	and	r1, r0, #255	; 0xff
   11d2c:	e28f0e11 	add	r0, pc, #272	; 0x11e44
   11d30:	eb001055 	bl	0x15e8c
   11d34:	e5940074 	ldr	r0, [r4, #116]	; 0x74
   11d38:	e1a01e20 	lsr	r1, r0, #28
   11d3c:	e7e32c50 	ubfx	r2, r0, #24, #4
   11d40:	e28f0f46 	add	r0, pc, #280	; 0x11e60
   11d44:	eb001050 	bl	0x15e8c
   11d48:	e3a00000 	mov	r0, #0
   11d4c:	eafffe89 	b	0x11778
v11d50:
   11d50:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   11d54:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
   11d58:	7620434d 	strtvc	r4, [r0], -sp, asr #6
   11d5c:	33207265 	teqcc	r0, #1342177286	; 0x50000006
   11d60:	000a302e 	andeq	r3, sl, lr, lsr #32
v11d64:
   11d64:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   11d68:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
   11d6c:	7620434d 	strtvc	r4, [r0], -sp, asr #6
   11d70:	34207265 	strtcc	r7, [r0], #-613	; 0x265
   11d74:	000a302e 	andeq	r3, sl, lr, lsr #32
v11d78:
   11d78:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   11d7c:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
   11d80:	7620434d 	strtvc	r4, [r0], -sp, asr #6
   11d84:	34207265 	strtcc	r7, [r0], #-613	; 0x265
   11d88:	0a31342e 	beq	0xc5ee48
   11d8c:	00000000 	andeq	r0, r0, r0
v11d90:
   11d90:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   11d94:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
   11d98:	7620434d 	strtvc	r4, [r0], -sp, asr #6
   11d9c:	34207265 	strtcc	r7, [r0], #-613	; 0x265
   11da0:	000a322e 	andeq	r3, sl, lr, lsr #4
v11da4:
   11da4:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   11da8:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
   11dac:	7620434d 	strtvc	r4, [r0], -sp, asr #6
   11db0:	34207265 	strtcc	r7, [r0], #-613	; 0x265
   11db4:	000a332e 	andeq	r3, sl, lr, lsr #6
v11db8:
   11db8:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   11dbc:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
   11dc0:	7620434d 	strtvc	r4, [r0], -sp, asr #6
   11dc4:	34207265 	strtcc	r7, [r0], #-613	; 0x265
   11dc8:	000a352e 	andeq	r3, sl, lr, lsr #10
v11dcc:
   11dcc:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   11dd0:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
   11dd4:	7620434d 	strtvc	r4, [r0], -sp, asr #6
   11dd8:	35207265 	strcc	r7, [r0, #-613]!	; 0x265
   11ddc:	000a302e 	andeq	r3, sl, lr, lsr #32
v11de0:
   11de0:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   11de4:	55203a5d 	strpl	r3, [r0, #-2653]!	; 0xa5d
   11de8:	6f6e6b6e 	svcvs	0x006e6b6e
   11dec:	4d4d2077 	stclmi	0, cr2, [sp, #-476]	; 0xfffffe24
   11df0:	65762043 	ldrbvs	r2, [r6, #-67]!	; 0x43
   11df4:	00000a72 	andeq	r0, r0, r2, ror sl
v11df8:
   11df8:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   11dfc:	53203a5d 	teqpl	r0, #380928	; 0x5d000
   11e00:	4d4d2f44 	stclmi	15, cr2, [sp, #-272]	; 0xfffffef0
   11e04:	61432043 	cmpvs	r3, r3, asr #32
   11e08:	203a6472 	eorscs	r6, sl, r2, ror r4
   11e0c:	69626425 	stmdbvs	r2!, {r0, r2, r5, sl, sp, lr}^
   11e10:	63202c74 	teqvs	r0, #116, 24	; 0x7400
   11e14:	63617061 	cmnvs	r1, #97	; 0x61
   11e18:	3a797469 	bcc	0x1e6efc4
   11e1c:	4d642520 	cfstr64mi	mvdx2, [r4, #-128]!	; 0xffffff80
   11e20:	00000a42 	andeq	r0, r0, r2, asr #20
v11e24:
   11e24:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   11e28:	76203a5d 			; <UNDEFINED> instruction: 0x76203a5d
   11e2c:	6f646e65 	svcvs	0x00646e65
   11e30:	4d203a72 	vstmdbmi	r0!, {s6-s119}
   11e34:	25206e61 	strcs	r6, [r0, #-3681]!	; 0xe61
   11e38:	6e532078 	mrcvs	0, 2, r2, cr3, cr8, {3}
   11e3c:	78252072 	stmdavc	r5!, {r1, r4, r5, r6, sp}
   11e40:	0000000a 	andeq	r0, r0, sl
v11e44:
   11e44:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   11e48:	70203a5d 	eorvc	r3, r0, sp, asr sl
   11e4c:	75646f72 	strbvc	r6, [r4, #-3954]!	; 0xf72
   11e50:	203a7463 	eorscs	r7, sl, r3, ror #8
   11e54:	63256325 	teqvs	r5, #-1811939328	; 0x94000000
   11e58:	63256325 	teqvs	r5, #-1811939328	; 0x94000000
   11e5c:	000a6325 	andeq	r6, sl, r5, lsr #6
v11e60:
   11e60:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   11e64:	72203a5d 	eorvc	r3, r0, #380928	; 0x5d000
   11e68:	73697665 	cmnvc	r9, #105906176	; 0x6500000
   11e6c:	3a6e6f69 	bcc	0x1badc18
   11e70:	2e642520 	cdpcs	5, 6, cr2, cr4, cr0, {1}
   11e74:	000a6425 	andeq	r6, sl, r5, lsr #8

f11e78:
   11e78:	e92d4030 	push	{r4, r5, lr}
   11e7c:	e24dd024 	sub	sp, sp, #36	; 0x24
   11e80:	e1a04000 	mov	r4, r0
   11e84:	e3a00008 	mov	r0, #8
   11e88:	e59f115c 	ldr	r1, [pc, #348]	; 0x11fec
   11e8c:	e58d0000 	str	r0, [sp]
   11e90:	e5940024 	ldr	r0, [r4, #36]	; 0x24
   11e94:	e0100001 	ands	r0, r0, r1
   11e98:	e3a010aa 	mov	r1, #170	; 0xaa
   11e9c:	13a00001 	movne	r0, #1
   11ea0:	e1810400 	orr	r0, r1, r0, lsl #8
   11ea4:	e58d0008 	str	r0, [sp, #8]
   11ea8:	e3a00015 	mov	r0, #21
   11eac:	e58d0004 	str	r0, [sp, #4]
   11eb0:	e3a00000 	mov	r0, #0
   11eb4:	e1a0100d 	mov	r1, sp
   11eb8:	e1a02000 	mov	r2, r0
   11ebc:	e58d001c 	str	r0, [sp, #28]
   11ec0:	e1a00004 	mov	r0, r4
   11ec4:	ebfff9c8 	bl	0x105ec
   11ec8:	e1b05000 	movs	r5, r0
   11ecc:	0a000005 	beq	0x11ee8
   11ed0:	e5941030 	ldr	r1, [r4, #48]	; 0x30
   11ed4:	e28f0f45 	add	r0, pc, #276	; 0x11ff0
   11ed8:	eb000feb 	bl	0x15e8c
   11edc:	e1a00005 	mov	r0, r5
   11ee0:	e28dd024 	add	sp, sp, #36	; 0x24
   11ee4:	e8bd8030 	pop	{r4, r5, pc}
   11ee8:	e59d000c 	ldr	r0, [sp, #12]
   11eec:	e20000ff 	and	r0, r0, #255	; 0xff
   11ef0:	e35000aa 	cmp	r0, #170	; 0xaa
   11ef4:	059f0118 	ldreq	r0, [pc, #280]	; 0x12014
   11ef8:	13e00010 	mvnne	r0, #16
   11efc:	05840028 	streq	r0, [r4, #40]	; 0x28
   11f00:	03a00000 	moveq	r0, #0
   11f04:	eafffff5 	b	0x11ee0
   11f08:	e92d4070 	push	{r4, r5, r6, lr}
   11f0c:	e1a04000 	mov	r4, r0
   11f10:	e590002c 	ldr	r0, [r0, #44]	; 0x2c
   11f14:	e3500000 	cmp	r0, #0
   11f18:	0a000004 	beq	0x11f30
   11f1c:	e5941030 	ldr	r1, [r4, #48]	; 0x30
   11f20:	e28f00f0 	add	r0, pc, #240	; 0x12018
   11f24:	eb000fd8 	bl	0x15e8c
   11f28:	e3a00000 	mov	r0, #0
   11f2c:	e8bd8070 	pop	{r4, r5, r6, pc}
   11f30:	e59410a0 	ldr	r1, [r4, #160]	; 0xa0
   11f34:	e1a00004 	mov	r0, r4
   11f38:	e12fff31 	blx	r1
   11f3c:	e1b05000 	movs	r5, r0
   11f40:	15941030 	ldrne	r1, [r4, #48]	; 0x30
   11f44:	128f00e4 	addne	r0, pc, #228	; 0x12030
   11f48:	1a00000b 	bne	0x11f7c
   11f4c:	e3a01001 	mov	r1, #1
   11f50:	e1a00004 	mov	r0, r4
   11f54:	ebfffd57 	bl	0x114b8
   11f58:	e3a01001 	mov	r1, #1
   11f5c:	e1a00004 	mov	r0, r4
   11f60:	ebfffd4b 	bl	0x11494
   11f64:	e1a00004 	mov	r0, r4
   11f68:	ebfffab4 	bl	0x10a40
   11f6c:	e1b05000 	movs	r5, r0
   11f70:	15941030 	ldrne	r1, [r4, #48]	; 0x30
   11f74:	128f00d4 	addne	r0, pc, #212	; 0x12050
   11f78:	0a000001 	beq	0x11f84
   11f7c:	eb000fc2 	bl	0x15e8c
   11f80:	ea00006b 	b	0x12134
   11f84:	e3a06000 	mov	r6, #0
   11f88:	e5c4607f 	strb	r6, [r4, #127]	; 0x7f
   11f8c:	e5941030 	ldr	r1, [r4, #48]	; 0x30
   11f90:	e28f00dc 	add	r0, pc, #220	; 0x12074
   11f94:	eb000fbc 	bl	0x15e8c
   11f98:	e1a00004 	mov	r0, r4
   11f9c:	ebffffb5 	bl	0x11e78
   11fa0:	e1a00004 	mov	r0, r4
   11fa4:	ebfffabf 	bl	0x10aa8
   11fa8:	e3500000 	cmp	r0, #0
   11fac:	0a000058 	beq	0x12114
   11fb0:	e5941030 	ldr	r1, [r4, #48]	; 0x30
   11fb4:	e28f00d8 	add	r0, pc, #216	; 0x12094
   11fb8:	eb000fb3 	bl	0x15e8c
   11fbc:	e1a00004 	mov	r0, r4
   11fc0:	ebfffb54 	bl	0x10d18
   11fc4:	e3500000 	cmp	r0, #0
   11fc8:	0a000051 	beq	0x12114
   11fcc:	e5941030 	ldr	r1, [r4, #48]	; 0x30
   11fd0:	e28f00dc 	add	r0, pc, #220	; 0x120b4
   11fd4:	eb000fac 	bl	0x15e8c
   11fd8:	e5941030 	ldr	r1, [r4, #48]	; 0x30
   11fdc:	e28f0f42 	add	r0, pc, #264	; 0x120ec
   11fe0:	eb000fa9 	bl	0x15e8c
   11fe4:	e3e00010 	mvn	r0, #16
   11fe8:	e8bd8070 	pop	{r4, r5, r6, pc}
v11fec:
   11fec:	00ff8000 	rscseq	r8, pc, r0
v11ff0:
   11ff0:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   11ff4:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
   11ff8:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
   11ffc:	65732064 	ldrbvs	r2, [r3, #-100]!	; 0x64
   12000:	6920646e 	stmdbvs	r0!, {r1, r2, r3, r5, r6, sl, sp, lr}
   12004:	6f632066 	svcvs	0x00632066
   12008:	6620646e 	strtvs	r6, [r0], -lr, ror #8
   1200c:	656c6961 	strbvs	r6, [ip, #-2401]!	; 0x961
   12010:	00000a64 	andeq	r0, r0, r4, ror #20
v12014:
   12014:	00020020 	andeq	r0, r2, r0, lsr #32
v12018:
   12018:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   1201c:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
   12020:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
   12024:	61482064 	cmpvs	r8, r4, rrx
   12028:	6e692073 	mcrvs	0, 3, r2, cr9, cr3, {3}
   1202c:	000a7469 	andeq	r7, sl, r9, ror #8
v12030:
   12030:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   12034:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
   12038:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
   1203c:	6f682064 	svcvs	0x00682064
   12040:	69207473 	stmdbvs	r0!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}
   12044:	2074696e 	rsbscs	r6, r4, lr, ror #18
   12048:	6c696166 	stfvse	f6, [r9], #-408	; 0xfffffe68
   1204c:	000a6465 	andeq	r6, sl, r5, ror #8
v12050:
   12050:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   12054:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
   12058:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
   1205c:	65722064 	ldrbvs	r2, [r2, #-100]!	; 0x64
   12060:	20746573 	rsbscs	r6, r4, r3, ror r5
   12064:	64726163 	ldrbtvs	r6, [r2], #-355	; 0x163
   12068:	69616620 	stmdbvs	r1!, {r5, r9, sl, sp, lr}^
   1206c:	0a64656c 	beq	0x192b624
   12070:	00000000 	andeq	r0, r0, r0
v12074:
   12074:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   12078:	2a203a5d 	bcs	0x8209f4
   1207c:	72542a2a 	subsvc	r2, r4, #172032	; 0x2a000
   12080:	44532079 	ldrbmi	r2, [r3], #-121	; 0x79
   12084:	72616320 	rsbvc	r6, r1, #32, 6	; 0x80000000
   12088:	64252064 	strtvs	r2, [r5], #-100	; 0x64
   1208c:	0a2a2a2a 	beq	0xa9c93c
   12090:	00000000 	andeq	r0, r0, r0
v12094:
   12094:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   12098:	2a203a5d 	bcs	0x820a14
   1209c:	72542a2a 	subsvc	r2, r4, #172032	; 0x2a000
   120a0:	4d4d2079 	stclmi	0, cr2, [sp, #-484]	; 0xfffffe1c
   120a4:	61632043 	cmnvs	r3, r3, asr #32
   120a8:	25206472 	strcs	r6, [r0, #-1138]!	; 0x472
   120ac:	2a2a2a64 	bcs	0xa9ca44
   120b0:	0000000a 	andeq	r0, r0, sl
v120b4:
   120b4:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   120b8:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
   120bc:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
   120c0:	61432064 	cmpvs	r3, r4, rrx
   120c4:	64206472 	strtvs	r6, [r0], #-1138	; 0x472
   120c8:	6e206469 	cdpvs	4, 2, cr6, cr0, cr9, {3}
   120cc:	7220746f 	eorvc	r7, r0, #1862270976	; 0x6f000000
   120d0:	6f707365 	svcvs	0x00707365
   120d4:	7420646e 	strtvc	r6, [r0], #-1134	; 0x46e
   120d8:	6f76206f 	svcvs	0x0076206f
   120dc:	6761746c 	strbvs	r7, [r1, -ip, ror #8]!
   120e0:	65732065 	ldrbvs	r2, [r3, #-101]!	; 0x65
   120e4:	7463656c 	strbtvc	r6, [r3], #-1388	; 0x56c
   120e8:	00000a21 	andeq	r0, r0, r1, lsr #20
v120ec:
   120ec:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   120f0:	2a203a5d 	bcs	0x820a6c
   120f4:	44532a2a 	ldrbmi	r2, [r3], #-2602	; 0xa2a
   120f8:	434d4d2f 	movtmi	r4, #56623	; 0xdd2f
   120fc:	20642520 	rsbcs	r2, r4, r0, lsr #10
   12100:	74696e69 	strbtvc	r6, [r9], #-3689	; 0xe69
   12104:	72726520 	rsbsvc	r6, r2, #32, 10	; 0x8000000
   12108:	2121726f 	teqcs	r1, pc, ror #4
   1210c:	2a2a2a21 	bcs	0xa9c998
   12110:	0000000a 	andeq	r0, r0, sl
   12114:	e1a00004 	mov	r0, r4
   12118:	ebfffce9 	bl	0x114c4
   1211c:	e1b05000 	movs	r5, r0
   12120:	0a000005 	beq	0x1213c
   12124:	e5941030 	ldr	r1, [r4, #48]	; 0x30
   12128:	e24f0044 	sub	r0, pc, #68	; 0x12174
   1212c:	eb000f56 	bl	0x15e8c
   12130:	e584602c 	str	r6, [r4, #44]	; 0x2c
   12134:	e1a00005 	mov	r0, r5
   12138:	e8bd8070 	pop	{r4, r5, r6, pc}
   1213c:	e3a00001 	mov	r0, #1
   12140:	e584002c 	str	r0, [r4, #44]	; 0x2c
   12144:	e5941030 	ldr	r1, [r4, #48]	; 0x30
   12148:	e28f0038 	add	r0, pc, #56	; 0x12188
   1214c:	eaffff8a 	b	0x11f7c

f12150:
   12150:	e1a02000 	mov	r2, r0
   12154:	e1a00001 	mov	r0, r1
   12158:	e59f104c 	ldr	r1, [pc, #76]	; 0x121ac
   1215c:	e7810102 	str	r0, [r1, r2, lsl #2]
   12160:	e59010a4 	ldr	r1, [r0, #164]	; 0xa4
   12164:	e3510000 	cmp	r1, #0
   12168:	030f1fff 	movweq	r1, #65535	; 0xffff
   1216c:	058010a4 	streq	r1, [r0, #164]	; 0xa4
   12170:	eaffff64 	b	0x11f08

f12174:
   12174:	e59f2030 	ldr	r2, [pc, #48]	; 0x121ac
   12178:	e3a01000 	mov	r1, #0
   1217c:	e7821100 	str	r1, [r2, r0, lsl #2]
   12180:	e1a00001 	mov	r0, r1
   12184:	e12fff1e 	bx	lr
v12188:
   12188:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   1218c:	2a203a5d 	bcs	0x820b08
   12190:	44532a2a 	ldrbmi	r2, [r3], #-2602	; 0xa2a
   12194:	434d4d2f 	movtmi	r4, #56623	; 0xdd2f
   12198:	20642520 	rsbcs	r2, r4, r0, lsr #10
   1219c:	74696e69 	strbtvc	r6, [r9], #-3689	; 0xe69
   121a0:	214b4f20 	cmpcs	fp, r0, lsr #30
   121a4:	2a2a2121 	bcs	0xa9a630
   121a8:	00000a2a 	andeq	r0, r0, sl, lsr #20
v121ac:
   121ac:	00016c0c 	andeq	r6, r1, ip, lsl #24

f121b0:
   121b0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   121b4:	e59f230c 	ldr	r2, [pc, #780]	; 0x124c8
   121b8:	e0801100 	add	r1, r0, r0, lsl #2
   121bc:	e59f7308 	ldr	r7, [pc, #776]	; 0x124cc
   121c0:	e3500000 	cmp	r0, #0
   121c4:	e0824181 	add	r4, r2, r1, lsl #3
   121c8:	13a02001 	movne	r2, #1
   121cc:	12870f5e 	addne	r0, r7, #376	; 0x178
   121d0:	13a01008 	movne	r1, #8
   121d4:	0a000013 	beq	0x12228
   121d8:	eb001010 	bl	0x16220
   121dc:	e5940010 	ldr	r0, [r4, #16]
   121e0:	e5901000 	ldr	r1, [r0]
   121e4:	e3811c01 	orr	r1, r1, #256	; 0x100
   121e8:	e5801000 	str	r1, [r0]
   121ec:	e594000c 	ldr	r0, [r4, #12]
   121f0:	e5901000 	ldr	r1, [r0]
   121f4:	e3811c01 	orr	r1, r1, #256	; 0x100
   121f8:	e5801000 	str	r1, [r0]
   121fc:	e594001c 	ldr	r0, [r4, #28]
   12200:	e5901000 	ldr	r1, [r0]
   12204:	e3811805 	orr	r1, r1, #327680	; 0x50000
   12208:	e5801000 	str	r1, [r0]
   1220c:	e5941014 	ldr	r1, [r4, #20]
   12210:	e3a00102 	mov	r0, #-2147483648	; 0x80000000
   12214:	e5810000 	str	r0, [r1]
   12218:	e59f02b0 	ldr	r0, [pc, #688]	; 0x124d0
   1221c:	e5840008 	str	r0, [r4, #8]
   12220:	e3a00000 	mov	r0, #0
   12224:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
   12228:	e59f12a8 	ldr	r1, [pc, #680]	; 0x124d8
   1222c:	e59f02a0 	ldr	r0, [pc, #672]	; 0x124d4
   12230:	e5810000 	str	r0, [r1]
   12234:	e281101c 	add	r1, r1, #28
   12238:	e3000555 	movw	r0, #1365	; 0x555
   1223c:	e5810000 	str	r0, [r1]
   12240:	e241500c 	sub	r5, r1, #12
   12244:	e3a0603f 	mov	r6, #63	; 0x3f
   12248:	e5856000 	str	r6, [r5]
   1224c:	e3a00005 	mov	r0, #5
   12250:	eb000575 	bl	0x1382c
   12254:	e3a00000 	mov	r0, #0
   12258:	e5850000 	str	r0, [r5]
   1225c:	e3a00005 	mov	r0, #5
   12260:	eb000571 	bl	0x1382c
   12264:	e5856000 	str	r6, [r5]
   12268:	e3a00005 	mov	r0, #5
   1226c:	eb00056e 	bl	0x1382c
   12270:	e2851e25 	add	r1, r5, #592	; 0x250
   12274:	e3a0000a 	mov	r0, #10
   12278:	e5810000 	str	r0, [r1]
   1227c:	e28700f8 	add	r0, r7, #248	; 0xf8
   12280:	e3a02001 	mov	r2, #1
   12284:	e3a01008 	mov	r1, #8
   12288:	eaffffd2 	b	0x121d8

f1228c:
   1228c:	e92d4010 	push	{r4, lr}
   12290:	e5902020 	ldr	r2, [r0, #32]
   12294:	e59f0240 	ldr	r0, [pc, #576]	; 0x124dc
   12298:	e59f1240 	ldr	r1, [pc, #576]	; 0x124e0
   1229c:	e5923000 	ldr	r3, [r2]
   122a0:	e5831018 	str	r1, [r3, #24]
   122a4:	e5921000 	ldr	r1, [r2]
   122a8:	e5913018 	ldr	r3, [r1, #24]
   122ac:	e3130102 	tst	r3, #-2147483648	; 0x80000000
   122b0:	0a000002 	beq	0x122c0
   122b4:	e2500001 	subs	r0, r0, #1
   122b8:	2afffffa 	bcs	0x122a8
   122bc:	ea000004 	b	0x122d4
   122c0:	e3500000 	cmp	r0, #0
   122c4:	a5910038 	ldrge	r0, [r1, #56]	; 0x38
   122c8:	a5810038 	strge	r0, [r1, #56]	; 0x38
   122cc:	a3a00000 	movge	r0, #0
   122d0:	a8bd8010 	popge	{r4, pc}
   122d4:	e5921004 	ldr	r1, [r2, #4]
   122d8:	e28f0f81 	add	r0, pc, #516	; 0x124e4
   122dc:	eb000eea 	bl	0x15e8c
   122e0:	e3e00000 	mvn	r0, #0
   122e4:	e8bd8010 	pop	{r4, pc}
   122e8:	e92d4070 	push	{r4, r5, r6, lr}
   122ec:	e5901044 	ldr	r1, [r0, #68]	; 0x44
   122f0:	e1a05000 	mov	r5, r0
   122f4:	e5904020 	ldr	r4, [r0, #32]
   122f8:	e3a06001 	mov	r6, #1
   122fc:	e3510000 	cmp	r1, #0
   12300:	0a000006 	beq	0x12320
   12304:	eb000201 	bl	0x12b10
   12308:	e3500000 	cmp	r0, #0
   1230c:	0a000003 	beq	0x12320
   12310:	e28f0e1f 	add	r0, pc, #496	; 0x12508
   12314:	eb000edc 	bl	0x15e8c
   12318:	e5846020 	str	r6, [r4, #32]
   1231c:	e8bd8070 	pop	{r4, r5, r6, pc}
   12320:	e5950040 	ldr	r0, [r5, #64]	; 0x40
   12324:	e3500008 	cmp	r0, #8
   12328:	03a00002 	moveq	r0, #2
   1232c:	0a000004 	beq	0x12344
   12330:	e3500004 	cmp	r0, #4
   12334:	05940000 	ldreq	r0, [r4]
   12338:	0580600c 	streq	r6, [r0, #12]
   1233c:	13a00000 	movne	r0, #0
   12340:	08bd8070 	popeq	{r4, r5, r6, pc}
   12344:	e5941000 	ldr	r1, [r4]
   12348:	e581000c 	str	r0, [r1, #12]
   1234c:	e8bd8070 	pop	{r4, r5, r6, pc}
   12350:	e92d4070 	push	{r4, r5, r6, lr}
   12354:	e5904020 	ldr	r4, [r0, #32]
   12358:	e3a00007 	mov	r0, #7
   1235c:	e5941000 	ldr	r1, [r4]
   12360:	e5810000 	str	r0, [r1]
   12364:	e5940000 	ldr	r0, [r4]
   12368:	e5901000 	ldr	r1, [r0]
   1236c:	e3110007 	tst	r1, #7
   12370:	1afffffc 	bne	0x12368
   12374:	e3a05001 	mov	r5, #1
   12378:	e5805078 	str	r5, [r0, #120]	; 0x78
   1237c:	e5941000 	ldr	r1, [r4]
   12380:	e3a00000 	mov	r0, #0
   12384:	e5810078 	str	r0, [r1, #120]	; 0x78
   12388:	e1a00005 	mov	r0, r5
   1238c:	eb000526 	bl	0x1382c
   12390:	e5940000 	ldr	r0, [r4]
   12394:	e5805078 	str	r5, [r0, #120]	; 0x78
   12398:	e3a00000 	mov	r0, #0
   1239c:	e8bd8070 	pop	{r4, r5, r6, pc}

f123a0:
   123a0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   123a4:	e2812008 	add	r2, r1, #8
   123a8:	e5907020 	ldr	r7, [r0, #32]
   123ac:	e591e000 	ldr	lr, [r1]
   123b0:	e8920005 	ldm	r2, {r0, r2}
   123b4:	e5973024 	ldr	r3, [r7, #36]	; 0x24
   123b8:	e00c0092 	mul	ip, r2, r0
   123bc:	e3a02000 	mov	r2, #0
   123c0:	e3a00000 	mov	r0, #0
   123c4:	e1a06002 	mov	r6, r2
   123c8:	e1a057ac 	lsr	r5, ip, #15
   123cc:	e7dfc79f 	bfc	ip, #15, #17
   123d0:	e35c0000 	cmp	ip, #0
   123d4:	12855001 	addne	r5, r5, #1
   123d8:	0308c000 	movweq	ip, #32768	; 0x8000
   123dc:	ea00001e 	b	0x1245c
   123e0:	e0834200 	add	r4, r3, r0, lsl #4
   123e4:	e3a0814a 	mov	r8, #-2147483630	; 0x80000012
   123e8:	e3550001 	cmp	r5, #1
   123ec:	e5846000 	str	r6, [r4]
   123f0:	e5846004 	str	r6, [r4, #4]
   123f4:	e5846008 	str	r6, [r4, #8]
   123f8:	e584600c 	str	r6, [r4, #12]
   123fc:	e7838200 	str	r8, [r3, r0, lsl #4]
   12400:	9a000004 	bls	0x12418
   12404:	e2458001 	sub	r8, r5, #1
   12408:	e1520008 	cmp	r2, r8
   1240c:	13088000 	movwne	r8, #32768	; 0x8000
   12410:	11c480b4 	strhne	r8, [r4, #4]
   12414:	1a000000 	bne	0x1241c

f12418:
   12418:	e1c4c0b4 	strh	ip, [r4, #4]
   1241c:	e3520000 	cmp	r2, #0
   12420:	e08e8782 	add	r8, lr, r2, lsl #15
   12424:	e5848008 	str	r8, [r4, #8]
   12428:	03a0816a 	moveq	r8, #-2147483622	; 0x8000001a
   1242c:	07838200 	streq	r8, [r3, r0, lsl #4]
   12430:	e2458001 	sub	r8, r5, #1
   12434:	e1520008 	cmp	r2, r8
   12438:	12848010 	addne	r8, r4, #16
   1243c:	1584800c 	strne	r8, [r4, #12]
   12440:	1a000003 	bne	0x12454
   12444:	e7934200 	ldr	r4, [r3, r0, lsl #4]
   12448:	e3c44002 	bic	r4, r4, #2
   1244c:	e3844024 	orr	r4, r4, #36	; 0x24
   12450:	e7834200 	str	r4, [r3, r0, lsl #4]
   12454:	e2822001 	add	r2, r2, #1
   12458:	e2800001 	add	r0, r0, #1
   1245c:	e1550002 	cmp	r5, r2
   12460:	8affffde 	bhi	0x123e0
   12464:	e5970000 	ldr	r0, [r7]
   12468:	e5902000 	ldr	r2, [r0]
   1246c:	e3822024 	orr	r2, r2, #36	; 0x24
   12470:	e5802000 	str	r2, [r0]
   12474:	e5972000 	ldr	r2, [r7]
   12478:	e3a00001 	mov	r0, #1
   1247c:	e5820080 	str	r0, [r2, #128]	; 0x80
   12480:	e3a00082 	mov	r0, #130	; 0x82
   12484:	e5972000 	ldr	r2, [r7]
   12488:	e5820080 	str	r0, [r2, #128]	; 0x80
   1248c:	e5972000 	ldr	r2, [r7]
   12490:	e592008c 	ldr	r0, [r2, #140]	; 0x8c
   12494:	e5911004 	ldr	r1, [r1, #4]
   12498:	e3c00003 	bic	r0, r0, #3
   1249c:	e3110002 	tst	r1, #2
   124a0:	13800001 	orrne	r0, r0, #1
   124a4:	03800002 	orreq	r0, r0, #2
   124a8:	e582008c 	str	r0, [r2, #140]	; 0x8c
   124ac:	e5970000 	ldr	r0, [r7]
   124b0:	e5803084 	str	r3, [r0, #132]	; 0x84
   124b4:	e5971000 	ldr	r1, [r7]
   124b8:	e59f0068 	ldr	r0, [pc, #104]	; 0x12528
   124bc:	e5810040 	str	r0, [r1, #64]	; 0x40
   124c0:	e3a00000 	mov	r0, #0
   124c4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
v124c8:
   124c8:	00016ee0 	andeq	r6, r1, r0, ror #29
v124cc:
   124cc:	00010000 	andeq	r0, r1, r0
v124d0:
   124d0:	016e3600 	cmneq	lr, r0, lsl #12
v124d4:
   124d4:	00111111 	andseq	r1, r1, r1, lsl r1
v124d8:
   124d8:	060008b4 			; <UNDEFINED> instruction: 0x060008b4
v124dc:
   124dc:	000fffff 	strdeq	pc, [pc], -pc	; <UNPREDICTABLE>
v124e0:
   124e0:	80202000 	eorhi	r2, r0, r0
v124e4:
   124e4:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   124e8:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
   124ec:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
   124f0:	70752064 	rsbsvc	r2, r5, r4, rrx
   124f4:	65746164 	ldrbvs	r6, [r4, #-356]!	; 0x164
   124f8:	6b6c6320 	blvs	0x1b2b180
   124fc:	69616620 	stmdbvs	r1!, {r5, r9, sl, sp, lr}^
   12500:	0a64656c 	beq	0x192bab8
   12504:	00000000 	andeq	r0, r0, r0
v12508:
   12508:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   1250c:	2a203a5d 	bcs	0x820e88
   12510:	75202a2a 	strvc	r2, [r0, #-2602]!	; 0xa2a
   12514:	74616470 	strbtvc	r6, [r1], #-1136	; 0x470
   12518:	6c632065 	stclvs	0, cr2, [r3], #-404	; 0xfffffe6c
   1251c:	206b636f 	rsbcs	r6, fp, pc, ror #6
   12520:	6c696166 	stfvse	f6, [r9], #-408	; 0xfffffe68
   12524:	000a6465 	andeq	r6, sl, r5, ror #8
v12528:
   12528:	20070008 	andcs	r0, r7, r8
   1252c:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   12530:	e3a06000 	mov	r6, #0
   12534:	e1a07001 	mov	r7, r1
   12538:	e3a05102 	mov	r5, #-2147483648	; 0x80000000
   1253c:	e1a08002 	mov	r8, r2
   12540:	e59d0000 	ldr	r0, [sp]
   12544:	e1a09006 	mov	r9, r6
   12548:	e1a0a006 	mov	sl, r6
   1254c:	e5904020 	ldr	r4, [r0, #32]
   12550:	e5940020 	ldr	r0, [r4, #32]
   12554:	e3500000 	cmp	r0, #0
   12558:	0a000003 	beq	0x1256c
   1255c:	e5941004 	ldr	r1, [r4, #4]
   12560:	e28f0fc2 	add	r0, pc, #776	; 0x12870
   12564:	eb000e48 	bl	0x15e8c
   12568:	ea0000be 	b	0x12868
   1256c:	e5970000 	ldr	r0, [r7]
   12570:	e350000c 	cmp	r0, #12
   12574:	0a0000fe 	beq	0x12974
   12578:	e3500000 	cmp	r0, #0
   1257c:	e5970004 	ldr	r0, [r7, #4]
   12580:	059f5318 	ldreq	r5, [pc, #792]	; 0x128a0
   12584:	e3100001 	tst	r0, #1
   12588:	13855040 	orrne	r5, r5, #64	; 0x40
   1258c:	e3100002 	tst	r0, #2
   12590:	13855080 	orrne	r5, r5, #128	; 0x80
   12594:	e3100004 	tst	r0, #4
   12598:	13855c01 	orrne	r5, r5, #256	; 0x100
   1259c:	e3580000 	cmp	r8, #0
   125a0:	0a000015 	beq	0x125fc
   125a4:	e5980000 	ldr	r0, [r8]
   125a8:	e3100003 	tst	r0, #3
   125ac:	0a000004 	beq	0x125c4
   125b0:	e5941004 	ldr	r1, [r4, #4]
   125b4:	e28f0fba 	add	r0, pc, #744	; 0x128a4
   125b8:	eb000e33 	bl	0x15e8c
   125bc:	e3e06000 	mvn	r6, #0
   125c0:	ea000095 	b	0x1281c
   125c4:	e5980004 	ldr	r0, [r8, #4]
   125c8:	e3855c22 	orr	r5, r5, #8704	; 0x2200
   125cc:	e5941000 	ldr	r1, [r4]
   125d0:	e3100002 	tst	r0, #2
   125d4:	e5980008 	ldr	r0, [r8, #8]
   125d8:	13855b01 	orrne	r5, r5, #1024	; 0x400
   125dc:	e3500001 	cmp	r0, #1
   125e0:	e598000c 	ldr	r0, [r8, #12]
   125e4:	83855a01 	orrhi	r5, r5, #4096	; 0x1000
   125e8:	e5810010 	str	r0, [r1, #16]
   125ec:	e1c800d8 	ldrd	r0, [r8, #8]
   125f0:	e0000190 	mul	r0, r0, r1
   125f4:	e5941000 	ldr	r1, [r4]
   125f8:	e5810014 	str	r0, [r1, #20]
   125fc:	e5941000 	ldr	r1, [r4]
   12600:	e5970008 	ldr	r0, [r7, #8]
   12604:	e581001c 	str	r0, [r1, #28]
   12608:	e3580000 	cmp	r8, #0
   1260c:	e30bbbc2 	movw	fp, #48066	; 0xbbc2
   12610:	0a000010 	beq	0x12658
   12614:	e1c800d8 	ldrd	r0, [r8, #8]
   12618:	e00a0091 	mul	sl, r1, r0
   1261c:	e35a0c02 	cmp	sl, #512	; 0x200
   12620:	9a000011 	bls	0x1266c
   12624:	e5940000 	ldr	r0, [r4]
   12628:	e3a09001 	mov	r9, #1
   1262c:	e5901000 	ldr	r1, [r0]
   12630:	e3c11102 	bic	r1, r1, #-2147483648	; 0x80000000
   12634:	e5801000 	str	r1, [r0]
   12638:	e59d0000 	ldr	r0, [sp]
   1263c:	e1a01002 	mov	r1, r2
   12640:	ebffff56 	bl	0x123a0
   12644:	e5942000 	ldr	r2, [r4]
   12648:	e5971000 	ldr	r1, [r7]
   1264c:	e1811005 	orr	r1, r1, r5
   12650:	e5821018 	str	r1, [r2, #24]
   12654:	ea00000f 	b	0x12698
   12658:	e5941000 	ldr	r1, [r4]
   1265c:	e5970000 	ldr	r0, [r7]
   12660:	e1800005 	orr	r0, r0, r5
   12664:	e5810018 	str	r0, [r1, #24]
   12668:	ea000014 	b	0x126c0

f1266c:
   1266c:	e5940000 	ldr	r0, [r4]
   12670:	e5901000 	ldr	r1, [r0]
   12674:	e3811102 	orr	r1, r1, #-2147483648	; 0x80000000
   12678:	e5801000 	str	r1, [r0]
   1267c:	e5941000 	ldr	r1, [r4]
   12680:	e5970000 	ldr	r0, [r7]
   12684:	e1800005 	orr	r0, r0, r5
   12688:	e5810018 	str	r0, [r1, #24]
   1268c:	e1a01002 	mov	r1, r2
   12690:	e59d0000 	ldr	r0, [sp]
   12694:	eb0001a2 	bl	0x12d24
   12698:	e3500000 	cmp	r0, #0
   1269c:	0a000007 	beq	0x126c0
   126a0:	e5941004 	ldr	r1, [r4, #4]
   126a4:	e28f0e22 	add	r0, pc, #544	; 0x128cc
   126a8:	eb000df7 	bl	0x15e8c
   126ac:	e5940000 	ldr	r0, [r4]
   126b0:	e5900038 	ldr	r0, [r0, #56]	; 0x38
   126b4:	e010600b 	ands	r6, r0, fp
   126b8:	03e06000 	mvneq	r6, #0
   126bc:	ea000046 	b	0x127dc
   126c0:	e5940000 	ldr	r0, [r4]
   126c4:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
   126c8:	e5901038 	ldr	r1, [r0, #56]	; 0x38
   126cc:	e2522001 	subs	r2, r2, #1
   126d0:	3a000001 	bcc	0x126dc
   126d4:	e111000b 	tst	r1, fp
   126d8:	0a000007 	beq	0x126fc
   126dc:	e011600b 	ands	r6, r1, fp
   126e0:	e5972000 	ldr	r2, [r7]
   126e4:	03e06000 	mvneq	r6, #0
   126e8:	e5941004 	ldr	r1, [r4, #4]
   126ec:	e28f0f7e 	add	r0, pc, #504	; 0x128ec
   126f0:	e1a03006 	mov	r3, r6
   126f4:	eb000de4 	bl	0x15e8c
   126f8:	ea000035 	b	0x127d4
   126fc:	e3110004 	tst	r1, #4
   12700:	0afffff0 	beq	0x126c8
   12704:	e3580000 	cmp	r8, #0
   12708:	0a000014 	beq	0x12760
   1270c:	e3590000 	cmp	r9, #0
   12710:	106a280a 	rsbne	r2, sl, sl, lsl #16
   12714:	030f2fff 	movweq	r2, #65535	; 0xffff
   12718:	e5901038 	ldr	r1, [r0, #56]	; 0x38
   1271c:	e2522001 	subs	r2, r2, #1
   12720:	3a000001 	bcc	0x1272c
   12724:	e111000b 	tst	r1, fp
   12728:	0a000006 	beq	0x12748
   1272c:	e011600b 	ands	r6, r1, fp
   12730:	e5941004 	ldr	r1, [r4, #4]
   12734:	03e06000 	mvneq	r6, #0
   12738:	e28f0f75 	add	r0, pc, #468	; 0x12914
   1273c:	e1a02006 	mov	r2, r6
   12740:	eb000dd1 	bl	0x15e8c
   12744:	ea000022 	b	0x127d4
   12748:	e5983008 	ldr	r3, [r8, #8]
   1274c:	e3530001 	cmp	r3, #1
   12750:	82011901 	andhi	r1, r1, #16384	; 0x4000
   12754:	92011008 	andls	r1, r1, #8
   12758:	e3510000 	cmp	r1, #0
   1275c:	0affffed 	beq	0x12718
   12760:	e5973004 	ldr	r3, [r7, #4]
   12764:	e3130008 	tst	r3, #8
   12768:	13e014fb 	mvnne	r1, #-83886080	; 0xfb000000
   1276c:	0a000004 	beq	0x12784
   12770:	e590203c 	ldr	r2, [r0, #60]	; 0x3c
   12774:	e2511001 	subs	r1, r1, #1
   12778:	3a000011 	bcc	0x127c4
   1277c:	e3120c02 	tst	r2, #512	; 0x200
   12780:	1afffffa 	bne	0x12770
   12784:	e3130002 	tst	r3, #2
   12788:	05900020 	ldreq	r0, [r0, #32]
   1278c:	0587000c 	streq	r0, [r7, #12]
   12790:	0a00000f 	beq	0x127d4
   12794:	e590002c 	ldr	r0, [r0, #44]	; 0x2c
   12798:	e587000c 	str	r0, [r7, #12]
   1279c:	e5940000 	ldr	r0, [r4]
   127a0:	e5900028 	ldr	r0, [r0, #40]	; 0x28
   127a4:	e5870010 	str	r0, [r7, #16]
   127a8:	e5940000 	ldr	r0, [r4]
   127ac:	e5900024 	ldr	r0, [r0, #36]	; 0x24
   127b0:	e5870014 	str	r0, [r7, #20]
   127b4:	e5940000 	ldr	r0, [r4]
   127b8:	e5900020 	ldr	r0, [r0, #32]
   127bc:	e5870018 	str	r0, [r7, #24]
   127c0:	ea000003 	b	0x127d4
   127c4:	e5941004 	ldr	r1, [r4, #4]
   127c8:	e3e06000 	mvn	r6, #0
   127cc:	e28f0f59 	add	r0, pc, #356	; 0x12938
   127d0:	eb000dad 	bl	0x15e8c
   127d4:	e3580000 	cmp	r8, #0
   127d8:	0a00000d 	beq	0x12814
   127dc:	e3590000 	cmp	r9, #0
   127e0:	0a00000b 	beq	0x12814
   127e4:	e5940000 	ldr	r0, [r4]
   127e8:	e5901088 	ldr	r1, [r0, #136]	; 0x88
   127ec:	e5801088 	str	r1, [r0, #136]	; 0x88
   127f0:	e3a00000 	mov	r0, #0
   127f4:	e5941000 	ldr	r1, [r4]
   127f8:	e581008c 	str	r0, [r1, #140]	; 0x8c
   127fc:	e5941000 	ldr	r1, [r4]
   12800:	e5810080 	str	r0, [r1, #128]	; 0x80
   12804:	e5940000 	ldr	r0, [r4]
   12808:	e5901000 	ldr	r1, [r0]
   1280c:	e3c11020 	bic	r1, r1, #32
   12810:	e5801000 	str	r1, [r0]
   12814:	e3560000 	cmp	r6, #0
   12818:	0a00000d 	beq	0x12854
   1281c:	e5941000 	ldr	r1, [r4]
   12820:	e3a00007 	mov	r0, #7
   12824:	e5810000 	str	r0, [r1]
   12828:	e5940000 	ldr	r0, [r4]
   1282c:	e5901000 	ldr	r1, [r0]
   12830:	e3110007 	tst	r1, #7
   12834:	1afffffc 	bne	0x1282c
   12838:	e59d0000 	ldr	r0, [sp]
   1283c:	ebfffe92 	bl	0x1228c
   12840:	e5972000 	ldr	r2, [r7]
   12844:	e28f0f42 	add	r0, pc, #264	; 0x12954
   12848:	e5941004 	ldr	r1, [r4, #4]
   1284c:	e1a03006 	mov	r3, r6
   12850:	eb000d8d 	bl	0x15e8c
   12854:	e5941000 	ldr	r1, [r4]
   12858:	e3e00000 	mvn	r0, #0
   1285c:	e5810038 	str	r0, [r1, #56]	; 0x38
   12860:	e3560000 	cmp	r6, #0
   12864:	0a000042 	beq	0x12974
   12868:	e3e00000 	mvn	r0, #0
   1286c:	e8bd8ffe 	pop	{r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
v12870:
   12870:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   12874:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
   12878:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
   1287c:	6f462064 	svcvs	0x00462064
   12880:	20646e75 	rsbcs	r6, r4, r5, ror lr
   12884:	61746166 	cmnvs	r4, r6, ror #2
   12888:	7265206c 	rsbvc	r2, r5, #108	; 0x6c
   1288c:	6f732c72 	svcvs	0x00732c72
   12890:	206f6e20 	rsbcs	r6, pc, r0, lsr #28
   12894:	646e6573 	strbtvs	r6, [lr], #-1395	; 0x573
   12898:	646d6320 	strbtvs	r6, [sp], #-800	; 0x320
   1289c:	0000000a 	andeq	r0, r0, sl
v128a0:
   128a0:	80008000 	andhi	r8, r0, r0
v128a4:
   128a4:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   128a8:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
   128ac:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
   128b0:	65642064 	strbvs	r2, [r4, #-100]!	; 0x64
   128b4:	69207473 	stmdbvs	r0!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}
   128b8:	6f6e2073 	svcvs	0x006e2073
   128bc:	20342074 	eorscs	r2, r4, r4, ror r0
   128c0:	65747962 	ldrbvs	r7, [r4, #-2402]!	; 0x962
   128c4:	696c6120 	stmdbvs	ip!, {r5, r8, sp, lr}^
   128c8:	000a6e67 	andeq	r6, sl, r7, ror #28
v128cc:
   128cc:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   128d0:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
   128d4:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
   128d8:	72542064 	subsvc	r2, r4, #100	; 0x64
   128dc:	66736e61 	ldrbtvs	r6, [r3], -r1, ror #28
   128e0:	66207265 	strtvs	r7, [r0], -r5, ror #4
   128e4:	656c6961 	strbvs	r6, [ip, #-2401]!	; 0x961
   128e8:	00000a64 	andeq	r0, r0, r4, ror #20
v128ec:
   128ec:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   128f0:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
   128f4:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
   128f8:	6d632064 	stclvs	0, cr2, [r3, #-400]!	; 0xfffffe70
   128fc:	64252064 	strtvs	r2, [r5], #-100	; 0x64
   12900:	6d697420 	cfstrdvs	mvd7, [r9, #-128]!	; 0xffffff80
   12904:	74756f65 	ldrbtvc	r6, [r5], #-3941	; 0xf65
   12908:	7265202c 	rsbvc	r2, r5, #44	; 0x2c
   1290c:	78252072 	stmdavc	r5!, {r1, r4, r5, r6, sp}
   12910:	0000000a 	andeq	r0, r0, sl
v12914:
   12914:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   12918:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
   1291c:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
   12920:	61642064 	cmnvs	r4, r4, rrx
   12924:	74206174 	strtvc	r6, [r0], #-372	; 0x174
   12928:	6f656d69 	svcvs	0x00656d69
   1292c:	202c7475 	eorcs	r7, ip, r5, ror r4
   12930:	20727265 	rsbscs	r7, r2, r5, ror #4
   12934:	000a7825 	andeq	r7, sl, r5, lsr #16
v12938:
   12938:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   1293c:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
   12940:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
   12944:	75622064 	strbvc	r2, [r2, #-100]!	; 0x64
   12948:	74207973 	strtvc	r7, [r0], #-2419	; 0x973
   1294c:	6f656d69 	svcvs	0x00656d69
   12950:	000a7475 	andeq	r7, sl, r5, ror r4
v12954:
   12954:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   12958:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
   1295c:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
   12960:	6d632064 	stclvs	0, cr2, [r3, #-400]!	; 0xfffffe70
   12964:	64252064 	strtvs	r2, [r5], #-100	; 0x64
   12968:	72726520 	rsbsvc	r6, r2, #32, 10	; 0x8000000
   1296c:	0a782520 	beq	0x1e1bdf4
   12970:	00000000 	andeq	r0, r0, r0
   12974:	e3a00000 	mov	r0, #0
   12978:	e8bd8ffe 	pop	{r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}

f1297c:
   1297c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   12980:	e1a06000 	mov	r6, r0
   12984:	e1a07001 	mov	r7, r1
   12988:	e28f1f93 	add	r1, pc, #588	; 0x12bdc
   1298c:	e28f0f97 	add	r0, pc, #604	; 0x12bf0
   12990:	eb000d3d 	bl	0x15e8c
   12994:	e0860086 	add	r0, r6, r6, lsl #1
   12998:	e0801186 	add	r1, r0, r6, lsl #3
   1299c:	e59f0268 	ldr	r0, [pc, #616]	; 0x12c0c
   129a0:	e0804201 	add	r4, r0, r1, lsl #4
   129a4:	e3a010b0 	mov	r1, #176	; 0xb0
   129a8:	e1a00004 	mov	r0, r4
   129ac:	fa001036 	blx	0x16a8c
   129b0:	e51f04f0 	ldr	r0, [pc, #-1264]	; 0x124c8
   129b4:	e0861106 	add	r1, r6, r6, lsl #2
   129b8:	e0805181 	add	r5, r0, r1, lsl #3
   129bc:	e3a01028 	mov	r1, #40	; 0x28
   129c0:	e1a00005 	mov	r0, r5
   129c4:	fa001030 	blx	0x16a8c
   129c8:	e28f1d09 	add	r1, pc, #576	; 0x12c10
   129cc:	e1a00004 	mov	r0, r4
   129d0:	fb000fa4 	blx	0x1686a
   129d4:	e59f0244 	ldr	r0, [pc, #580]	; 0x12c20
   129d8:	e3570004 	cmp	r7, #4
   129dc:	e5840098 	str	r0, [r4, #152]	; 0x98
   129e0:	e59f023c 	ldr	r0, [pc, #572]	; 0x12c24
   129e4:	e584009c 	str	r0, [r4, #156]	; 0x9c
   129e8:	e59f0238 	ldr	r0, [pc, #568]	; 0x12c28
   129ec:	e58400a0 	str	r0, [r4, #160]	; 0xa0
   129f0:	e3a008fe 	mov	r0, #16646144	; 0xfe0000
   129f4:	e5840024 	str	r0, [r4, #36]	; 0x24
   129f8:	e3000811 	movw	r0, #2065	; 0x811
   129fc:	e584004c 	str	r0, [r4, #76]	; 0x4c
   12a00:	03000911 	movweq	r0, #2321	; 0x911
   12a04:	e5845020 	str	r5, [r4, #32]
   12a08:	0584004c 	streq	r0, [r4, #76]	; 0x4c
   12a0c:	e1b01006 	movs	r1, r6
   12a10:	e59f0214 	ldr	r0, [pc, #532]	; 0x12c2c
   12a14:	e5840034 	str	r0, [r4, #52]	; 0x34
   12a18:	e59f0210 	ldr	r0, [pc, #528]	; 0x12c30
   12a1c:	e5840038 	str	r0, [r4, #56]	; 0x38
   12a20:	e3a00442 	mov	r0, #1107296256	; 0x42000000
   12a24:	e5846030 	str	r6, [r4, #48]	; 0x30
   12a28:	e5850024 	str	r0, [r5, #36]	; 0x24
   12a2c:	e59f0200 	ldr	r0, [pc, #512]	; 0x12c34
   12a30:	e0800601 	add	r0, r0, r1, lsl #12
   12a34:	e5850000 	str	r0, [r5]
   12a38:	e2800c02 	add	r0, r0, #512	; 0x200
   12a3c:	e5850018 	str	r0, [r5, #24]
   12a40:	e59f01f0 	ldr	r0, [pc, #496]	; 0x12c38
   12a44:	e0800101 	add	r0, r0, r1, lsl #2
   12a48:	e585001c 	str	r0, [r5, #28]
   12a4c:	e59f01e8 	ldr	r0, [pc, #488]	; 0x12c3c
   12a50:	e5850010 	str	r0, [r5, #16]
   12a54:	e2800020 	add	r0, r0, #32
   12a58:	e585000c 	str	r0, [r5, #12]
   12a5c:	02400e19 	subeq	r0, r0, #400	; 0x190
   12a60:	0a000009 	beq	0x12a8c
   12a64:	e3510002 	cmp	r1, #2
   12a68:	059f01d0 	ldreq	r0, [pc, #464]	; 0x12c40
   12a6c:	0a000006 	beq	0x12a8c
   12a70:	e28f0f73 	add	r0, pc, #460	; 0x12c44
   12a74:	eb000d04 	bl	0x15e8c
   12a78:	e28f0e1e 	add	r0, pc, #480	; 0x12c60
   12a7c:	e1a01006 	mov	r1, r6

f12a80:
   12a80:	eb000d01 	bl	0x15e8c
   12a84:	e3e00000 	mvn	r0, #0
   12a88:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
   12a8c:	e5a56004 	str	r6, [r5, #4]!
   12a90:	e3a01001 	mov	r1, #1
   12a94:	e5850010 	str	r0, [r5, #16]
   12a98:	e1a00006 	mov	r0, r6
   12a9c:	ebfffdc3 	bl	0x121b0
   12aa0:	e1a01004 	mov	r1, r4
   12aa4:	e1a00006 	mov	r0, r6
   12aa8:	ebfffda8 	bl	0x12150
   12aac:	e3500000 	cmp	r0, #0
   12ab0:	a59400a8 	ldrge	r0, [r4, #168]	; 0xa8
   12ab4:	b28f0f72 	addlt	r0, pc, #456	; 0x12c84
   12ab8:	b1a01006 	movlt	r1, r6
   12abc:	baffffef 	blt	0x12a80
   12ac0:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

f12ac4:
   12ac4:	e92d4010 	push	{r4, lr}
   12ac8:	e1a04000 	mov	r4, r0
   12acc:	e3a01000 	mov	r1, #0
   12ad0:	ebfffdb6 	bl	0x121b0
   12ad4:	e1a00004 	mov	r0, r4
   12ad8:	ebfffda5 	bl	0x12174
   12adc:	e0840084 	add	r0, r4, r4, lsl #1
   12ae0:	e59f1124 	ldr	r1, [pc, #292]	; 0x12c0c
   12ae4:	e0800184 	add	r0, r0, r4, lsl #3
   12ae8:	e0810200 	add	r0, r1, r0, lsl #4
   12aec:	e3a010b0 	mov	r1, #176	; 0xb0
   12af0:	fa000fe5 	blx	0x16a8c
   12af4:	e51f1634 	ldr	r1, [pc, #-1588]	; 0x124c8
   12af8:	e0840104 	add	r0, r4, r4, lsl #2
   12afc:	e0810180 	add	r0, r1, r0, lsl #3
   12b00:	e3a01028 	mov	r1, #40	; 0x28
   12b04:	fa000fe0 	blx	0x16a8c
   12b08:	e3a00000 	mov	r0, #0
   12b0c:	e8bd8010 	pop	{r4, pc}

f12b10:
   12b10:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   12b14:	e5904020 	ldr	r4, [r0, #32]
   12b18:	e1a07000 	mov	r7, r0
   12b1c:	e1a06001 	mov	r6, r1
   12b20:	e5940000 	ldr	r0, [r4]
   12b24:	e5901004 	ldr	r1, [r0, #4]
   12b28:	e3c15801 	bic	r5, r1, #65536	; 0x10000
   12b2c:	e5805004 	str	r5, [r0, #4]
   12b30:	e1a00007 	mov	r0, r7
   12b34:	ebfffdd4 	bl	0x1228c
   12b38:	e3500000 	cmp	r0, #0
   12b3c:	15941004 	ldrne	r1, [r4, #4]
   12b40:	128f0f57 	addne	r0, pc, #348	; 0x12ca4
   12b44:	0a000002 	beq	0x12b54
   12b48:	eb000ccf 	bl	0x15e8c
   12b4c:	e3e00000 	mvn	r0, #0
   12b50:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
   12b54:	e5941014 	ldr	r1, [r4, #20]
   12b58:	e3a00000 	mov	r0, #0
   12b5c:	e5810000 	str	r0, [r1]
   12b60:	e59f00c4 	ldr	r0, [pc, #196]	; 0x12c2c
   12b64:	e1560000 	cmp	r6, r0
   12b68:	859f0158 	ldrhi	r0, [pc, #344]	; 0x12cc8
   12b6c:	e5840008 	str	r0, [r4, #8]
   12b70:	83a00001 	movhi	r0, #1
   12b74:	e5941014 	ldr	r1, [r4, #20]
   12b78:	959f014c 	ldrls	r0, [pc, #332]	; 0x12ccc
   12b7c:	e5810000 	str	r0, [r1]
   12b80:	e5940014 	ldr	r0, [r4, #20]
   12b84:	e5901000 	ldr	r1, [r0]
   12b88:	e3811102 	orr	r1, r1, #-2147483648	; 0x80000000
   12b8c:	e5801000 	str	r1, [r0]
   12b90:	e5940000 	ldr	r0, [r4]
   12b94:	e3c550ff 	bic	r5, r5, #255	; 0xff
   12b98:	e5805004 	str	r5, [r0, #4]
   12b9c:	e1a00007 	mov	r0, r7
   12ba0:	ebfffdb9 	bl	0x1228c
   12ba4:	e3500000 	cmp	r0, #0
   12ba8:	15941004 	ldrne	r1, [r4, #4]
   12bac:	128f0f47 	addne	r0, pc, #284	; 0x12cd0
   12bb0:	1affffe4 	bne	0x12b48
   12bb4:	e5941000 	ldr	r1, [r4]
   12bb8:	e3850803 	orr	r0, r5, #196608	; 0x30000
   12bbc:	e5810004 	str	r0, [r1, #4]
   12bc0:	e1a00007 	mov	r0, r7
   12bc4:	ebfffdb0 	bl	0x1228c
   12bc8:	e3500000 	cmp	r0, #0
   12bcc:	15941004 	ldrne	r1, [r4, #4]
   12bd0:	128f0f49 	addne	r0, pc, #292	; 0x12cfc
   12bd4:	1affffdb 	bne	0x12b48
   12bd8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
v12bdc:
   12bdc:	34313032 	ldrtcc	r3, [r1], #-50	; 0x32
   12be0:	2d36302d 	ldccs	0, cr3, [r6, #-180]!	; 0xffffff4c
   12be4:	31203530 	teqcc	r0, r0, lsr r5
   12be8:	38313a34 	ldmdacc	r1!, {r2, r4, r5, r9, fp, ip, sp}
   12bec:	00000000 	andeq	r0, r0, r0
v12bf0:
   12bf0:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   12bf4:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
   12bf8:	6420636d 	strtvs	r6, [r0], #-877	; 0x36d
   12bfc:	65766972 	ldrbvs	r6, [r6, #-2418]!	; 0x972
   12c00:	65762072 	ldrbvs	r2, [r6, #-114]!	; 0x72
   12c04:	73252072 	teqvc	r5, #114	; 0x72
   12c08:	0000000a 	andeq	r0, r0, sl
v12c0c:
   12c0c:	00016c20 	andeq	r6, r1, r0, lsr #24
v12c10:
   12c10:	584e5553 	stmdapl	lr, {r0, r1, r4, r6, r8, sl, ip, lr}^
   12c14:	44532049 	ldrbmi	r2, [r3], #-73	; 0x49
   12c18:	434d4d2f 	movtmi	r4, #56623	; 0xdd2f
   12c1c:	00000000 	andeq	r0, r0, r0
v12c20:
   12c20:	0001252c 	andeq	r2, r1, ip, lsr #10
v12c24:
   12c24:	000122e8 	andeq	r2, r1, r8, ror #5
v12c28:
   12c28:	00012350 	andeq	r2, r1, r0, asr r3
v12c2c:
   12c2c:	00061a80 	andeq	r1, r6, r0, lsl #21
v12c30:
   12c30:	017d7840 	cmneq	sp, r0, asr #16
v12c34:
   12c34:	01c0f000 	biceq	pc, r0, r0
v12c38:
   12c38:	01c13000 	biceq	r3, r1, r0
v12c3c:
   12c3c:	06000580 	streq	r0, [r0], -r0, lsl #11
v12c40:
   12c40:	06000418 			; <UNDEFINED> instruction: 0x06000418
v12c44:
   12c44:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   12c48:	57203a5d 			; <UNDEFINED> instruction: 0x57203a5d
   12c4c:	676e6f72 			; <UNDEFINED> instruction: 0x676e6f72
   12c50:	636d6d20 	cmnvs	sp, #32, 26	; 0x800
   12c54:	2e4f4e20 	cdpcs	14, 4, cr4, cr15, cr0, {1}
   12c58:	6425203a 	strtvs	r2, [r5], #-58	; 0x3a
   12c5c:	0000000a 	andeq	r0, r0, sl
v12c60:
   12c60:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   12c64:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
   12c68:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
   12c6c:	65722064 	ldrbvs	r2, [r2, #-100]!	; 0x64
   12c70:	72756f73 	rsbsvc	r6, r5, #460	; 0x1cc
   12c74:	69206563 	stmdbvs	r0!, {r0, r1, r5, r6, r8, sl, sp, lr}
   12c78:	2074696e 	rsbscs	r6, r4, lr, ror #18
   12c7c:	6c696166 	stfvse	f6, [r9], #-408	; 0xfffffe68
   12c80:	000a6465 	andeq	r6, sl, r5, ror #8
v12c84:
   12c84:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   12c88:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
   12c8c:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
   12c90:	65722064 	ldrbvs	r2, [r2, #-100]!	; 0x64
   12c94:	74736967 	ldrbtvc	r6, [r3], #-2407	; 0x967
   12c98:	66207265 	strtvs	r7, [r0], -r5, ror #4
   12c9c:	656c6961 	strbvs	r6, [ip, #-2401]!	; 0x961
   12ca0:	00000a64 	andeq	r0, r0, r4, ror #20
v12ca4:
   12ca4:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   12ca8:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
   12cac:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
   12cb0:	69642064 	stmdbvs	r4!, {r2, r5, r6, sp}^
   12cb4:	6c626173 	stfvse	f6, [r2], #-460	; 0xfffffe34
   12cb8:	6c632065 	stclvs	0, cr2, [r3], #-404	; 0xfffffe6c
   12cbc:	206b636f 	rsbcs	r6, fp, pc, ror #6
   12cc0:	6c696166 	stfvse	f6, [r9], #-408	; 0xfffffe68
   12cc4:	000a6465 	andeq	r6, sl, r5, ror #8
v12cc8:
   12cc8:	00b71b00 	adcseq	r1, r7, r0, lsl #22
v12ccc:
   12ccc:	0002000f 	andeq	r0, r2, pc
v12cd0:
   12cd0:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   12cd4:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
   12cd8:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
   12cdc:	68432064 	stmdavs	r3, {r2, r5, r6, sp}^
   12ce0:	65676e61 	strbvs	r6, [r7, #-3681]!	; 0xe61
   12ce4:	76694420 	strbtvc	r4, [r9], -r0, lsr #8
   12ce8:	72656469 	rsbvc	r6, r5, #1761607680	; 0x69000000
   12cec:	63614620 	cmnvs	r1, #32, 12	; 0x2000000
   12cf0:	20726f74 	rsbscs	r6, r2, r4, ror pc
   12cf4:	6c696166 	stfvse	f6, [r9], #-408	; 0xfffffe68
   12cf8:	000a6465 	andeq	r6, sl, r5, ror #8
v12cfc:
   12cfc:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   12d00:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
   12d04:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
   12d08:	65722064 	ldrbvs	r2, [r2, #-100]!	; 0x64
   12d0c:	616e652d 	cmnvs	lr, sp, lsr #10
   12d10:	20656c62 	rsbcs	r6, r5, r2, ror #24
   12d14:	636f6c63 	cmnvs	pc, #25344	; 0x1901c
   12d18:	6166206b 	cmnvs	r6, fp, rrx
   12d1c:	64656c69 	strbtvs	r6, [r5], #-3177	; 0xc69
   12d20:	0000000a 	andeq	r0, r0, sl

f12d24:
   12d24:	e2813008 	add	r3, r1, #8
   12d28:	e92d4010 	push	{r4, lr}
   12d2c:	e5902020 	ldr	r2, [r0, #32]
   12d30:	e8930009 	ldm	r3, {r0, r3}
   12d34:	e591c000 	ldr	ip, [r1]
   12d38:	e0040093 	mul	r4, r3, r0
   12d3c:	e5913004 	ldr	r3, [r1, #4]
   12d40:	e3e004ff 	mvn	r0, #-16777216	; 0xff000000
   12d44:	e3a01000 	mov	r1, #0
   12d48:	e3130001 	tst	r3, #1
   12d4c:	1a00000b 	bne	0x12d80
   12d50:	ea000018 	b	0x12db8
   12d54:	e2500001 	subs	r0, r0, #1
   12d58:	0a00001a 	beq	0x12dc8
   12d5c:	e5923000 	ldr	r3, [r2]
   12d60:	e593303c 	ldr	r3, [r3, #60]	; 0x3c
   12d64:	e3130004 	tst	r3, #4
   12d68:	1afffff9 	bne	0x12d54
   12d6c:	e5920018 	ldr	r0, [r2, #24]
   12d70:	e5900000 	ldr	r0, [r0]
   12d74:	e78c0101 	str	r0, [ip, r1, lsl #2]
   12d78:	e3e004ff 	mvn	r0, #-16777216	; 0xff000000
   12d7c:	e2811001 	add	r1, r1, #1
   12d80:	e1510124 	cmp	r1, r4, lsr #2
   12d84:	3afffff2 	bcc	0x12d54
   12d88:	ea00000c 	b	0x12dc0
   12d8c:	e2500001 	subs	r0, r0, #1
   12d90:	0a00000c 	beq	0x12dc8
   12d94:	e5923000 	ldr	r3, [r2]
   12d98:	e593303c 	ldr	r3, [r3, #60]	; 0x3c
   12d9c:	e3130008 	tst	r3, #8
   12da0:	1afffff9 	bne	0x12d8c
   12da4:	e5923018 	ldr	r3, [r2, #24]
   12da8:	e79c0101 	ldr	r0, [ip, r1, lsl #2]
   12dac:	e5830000 	str	r0, [r3]
   12db0:	e3e004ff 	mvn	r0, #-16777216	; 0xff000000
   12db4:	e2811001 	add	r1, r1, #1
   12db8:	e1510124 	cmp	r1, r4, lsr #2
   12dbc:	3afffff2 	bcc	0x12d8c
   12dc0:	e3a00000 	mov	r0, #0
   12dc4:	e8bd8010 	pop	{r4, pc}
   12dc8:	e5921004 	ldr	r1, [r2, #4]
   12dcc:	e28f0008 	add	r0, pc, #8
   12dd0:	eb000c2d 	bl	0x15e8c
   12dd4:	e3e00000 	mvn	r0, #0
   12dd8:	e8bd8010 	pop	{r4, pc}
   12ddc:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   12de0:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
   12de4:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
   12de8:	72742064 	rsbsvc	r2, r4, #100	; 0x64
   12dec:	66736e61 	ldrbtvs	r6, [r3], -r1, ror #28
   12df0:	62207265 	eorvs	r7, r0, #1342177286	; 0x50000006
   12df4:	70632079 	rsbvc	r2, r3, r9, ror r0
   12df8:	61662075 	smcvs	25093	; 0x6205
   12dfc:	64656c69 	strbtvs	r6, [r5], #-3177	; 0xc69
   12e00:	0000000a 	andeq	r0, r0, sl

f12e04:
   12e04:	e92d4010 	push	{r4, lr}
   12e08:	ebfffedb 	bl	0x1297c
   12e0c:	e3500000 	cmp	r0, #0
   12e10:	d3e00000 	mvnle	r0, #0
   12e14:	e8bd8010 	pop	{r4, pc}

f12e18:
   12e18:	e92d4010 	push	{r4, lr}
   12e1c:	ebffff28 	bl	0x12ac4
   12e20:	e3a00000 	mov	r0, #0
   12e24:	e8bd8010 	pop	{r4, pc}

f12e28:
   12e28:	e1a0c000 	mov	ip, r0
   12e2c:	e1a00003 	mov	r0, r3
   12e30:	e1a03002 	mov	r3, r2
   12e34:	e1a02001 	mov	r2, r1
   12e38:	e1a0100c 	mov	r1, ip
   12e3c:	eafff672 	b	0x1080c
   12e40:	e59f10dc 	ldr	r1, [pc, #220]	; 0x12f24
   12e44:	e28f00dc 	add	r0, pc, #220	; 0x12f28
   12e48:	e92d4010 	push	{r4, lr}
   12e4c:	eb000c0e 	bl	0x15e8c
   12e50:	e3e00000 	mvn	r0, #0
   12e54:	e8bd8010 	pop	{r4, pc}

f12e58:
   12e58:	e92d4010 	push	{r4, lr}
   12e5c:	ebfff626 	bl	0x106fc
   12e60:	e59000a8 	ldr	r0, [r0, #168]	; 0xa8
   12e64:	e8bd8010 	pop	{r4, pc}
   12e68:	e59f10dc 	ldr	r1, [pc, #220]	; 0x12f4c
   12e6c:	e28f00b4 	add	r0, pc, #180	; 0x12f28
   12e70:	e92d4010 	push	{r4, lr}
   12e74:	eb000c04 	bl	0x15e8c
   12e78:	e3e00000 	mvn	r0, #0
   12e7c:	e8bd8010 	pop	{r4, pc}
   12e80:	e59f30c8 	ldr	r3, [pc, #200]	; 0x12f50
   12e84:	e5831000 	str	r1, [r3]
   12e88:	e1a01002 	mov	r1, r2
   12e8c:	eaffffdc 	b	0x12e04
   12e90:	e59f10b8 	ldr	r1, [pc, #184]	; 0x12f50
   12e94:	e92d4010 	push	{r4, lr}
   12e98:	e3a04000 	mov	r4, #0
   12e9c:	e5814000 	str	r4, [r1]
   12ea0:	ebffff07 	bl	0x12ac4
   12ea4:	e1a00004 	mov	r0, r4
   12ea8:	e8bd8010 	pop	{r4, pc}
   12eac:	e92d0030 	push	{r4, r5}
   12eb0:	e1a04001 	mov	r4, r1
   12eb4:	e59f1094 	ldr	r1, [pc, #148]	; 0x12f50
   12eb8:	e1a0c003 	mov	ip, r3
   12ebc:	e1a03002 	mov	r3, r2
   12ec0:	e1a02004 	mov	r2, r4
   12ec4:	e5911000 	ldr	r1, [r1]
   12ec8:	e8bd0030 	pop	{r4, r5}
   12ecc:	e0811000 	add	r1, r1, r0
   12ed0:	e1a0000c 	mov	r0, ip
   12ed4:	eafff64c 	b	0x1080c
   12ed8:	e59f1074 	ldr	r1, [pc, #116]	; 0x12f54
   12edc:	e28f0044 	add	r0, pc, #68	; 0x12f28
   12ee0:	e92d4010 	push	{r4, lr}
   12ee4:	eb000be8 	bl	0x15e8c
   12ee8:	e3e00000 	mvn	r0, #0
   12eec:	e8bd8010 	pop	{r4, pc}
   12ef0:	e92d4010 	push	{r4, lr}
   12ef4:	ebffffd7 	bl	0x12e58
   12ef8:	e59f1050 	ldr	r1, [pc, #80]	; 0x12f50
   12efc:	e5911000 	ldr	r1, [r1]
   12f00:	e0400001 	sub	r0, r0, r1
   12f04:	e8bd8010 	pop	{r4, pc}
   12f08:	e59f1048 	ldr	r1, [pc, #72]	; 0x12f58
   12f0c:	e28f0014 	add	r0, pc, #20
   12f10:	e92d4010 	push	{r4, lr}
   12f14:	eb000bdc 	bl	0x15e8c
   12f18:	e3e00000 	mvn	r0, #0
   12f1c:	e8bd8010 	pop	{r4, pc}
   12f20:	e12fff1e 	bx	lr
v12f24:
   12f24:	00016ba0 	andeq	r6, r1, r0, lsr #23
v12f28:
   12f28:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
   12f2c:	44203a5d 	strtmi	r3, [r0], #-2653	; 0xa5d
   12f30:	74276e6f 	strtvc	r6, [r7], #-3695	; 0xe6f
   12f34:	706d6920 	rsbvc	r6, sp, r0, lsr #18
   12f38:	656d656c 	strbvs	r6, [sp, #-1388]!	; 0x56c
   12f3c:	2520746e 	strcs	r7, [r0, #-1134]!	; 0x46e
   12f40:	6f662073 	svcvs	0x00662073
   12f44:	34322072 	ldrtcc	r2, [r2], #-114	; 0x72
   12f48:	000a216b 	andeq	r2, sl, fp, ror #2
v12f4c:
   12f4c:	00016baf 	andeq	r6, r1, pc, lsr #23
v12f50:
   12f50:	00016be4 	andeq	r6, r1, r4, ror #23
v12f54:
   12f54:	00016bbe 			; <UNDEFINED> instruction: 0x00016bbe
v12f58:
   12f58:	00016bd1 	ldrdeq	r6, [r1], -r1


f12f5c:
   12f5c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   12f60:	e59f1180 	ldr	r1, [pc, #384]	; 0x130e8
   12f64:	e59f0180 	ldr	r0, [pc, #384]	; 0x130ec
   12f68:	fa000ec7 	blx	0x16a8c
   12f6c:	eb000242 	bl	0x1387c
   12f70:	e59f7178 	ldr	r7, [pc, #376]	; 0x130f0
   12f74:	e59f2178 	ldr	r2, [pc, #376]	; 0x130f4
   12f78:	e28710bc 	add	r1, r7, #188	; 0xbc
   12f7c:	e59700b8 	ldr	r0, [r7, #184]	; 0xb8
   12f80:	eb000c58 	bl	0x160e8
   12f84:	e59700cc 	ldr	r0, [r7, #204]	; 0xcc
   12f88:	e3500000 	cmp	r0, #0
   12f8c:	128700d0 	addne	r0, r7, #208	; 0xd0
   12f90:	1b00008b 	blne	0x131c4
   12f94:	e28f0f57 	add	r0, pc, #348	; 0x130f8 "HELLO! BOOT0 is starting!.\n"
   12f98:	eb000bbb 	bl	0x15e8c
   12f9c:	e287102a 	add	r1, r7, #42	; 0x2a
   12fa0:	e28f0f5b 	add	r0, pc, #364	; 0x13114 "boot0 version : %s\n"
   12fa4:	eb000bb8 	bl	0x15e8c
   12fa8:	e59f4178 	ldr	r4, [pc, #376]	; 0x13128
   12fac:	e3a08801 	mov	r8, #65536	; 0x10000
   12fb0:	e5848000 	str	r8, [r4]
   12fb4:	e5940000 	ldr	r0, [r4]
   12fb8:	e3a05001 	mov	r5, #1
   12fbc:	e20060ff 	and	r6, r0, #255	; 0xff

f12fc0:
   12fc0:	e1a00805 	lsl	r0, r5, #16
   12fc4:	e5840000 	str	r0, [r4]
   12fc8:	e5942000 	ldr	r2, [r4]
   12fcc:	e28f0f56 	add	r0, pc, #344	; 0x1312c "rtc %d value %x\n"
   12fd0:	e1a01005 	mov	r1, r5
   12fd4:	eb000bac 	bl	0x15e8c
   12fd8:	e2855001 	add	r5, r5, #1
   12fdc:	e3550003 	cmp	r5, #3
   12fe0:	dafffff6 	ble	0x12fc0
   12fe4:	e356005a 	cmp	r6, #90	; 0x5a
   12fe8:	059f5150 	ldreq	r5, [pc, #336]	; 0x13140
   12fec:	1a00000e 	bne	0x1302c
   12ff0:	e5848000 	str	r8, [r4]
   12ff4:	e5845000 	str	r5, [r4]
   12ff8:	e3a0000a 	mov	r0, #10
   12ffc:	eb000159 	bl	0x13568
v13000:
   13000:	e5848000 	str	r8, [r4]
   13004:	e5940000 	ldr	r0, [r4]
   13008:	e31000ff 	tst	r0, #255	; 0xff
   1300c:	1afffff7 	bne	0x12ff0
   13010:	e28f0f4b 	add	r0, pc, #300	; 0x13144 "eraly jump fel\n"
   13014:	eb000b9c 	bl	0x15e8c
   13018:	eb0001ed 	bl	0x137d4
   1301c:	e3a0000a 	mov	r0, #10
   13020:	eb000201 	bl	0x1382c
   13024:	e3a00020 	mov	r0, #32
   13028:	eb000eba 	bl	0x16b18
   1302c:	e3a02802 	mov	r2, #131072	; 0x20000
   13030:	e3001400 	movw	r1, #1024	; 0x400
   13034:	e3a00202 	mov	r0, #536870912	; 0x20000000
   13038:	eb00010d 	bl	0x13474
   1303c:	eb000126 	bl	0x134dc
   13040:	e2871038 	add	r1, r7, #56	; 0x38
   13044:	e3a00000 	mov	r0, #0
   13048:	eb000a4a 	bl	0x15978
   1304c:	e1b04000 	movs	r4, r0
   13050:	0a000003 	beq	0x13064
   13054:	e1a01000 	mov	r1, r0
   13058:	e28f00f4 	add	r0, pc, #244	; 0x13154 "dram size =%d\n"
   1305c:	eb000b8a 	bl	0x15e8c
   13060:	ea000005 	b	0x1307c
   13064:	e28f00f8 	add	r0, pc, #248	; 0x13164 "initializing SDRAM Fail.\n"
   13068:	eb000b87 	bl	0x15e8c
   1306c:	eb000121 	bl	0x134f8
   13070:	eb0001d7 	bl	0x137d4
   13074:	e3a00020 	mov	r0, #32
   13078:	eb000ea6 	bl	0x16b18
   1307c:	e3a00064 	mov	r0, #100	; 0x64
   13080:	eb0001e9 	bl	0x1382c
   13084:	e2871038 	add	r1, r7, #56	; 0x38
   13088:	e3a02080 	mov	r2, #128	; 0x80
   1308c:	e3a00582 	mov	r0, #545259520	; 0x20800000
   13090:	eb000e64 	bl	0x16a28
   13094:	e2870f7e 	add	r0, r7, #504	; 0x1f8
   13098:	ebfff4a6 	bl	0x10338
   1309c:	e1a05000 	mov	r5, r0
   130a0:	e28f00d8 	add	r0, pc, #216	; 0x13180 "Ready to disable icache.\n"
   130a4:	eb000b78 	bl	0x15e8c
   130a8:	eb000112 	bl	0x134f8
   130ac:	e3550000 	cmp	r5, #0
   130b0:	0a000005 	beq	0x130cc
   130b4:	eb0001c6 	bl	0x137d4
   130b8:	e28f00dc 	add	r0, pc, #220	; 0x1319c "Jump to Fel.\n"
   130bc:	eb000b72 	bl	0x15e8c
   130c0:	e3a00020 	mov	r0, #32
   130c4:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
   130c8:	ea000e92 	b	0x16b18
   130cc:	e2870038 	add	r0, r7, #56	; 0x38
   130d0:	e1a01004 	mov	r1, r4
   130d4:	eb0000d4 	bl	0x1342c
   130d8:	e28f00cc 	add	r0, pc, #204	; 0x131ac
   130dc:	eb000b6a 	bl	0x15e8c
   130e0:	e3a0042a 	mov	r0, #704643072	; 0x2a000000
   130e4:	eafffff6 	b	0x130c4
v130e8:
   130e8:	00000374 
v130ec:
   130ec:	00016c0c 
v130f0:
   130f0:	00010000 
v130f4:
   130f4:	016e3600 

v130f8:
   130f8:	"HELLO! BOOT0 is starting!.\n",0,0
v13114:
   13114:	"boot0 version : %s\n",0
v13128:
   13128:	080015f0 
v1312c:
   1312c:	"rtc %d value %x\n",0,0,0,0
v13140:
   13140:	80010000 
v13144:
   13144:	"eraly jump fel\n",0
v13154:
   13154:	"dram size =%d\n",0,0
v13164:
   13164:	"initializing SDRAM Fail.\n",0,0,0
v13180:
   13180:	"Ready to disable icache.\n",0,0,0
v1319c:
   1319c:	"Jump to Fel.\n",0,0,0
v131ac:
   131ac:	"Jump to secend Boot.\n",0,0,0


f131c4:
   131c4:	e3a02001 	mov	r2, #1
   131c8:	e3a01006 	mov	r1, #6
   131cc:	ea000c13 	b	0x16220
   131d0:	e3510000 	cmp	r1, #0
   131d4:	e3a03000 	mov	r3, #0
   131d8:	05823000 	streq	r3, [r2]
   131dc:	0a000008 	beq	0x13204
   131e0:	e3510001 	cmp	r1, #1
   131e4:	05820000 	streq	r0, [r2]
   131e8:	0a000005 	beq	0x13204

f131ec:
   131ec:	e1510000 	cmp	r1, r0
   131f0:	e5823000 	str	r3, [r2]
   131f4:	90400001 	subls	r0, r0, r1
   131f8:	92833001 	addls	r3, r3, #1
   131fc:	9afffffa 	bls	0x131ec
   13200:	e12fff1e 	bx	lr
   13204:	e3a00000 	mov	r0, #0
   13208:	e12fff1e 	bx	lr

   1320c:	e92d40f0 	push	{r4, r5, r6, r7, lr}
   13210:	e5d02000 	ldrb	r2, [r0]
   13214:	e3520030 	cmp	r2, #48	; 0x30
   13218:	0a000007 	beq	0x1323c
   1321c:	e352002d 	cmp	r2, #45	; 0x2d
   13220:	e3a05000 	mov	r5, #0
   13224:	03a05001 	moveq	r5, #1
   13228:	e3a06001 	mov	r6, #1
   1322c:	03a06000 	moveq	r6, #0
   13230:	e3a03000 	mov	r3, #0
   13234:	e1a02005 	mov	r2, r5
   13238:	ea000031 	b	0x13304
   1323c:	e5d02001 	ldrb	r2, [r0, #1]
   13240:	e3520078 	cmp	r2, #120	; 0x78
   13244:	13520058 	cmpne	r2, #88	; 0x58
   13248:	13a03000 	movne	r3, #0
   1324c:	03a0c000 	moveq	ip, #0
   13250:	03a03002 	moveq	r3, #2
   13254:	11a02003 	movne	r2, r3
   13258:	0a00000d 	beq	0x13294

f1325c:
   1325c:	e7d04002 	ldrb	r4, [r0, r2]
   13260:	e2445030 	sub	r5, r4, #48	; 0x30
   13264:	e3550007 	cmp	r5, #7
   13268:	90843183 	addls	r3, r4, r3, lsl #3
   1326c:	92433030 	subls	r3, r3, #48	; 0x30
   13270:	92822001 	addls	r2, r2, #1
   13274:	9afffff8 	bls	0x1325c
   13278:	e3510000 	cmp	r1, #0
   1327c:	10800002 	addne	r0, r0, r2
   13280:	15810000 	strne	r0, [r1]
   13284:	e1a00003 	mov	r0, r3
   13288:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}

f1328c:
   1328c:	e082c20c 	add	ip, r2, ip, lsl #4
   13290:	e2833001 	add	r3, r3, #1
   13294:	e7d02003 	ldrb	r2, [r0, r3]
   13298:	e2424030 	sub	r4, r2, #48	; 0x30
   1329c:	e3540009 	cmp	r4, #9
   132a0:	92422030 	subls	r2, r2, #48	; 0x30
   132a4:	9afffff8 	bls	0x1328c
   132a8:	e2424061 	sub	r4, r2, #97	; 0x61
   132ac:	e3540005 	cmp	r4, #5
   132b0:	92422057 	subls	r2, r2, #87	; 0x57
   132b4:	9afffff4 	bls	0x1328c
   132b8:	e2424041 	sub	r4, r2, #65	; 0x41
   132bc:	e3540005 	cmp	r4, #5
   132c0:	92422037 	subls	r2, r2, #55	; 0x37
   132c4:	9afffff0 	bls	0x1328c
   132c8:	e3530002 	cmp	r3, #2
   132cc:	0a000004 	beq	0x132e4
   132d0:	e3510000 	cmp	r1, #0
   132d4:	10800003 	addne	r0, r0, r3
   132d8:	15810000 	strne	r0, [r1]
   132dc:	e1a0000c 	mov	r0, ip
   132e0:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
   132e4:	e3510000 	cmp	r1, #0
   132e8:	15810000 	strne	r0, [r1]
   132ec:	e3a00000 	mov	r0, #0
   132f0:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}

f132f4:
   132f4:	e0833103 	add	r3, r3, r3, lsl #2
   132f8:	e2822001 	add	r2, r2, #1
   132fc:	e0843083 	add	r3, r4, r3, lsl #1
   13300:	e2433030 	sub	r3, r3, #48	; 0x30
   13304:	e7d04002 	ldrb	r4, [r0, r2]
   13308:	e2447030 	sub	r7, r4, #48	; 0x30
   1330c:	e3570009 	cmp	r7, #9
   13310:	9afffff7 	bls	0x132f4
   13314:	e1520005 	cmp	r2, r5
   13318:	0afffff1 	beq	0x132e4
   1331c:	e3560000 	cmp	r6, #0
   13320:	02633000 	rsbeq	r3, r3, #0
   13324:	eaffffd3 	b	0x13278

f13328:
   13328:	e2800004 	add	r0, r0, #4
   1332c:	e3a02008 	mov	r2, #8
   13330:	e92d4010 	push	{r4, lr}
   13334:	eb000d5d 	bl	0x168b0
   13338:	e3500000 	cmp	r0, #0
   1333c:	13a00001 	movne	r0, #1
   13340:	e8bd8010 	pop	{r4, pc}

f13344:
   13344:	e92d4070 	push	{r4, r5, r6, lr}
   13348:	e590500c 	ldr	r5, [r0, #12]
   1334c:	e1a01121 	lsr	r1, r1, #2
   13350:	e59f30ac 	ldr	r3, [pc, #172]	; 0x13404
   13354:	e1a02000 	mov	r2, r0
   13358:	e3a04000 	mov	r4, #0
   1335c:	e580300c 	str	r3, [r0, #12]
   13360:	e4903004 	ldr	r3, [r0], #4
   13364:	e2411004 	sub	r1, r1, #4
   13368:	e0833004 	add	r3, r3, r4
   1336c:	e4904004 	ldr	r4, [r0], #4
   13370:	e3510003 	cmp	r1, #3
   13374:	e0833004 	add	r3, r3, r4
   13378:	e4904004 	ldr	r4, [r0], #4
   1337c:	e0833004 	add	r3, r3, r4
   13380:	e4904004 	ldr	r4, [r0], #4
   13384:	e0844003 	add	r4, r4, r3
   13388:	8afffff4 	bhi	0x13360
   1338c:	e2411001 	sub	r1, r1, #1
   13390:	e3710001 	cmn	r1, #1
   13394:	14903004 	ldrne	r3, [r0], #4
   13398:	10844003 	addne	r4, r4, r3
   1339c:	1afffffa 	bne	0x1338c
   133a0:	e28f0060 	add	r0, pc, #96	; 0x13408
   133a4:	e1a01004 	mov	r1, r4
   133a8:	e582500c 	str	r5, [r2, #12]
   133ac:	eb000ab6 	bl	0x15e8c
   133b0:	e28f0058 	add	r0, pc, #88	; 0x13410
   133b4:	e1a01005 	mov	r1, r5
   133b8:	eb000ab3 	bl	0x15e8c
   133bc:	e1540005 	cmp	r4, r5
   133c0:	03a00000 	moveq	r0, #0
   133c4:	13a00001 	movne	r0, #1
   133c8:	e8bd8070 	pop	{r4, r5, r6, pc}
   133cc:	e92d4070 	push	{r4, r5, r6, lr}
   133d0:	e1a05001 	mov	r5, r1
   133d4:	e1a01002 	mov	r1, r2
   133d8:	e1a04000 	mov	r4, r0
   133dc:	ebffffd1 	bl	0x13328
   133e0:	e3500000 	cmp	r0, #0
   133e4:	1a000004 	bne	0x133fc
   133e8:	e1a01005 	mov	r1, r5
   133ec:	e1a00004 	mov	r0, r4
   133f0:	ebffffd3 	bl	0x13344
   133f4:	e3500000 	cmp	r0, #0
   133f8:	08bd8070 	popeq	{r4, r5, r6, pc}
   133fc:	e3a00001 	mov	r0, #1
   13400:	e8bd8070 	pop	{r4, r5, r6, pc}
v13404:
   13404:	5f0a6c39 	svcpl	0x000a6c39
v13408:
   13408:	3d6d7573 	cfstr64cc	mvdx7, [sp, #-460]!	; 0xfffffe34
   1340c:	000a7825 	andeq	r7, sl, r5, lsr #16
v13410:
   13410:	5f637273 	svcpl	0x00637273
   13414:	3d6d7573 	cfstr64cc	mvdx7, [sp, #-460]!	; 0xfffffe34
   13418:	000a7825 	andeq	r7, sl, r5, lsr #16
   1341c:	e3a00001 	mov	r0, #1
   13420:	e12fff1e 	bx	lr
   13424:	e59f003c 	ldr	r0, [pc, #60]	; 0x13468
   13428:	e12fff1e 	bx	lr

f1342c:
   1342c:	e5902010 	ldr	r2, [r0, #16]
   13430:	e6ff1071 	uxth	r1, r1
   13434:	e7cf201f 	bfc	r2, #0, #16
   13438:	e1811002 	orr	r1, r1, r2
   1343c:	e5801010 	str	r1, [r0, #16]
   13440:	e3a02080 	mov	r2, #128	; 0x80
   13444:	e1a01000 	mov	r1, r0
   13448:	e59f001c 	ldr	r0, [pc, #28]	; 0x1346c
   1344c:	ea000d53 	b	0x169a0
   13450:	e59f1018 	ldr	r1, [pc, #24]	; 0x13470
   13454:	e3a020ac 	mov	r2, #172	; 0xac
   13458:	e92d4010 	push	{r4, lr}
   1345c:	eb000d71 	bl	0x16a28
   13460:	e3a00000 	mov	r0, #0
   13464:	e8bd8010 	pop	{r4, pc}
v13468:
   13468:	20100000 	andscs	r0, r0, r0
v1346c:
   1346c:	2a000030 	bcs	0x13534
v13470:
   13470:	000101f8 	strdeq	r0, [r1], -r8

f13474:
   13474:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   13478:	e1a04002 	mov	r4, r2
   1347c:	e3a02000 	mov	r2, #0
   13480:	e3003de2 	movw	r3, #3554	; 0xde2
   13484:	e1836a02 	orr	r6, r3, r2, lsl #20
   13488:	e7846102 	str	r6, [r4, r2, lsl #2]
   1348c:	e2822001 	add	r2, r2, #1
   13490:	e3520a01 	cmp	r2, #4096	; 0x1000
   13494:	23005dea 	movwcs	r5, #3562	; 0xdea
   13498:	23a02000 	movcs	r2, #0
   1349c:	25845000 	strcs	r5, [r4]
   134a0:	3afffff7 	bcc	0x13484
   134a4:	ea000004 	b	0x134bc
   134a8:	e0803a02 	add	r3, r0, r2, lsl #20
   134ac:	e0827a20 	add	r7, r2, r0, lsr #20
   134b0:	e1836005 	orr	r6, r3, r5
   134b4:	e2822001 	add	r2, r2, #1
   134b8:	e7846107 	str	r6, [r4, r7, lsl #2]
   134bc:	e1520001 	cmp	r2, r1
   134c0:	3afffff8 	bcc	0x134a8
   134c4:	eb000d9a 	bl	0x16b34
   134c8:	ee024f10 	mcr	15, 0, r4, cr2, cr0, {0}
   134cc:	ee024f30 	mcr	15, 0, r4, cr2, cr0, {1}
   134d0:	eb000d8d 	bl	0x16b0c
   134d4:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
   134d8:	ea000d91 	b	0x16b24

f134dc:
   134dc:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
   134e0:	e3011007 	movw	r1, #4103	; 0x1007
   134e4:	e1c00001 	bic	r0, r0, r1
   134e8:	e3011001 	movw	r1, #4097	; 0x1001
   134ec:	e1800001 	orr	r0, r0, r1
   134f0:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
   134f4:	e12fff1e 	bx	lr

f134f8:
   134f8:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
   134fc:	e3011007 	movw	r1, #4103	; 0x1007
   13500:	e1c00001 	bic	r0, r0, r1
   13504:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
   13508:	e12fff1e 	bx	lr

f1350c:
   1350c:	e59f1388 	ldr	r1, [pc, #904]	; 0x1389c
   13510:	e3a00000 	mov	r0, #0
   13514:	e7912100 	ldr	r2, [r1, r0, lsl #2]
   13518:	e3c2281f 	bic	r2, r2, #2031616	; 0x1f0000
   1351c:	e3822701 	orr	r2, r2, #262144	; 0x40000
   13520:	e7812100 	str	r2, [r1, r0, lsl #2]
   13524:	e2800001 	add	r0, r0, #1
   13528:	e350000c 	cmp	r0, #12
   1352c:	3afffff8 	bcc	0x13514
   13530:	e12fff1e 	bx	lr
   13534:	e59f0364 	ldr	r0, [pc, #868]	; 0x138a0
   13538:	e3001ff0 	movw	r1, #4080	; 0xff0
   1353c:	e5801104 	str	r1, [r0, #260]	; 0x104
   13540:	e3e01103 	mvn	r1, #-1073741824	; 0xc0000000
   13544:	e5801010 	str	r1, [r0, #16]
   13548:	e5801014 	str	r1, [r0, #20]
   1354c:	e5801018 	str	r1, [r0, #24]
   13550:	e580101c 	str	r1, [r0, #28]
   13554:	e5801020 	str	r1, [r0, #32]
   13558:	e5801024 	str	r1, [r0, #36]	; 0x24
   1355c:	e5801028 	str	r1, [r0, #40]	; 0x28
   13560:	e580102c 	str	r1, [r0, #44]	; 0x2c
   13564:	e12fff1e 	bx	lr

f13568:
   13568:	e59f1334 	ldr	r1, [pc, #820]	; 0x138a4
   1356c:	e5912000 	ldr	r2, [r1]
   13570:	e0822000 	add	r2, r2, r0
   13574:	e5910000 	ldr	r0, [r1]
   13578:	e1520000 	cmp	r2, r0
   1357c:	2afffffc 	bcs	0x13574
   13580:	e12fff1e 	bx	lr

   13584:	e3a03406 	mov	r3, #100663296	; 0x6000000
   13588:	e92d4070 	push	{r4, r5, r6, lr}
   1358c:	e5930050 	ldr	r0, [r3, #80]	; 0x50
   13590:	e3c00001 	bic	r0, r0, #1
   13594:	e5830050 	str	r0, [r3, #80]	; 0x50
   13598:	e3a0000a 	mov	r0, #10
   1359c:	ebfffff1 	bl	0x13568
   135a0:	f57ff05f 	dmb	sy
   135a4:	f57ff06f 	isb	sy
   135a8:	e593002c 	ldr	r0, [r3, #44]	; 0x2c
   135ac:	e3100102 	tst	r0, #-2147483648	; 0x80000000
   135b0:	03030200 	movweq	r0, #12800	; 0x3200
   135b4:	0583002c 	streq	r0, [r3, #44]	; 0x2c
   135b8:	0a000016 	beq	0x13618
   135bc:	e59f42e4 	ldr	r4, [pc, #740]	; 0x138a8
   135c0:	e5834000 	str	r4, [r3]
   135c4:	e3a0000a 	mov	r0, #10
   135c8:	ebffffe6 	bl	0x13568
   135cc:	e5930000 	ldr	r0, [r3]
   135d0:	e1500004 	cmp	r0, r4
   135d4:	059f52d0 	ldreq	r5, [pc, #720]	; 0x138ac
   135d8:	05835000 	streq	r5, [r3]
   135dc:	05834004 	streq	r4, [r3, #4]
   135e0:	1afffff7 	bne	0x135c4
   135e4:	e3a0000a 	mov	r0, #10
   135e8:	ebffffde 	bl	0x13568
   135ec:	e5930004 	ldr	r0, [r3, #4]
   135f0:	e1500004 	cmp	r0, r4
   135f4:	1afffffa 	bne	0x135e4
   135f8:	e5835004 	str	r5, [r3, #4]
   135fc:	e593000c 	ldr	r0, [r3, #12]
   13600:	e59f42a8 	ldr	r4, [pc, #680]	; 0x138b0
   13604:	e3100102 	tst	r0, #-2147483648	; 0x80000000
   13608:	03020800 	movweq	r0, #10240	; 0x2800
   1360c:	0583000c 	streq	r0, [r3, #12]
   13610:	1a00000d 	bne	0x1364c
   13614:	ea000007 	b	0x13638
   13618:	e3a0000a 	mov	r0, #10
   1361c:	ebffffd1 	bl	0x13568
   13620:	e593002c 	ldr	r0, [r3, #44]	; 0x2c
   13624:	e3500c32 	cmp	r0, #12800	; 0x3200
   13628:	059f0284 	ldreq	r0, [pc, #644]	; 0x138b4
   1362c:	0583002c 	streq	r0, [r3, #44]	; 0x2c
   13630:	1afffff8 	bne	0x13618
   13634:	eaffffe0 	b	0x135bc
   13638:	e3a0000a 	mov	r0, #10
   1363c:	ebffffc9 	bl	0x13568
   13640:	e593000c 	ldr	r0, [r3, #12]
   13644:	e3500b0a 	cmp	r0, #10240	; 0x2800
   13648:	1afffffa 	bne	0x13638
   1364c:	e583400c 	str	r4, [r3, #12]
   13650:	e3010388 	movw	r0, #5000	; 0x1388
   13654:	ebffffc3 	bl	0x13568
   13658:	f57ff05f 	dmb	sy
   1365c:	f57ff06f 	isb	sy
   13660:	e3000101 	movw	r0, #257	; 0x101
   13664:	e5830054 	str	r0, [r3, #84]	; 0x54
   13668:	e3a00032 	mov	r0, #50	; 0x32
   1366c:	ebffffbd 	bl	0x13568
   13670:	f57ff05f 	dmb	sy
   13674:	f57ff06f 	isb	sy
   13678:	e3a04003 	mov	r4, #3
   1367c:	e5834060 	str	r4, [r3, #96]	; 0x60
   13680:	e3a0000a 	mov	r0, #10
   13684:	ebffffb7 	bl	0x13568
   13688:	e5930060 	ldr	r0, [r3, #96]	; 0x60
   1368c:	e3500003 	cmp	r0, #3
   13690:	1afffffa 	bne	0x13680
   13694:	e59f521c 	ldr	r5, [pc, #540]	; 0x138b8
   13698:	e5835060 	str	r5, [r3, #96]	; 0x60
   1369c:	e3a06002 	mov	r6, #2
   136a0:	e5836064 	str	r6, [r3, #100]	; 0x64
   136a4:	e3a0000a 	mov	r0, #10
   136a8:	ebffffae 	bl	0x13568
   136ac:	e5930064 	ldr	r0, [r3, #100]	; 0x64
   136b0:	e3500002 	cmp	r0, #2
   136b4:	059f0200 	ldreq	r0, [pc, #512]	; 0x138bc
   136b8:	05830064 	streq	r0, [r3, #100]	; 0x64
   136bc:	05834068 	streq	r4, [r3, #104]	; 0x68
   136c0:	1afffff7 	bne	0x136a4
   136c4:	e3a0000a 	mov	r0, #10
   136c8:	ebffffa6 	bl	0x13568
   136cc:	e5930068 	ldr	r0, [r3, #104]	; 0x68
   136d0:	e3500003 	cmp	r0, #3
   136d4:	05835068 	streq	r5, [r3, #104]	; 0x68
   136d8:	05834070 	streq	r4, [r3, #112]	; 0x70
   136dc:	1afffff8 	bne	0x136c4
   136e0:	e3a0000a 	mov	r0, #10
   136e4:	ebffff9f 	bl	0x13568
   136e8:	e5930070 	ldr	r0, [r3, #112]	; 0x70
   136ec:	e3500003 	cmp	r0, #3
   136f0:	05835070 	streq	r5, [r3, #112]	; 0x70
   136f4:	0583605c 	streq	r6, [r3, #92]	; 0x5c
   136f8:	1afffff8 	bne	0x136e0
   136fc:	e3a0000a 	mov	r0, #10
   13700:	ebffff98 	bl	0x13568
   13704:	e593005c 	ldr	r0, [r3, #92]	; 0x5c
   13708:	e3500002 	cmp	r0, #2
   1370c:	1afffffa 	bne	0x136fc
   13710:	e59f01a8 	ldr	r0, [pc, #424]	; 0x138c0
   13714:	e583005c 	str	r0, [r3, #92]	; 0x5c
   13718:	e3a00064 	mov	r0, #100	; 0x64
   1371c:	ebffff91 	bl	0x13568
   13720:	f57ff05f 	dmb	sy
   13724:	f57ff06f 	isb	sy
   13728:	e5930078 	ldr	r0, [r3, #120]	; 0x78
   1372c:	e3a04001 	mov	r4, #1
   13730:	e3100403 	tst	r0, #50331648	; 0x3000000
   13734:	15834078 	strne	r4, [r3, #120]	; 0x78
   13738:	13a00032 	movne	r0, #50	; 0x32
   1373c:	1bffff89 	blne	0x13568
   13740:	e59f017c 	ldr	r0, [pc, #380]	; 0x138c4
   13744:	e5830078 	str	r0, [r3, #120]	; 0x78
   13748:	e3a00064 	mov	r0, #100	; 0x64
   1374c:	ebffff85 	bl	0x13568
   13750:	f57ff05f 	dmb	sy
   13754:	f57ff06f 	isb	sy
   13758:	e5930050 	ldr	r0, [r3, #80]	; 0x50
   1375c:	e3800001 	orr	r0, r0, #1
   13760:	e5830050 	str	r0, [r3, #80]	; 0x50
   13764:	e5930050 	ldr	r0, [r3, #80]	; 0x50
   13768:	e3800c01 	orr	r0, r0, #256	; 0x100
   1376c:	e5830050 	str	r0, [r3, #80]	; 0x50
   13770:	e30003e8 	movw	r0, #1000	; 0x3e8
   13774:	ebffff7b 	bl	0x13568
   13778:	f57ff05f 	dmb	sy
   1377c:	f57ff06f 	isb	sy
   13780:	e59f0140 	ldr	r0, [pc, #320]	; 0x138c8
   13784:	e5901000 	ldr	r1, [r0]
   13788:	e3811020 	orr	r1, r1, #32
   1378c:	e5801000 	str	r1, [r0]
   13790:	e59f0134 	ldr	r0, [pc, #308]	; 0x138cc
   13794:	e5901000 	ldr	r1, [r0]
   13798:	e3811001 	orr	r1, r1, #1
   1379c:	e5801000 	str	r1, [r0]
   137a0:	e59f0128 	ldr	r0, [pc, #296]	; 0x138d0
   137a4:	e5901000 	ldr	r1, [r0]
   137a8:	e3811401 	orr	r1, r1, #16777216	; 0x1000000
   137ac:	e5801000 	str	r1, [r0]
   137b0:	e2400020 	sub	r0, r0, #32
   137b4:	e5901000 	ldr	r1, [r0]
   137b8:	e3811401 	orr	r1, r1, #16777216	; 0x1000000
   137bc:	e5801000 	str	r1, [r0]
   137c0:	e59f010c 	ldr	r0, [pc, #268]	; 0x138d4
   137c4:	e5804000 	str	r4, [r0]
   137c8:	ebffff4f 	bl	0x1350c
   137cc:	e8bd4070 	pop	{r4, r5, r6, lr}
   137d0:	eaffff57 	b	0x13534

f137d4:
   137d4:	e3a00406 	mov	r0, #100663296	; 0x6000000
   137d8:	e3a01000 	mov	r1, #0
   137dc:	e5801050 	str	r1, [r0, #80]	; 0x50
   137e0:	e59f10c0 	ldr	r1, [pc, #192]	; 0x138a8
   137e4:	e5801000 	str	r1, [r0]
   137e8:	e12fff1e 	bx	lr

f137ec:
   137ec:	e59f00e4 	ldr	r0, [pc, #228]	; 0x138d8
   137f0:	e5901000 	ldr	r1, [r0]
   137f4:	e3811102 	orr	r1, r1, #-2147483648	; 0x80000000
   137f8:	e5801000 	str	r1, [r0]
   137fc:	e59f10d8 	ldr	r1, [pc, #216]	; 0x138dc
   13800:	e3a00003 	mov	r0, #3
   13804:	e5810000 	str	r0, [r1]
   13808:	e59f00d0 	ldr	r0, [pc, #208]	; 0x138e0
   1380c:	e1811840 	orr	r1, r1, r0, asr #16
   13810:	e5810000 	str	r0, [r1]
   13814:	e2411008 	sub	r1, r1, #8
   13818:	e3a00000 	mov	r0, #0
   1381c:	e5810000 	str	r0, [r1]
   13820:	e2811004 	add	r1, r1, #4
   13824:	e5810000 	str	r0, [r1]
   13828:	e12fff1e 	bx	lr

f1382c:
   1382c:	e59f10b0 	ldr	r1, [pc, #176]	; 0x138e4
   13830:	e5912000 	ldr	r2, [r1]
   13834:	e0822000 	add	r2, r2, r0
   13838:	e5910000 	ldr	r0, [r1]
   1383c:	e1520000 	cmp	r2, r0
   13840:	2afffffc 	bcs	0x13838
   13844:	e12fff1e 	bx	lr
   13848:	e59f108c 	ldr	r1, [pc, #140]	; 0x138dc
   1384c:	e3a00000 	mov	r0, #0
   13850:	e5810000 	str	r0, [r1]
   13854:	e59f208c 	ldr	r2, [pc, #140]	; 0x138e8
   13858:	e59f1080 	ldr	r1, [pc, #128]	; 0x138e0
   1385c:	e5821000 	str	r1, [r2]
   13860:	e1c21541 	bic	r1, r2, r1, asr #10
   13864:	e5810000 	str	r0, [r1]
   13868:	e2410e7b 	sub	r0, r1, #1968	; 0x7b0
   1386c:	e5901000 	ldr	r1, [r0]
   13870:	e3c11102 	bic	r1, r1, #-2147483648	; 0x80000000
   13874:	e5801000 	str	r1, [r0]
   13878:	e12fff1e 	bx	lr

f1387c:
   1387c:	e12fff1e 	bx	lr
   13880:	e12fff1e 	bx	lr
   13884:	e12fff1e 	bx	lr
   13888:	e12fff1e 	bx	lr


f1388c:
   1388c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   13890:	ebffffd5 	bl	0x137ec
   13894:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
   13898:	eaffff39 	b	0x13584

v1389c:
   1389c:	060000a0
v138a0:
   138a0:	01c09000
v138a4:
   138a4:	06000c88
v138a8:
   138a8:	02001100
v138ac:
   138ac:	82001100
v138b0:
   138b0:	80002800
v138b4:
   138b4:	80003200
v138b8:
   138b8:	01000003
v138bc:
   138bc:	01000002
v138c0:
   138c0:	02000002
v138c4:
   138c4:	01000001
v138c8:
   138c8:	06000590
v138cc:
   138cc:	08001428
v138d0:
   138d0:	060005a4
v138d4:
   138d4:	01720000
v138d8:
   138d8:	060004d4
v138dc:
   138dc:	06000c80
v138e0:
   138e0:	000c2ee0
v138e4:
   138e4:	06000c84
v138e8:
   138e8:	06000c8c


f138ec:
   138ec:	e92d43fe 	push	{r1, r2, r3, r4, r5, r6, r7, r8, r9, lr}
   138f0:	e59f7284 	ldr	r7, [pc, #644]	; 0x13b7c
   138f4:	e1a04000 	mov	r4, r0
   138f8:	e1a05001 	mov	r5, r1
   138fc:	e1a06002 	mov	r6, r2
   13900:	ea000001 	b	0x1390c
   13904:	e28f0f9d 	add	r0, pc, #628	; 0x13b80
   13908:	eb00095f 	bl	0x15e8c
   1390c:	e5970000 	ldr	r0, [r7]
   13910:	e3100007 	tst	r0, #7
   13914:	1afffffa 	bne	0x13904
   13918:	e59f826c 	ldr	r8, [pc, #620]	; 0x13b8c
   1391c:	e3a02001 	mov	r2, #1
   13920:	e5882004 	str	r2, [r8, #4]
   13924:	e3a01000 	mov	r1, #0
   13928:	e5881000 	str	r1, [r8]
   1392c:	e5881008 	str	r1, [r8, #8]
   13930:	e1a00084 	lsl	r0, r4, #1
   13934:	e1800405 	orr	r0, r0, r5, lsl #8
   13938:	e1800806 	orr	r0, r0, r6, lsl #16
   1393c:	e3803102 	orr	r3, r0, #-2147483648	; 0x80000000
   13940:	e59f0248 	ldr	r0, [pc, #584]	; 0x13b90
   13944:	e5803000 	str	r3, [r0]
   13948:	e5903000 	ldr	r3, [r0]
   1394c:	e3130102 	tst	r3, #-2147483648	; 0x80000000
   13950:	1afffffc 	bne	0x13948
   13954:	ea00000c 	b	0x1398c
   13958:	e5970000 	ldr	r0, [r7]
   1395c:	e3100004 	tst	r0, #4
   13960:	15882008 	strne	r2, [r8, #8]
   13964:	0a000001 	beq	0x13970
   13968:	e5870000 	str	r0, [r7]
   1396c:	ea000009 	b	0x13998
   13970:	e3100002 	tst	r0, #2
   13974:	17ef1450 	ubfxne	r1, r0, #8, #16
   13978:	15881000 	strne	r1, [r8]
   1397c:	1afffff9 	bne	0x13968
   13980:	e3100001 	tst	r0, #1
   13984:	15881004 	strne	r1, [r8, #4]
   13988:	15870000 	strne	r0, [r7]
   1398c:	e5980004 	ldr	r0, [r8, #4]
   13990:	e3500000 	cmp	r0, #0
   13994:	1affffef 	bne	0x13958
   13998:	e5980008 	ldr	r0, [r8, #8]
   1399c:	e3500000 	cmp	r0, #0
   139a0:	0a000003 	beq	0x139b4
   139a4:	e28f0f7a 	add	r0, pc, #488	; 0x13b94
   139a8:	eb000937 	bl	0x15e8c
   139ac:	e3e00000 	mvn	r0, #0
   139b0:	e8bd83fe 	pop	{r1, r2, r3, r4, r5, r6, r7, r8, r9, pc}
   139b4:	e5980000 	ldr	r0, [r8]
   139b8:	e3500000 	cmp	r0, #0
   139bc:	08bd83fe 	popeq	{r1, r2, r3, r4, r5, r6, r7, r8, r9, pc}
   139c0:	e5980000 	ldr	r0, [r8]
   139c4:	e5981000 	ldr	r1, [r8]
   139c8:	e3100c01 	tst	r0, #256	; 0x100
   139cc:	128f0f73 	addne	r0, pc, #460	; 0x13ba0
   139d0:	028f0e1d 	addeq	r0, pc, #464	; 0x13ba8
   139d4:	e5982000 	ldr	r2, [r8]
   139d8:	e3110008 	tst	r1, #8
   139dc:	128f1f72 	addne	r1, pc, #456	; 0x13bac
   139e0:	028f1d07 	addeq	r1, pc, #448	; 0x13ba8
   139e4:	e58d0008 	str	r0, [sp, #8]
   139e8:	e3120004 	tst	r2, #4
   139ec:	e58d1004 	str	r1, [sp, #4]
   139f0:	128f2f6f 	addne	r2, pc, #444	; 0x13bb4
   139f4:	028f2f6b 	addeq	r2, pc, #428	; 0x13ba8
   139f8:	e58d2000 	str	r2, [sp]
   139fc:	e5980000 	ldr	r0, [r8]
   13a00:	e3100002 	tst	r0, #2
   13a04:	e5980000 	ldr	r0, [r8]
   13a08:	128f3f6b 	addne	r3, pc, #428	; 0x13bbc
   13a0c:	028f3f65 	addeq	r3, pc, #404	; 0x13ba8
   13a10:	e5981000 	ldr	r1, [r8]
   13a14:	e3100001 	tst	r0, #1
   13a18:	128f2f69 	addne	r2, pc, #420	; 0x13bc4
   13a1c:	028f2f61 	addeq	r2, pc, #388	; 0x13ba8
   13a20:	e28f0f69 	add	r0, pc, #420	; 0x13bcc
   13a24:	eb000918 	bl	0x15e8c
   13a28:	e5980000 	ldr	r0, [r8]
   13a2c:	e2600000 	rsb	r0, r0, #0
   13a30:	e8bd83fe 	pop	{r1, r2, r3, r4, r5, r6, r7, r8, r9, pc}
   13a34:	e92d40fe 	push	{r1, r2, r3, r4, r5, r6, r7, lr}
   13a38:	e59f713c 	ldr	r7, [pc, #316]	; 0x13b7c
   13a3c:	e1a04000 	mov	r4, r0
   13a40:	e1a05001 	mov	r5, r1
   13a44:	ea000001 	b	0x13a50
   13a48:	e28f0e13 	add	r0, pc, #304	; 0x13b80
   13a4c:	eb00090e 	bl	0x15e8c
   13a50:	e5970000 	ldr	r0, [r7]
   13a54:	e3100007 	tst	r0, #7
   13a58:	1afffffa 	bne	0x13a48
   13a5c:	e59f6128 	ldr	r6, [pc, #296]	; 0x13b8c
   13a60:	e3a02001 	mov	r2, #1
   13a64:	e5862004 	str	r2, [r6, #4]
   13a68:	e3a01000 	mov	r1, #0
   13a6c:	e5861000 	str	r1, [r6]
   13a70:	e5861008 	str	r1, [r6, #8]
   13a74:	e1840805 	orr	r0, r4, r5, lsl #16
   13a78:	e59f3178 	ldr	r3, [pc, #376]	; 0x13bf8
   13a7c:	e5830000 	str	r0, [r3]
   13a80:	e0433102 	sub	r3, r3, r2, lsl #2
   13a84:	e3a000e8 	mov	r0, #232	; 0xe8
   13a88:	e5830000 	str	r0, [r3]
   13a8c:	e243002c 	sub	r0, r3, #44	; 0x2c
   13a90:	e5903000 	ldr	r3, [r0]
   13a94:	e3833080 	orr	r3, r3, #128	; 0x80
   13a98:	e5803000 	str	r3, [r0]
   13a9c:	ea00000c 	b	0x13ad4
   13aa0:	e5970000 	ldr	r0, [r7]
   13aa4:	e3100004 	tst	r0, #4
   13aa8:	15862008 	strne	r2, [r6, #8]
   13aac:	0a000001 	beq	0x13ab8
   13ab0:	e5870000 	str	r0, [r7]
   13ab4:	ea000009 	b	0x13ae0
   13ab8:	e3100002 	tst	r0, #2
   13abc:	17ef1450 	ubfxne	r1, r0, #8, #16
   13ac0:	15861000 	strne	r1, [r6]
   13ac4:	1afffff9 	bne	0x13ab0
   13ac8:	e3100001 	tst	r0, #1
   13acc:	15861004 	strne	r1, [r6, #4]
   13ad0:	15870000 	strne	r0, [r7]
   13ad4:	e5960004 	ldr	r0, [r6, #4]
   13ad8:	e3500000 	cmp	r0, #0
   13adc:	1affffef 	bne	0x13aa0
   13ae0:	e5960008 	ldr	r0, [r6, #8]
   13ae4:	e3500000 	cmp	r0, #0
   13ae8:	0a000003 	beq	0x13afc
   13aec:	e28f00a0 	add	r0, pc, #160	; 0x13b94
   13af0:	eb0008e5 	bl	0x15e8c
   13af4:	e3e00000 	mvn	r0, #0
   13af8:	e8bd80fe 	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
   13afc:	e5960000 	ldr	r0, [r6]
   13b00:	e3500000 	cmp	r0, #0
   13b04:	08bd80fe 	popeq	{r1, r2, r3, r4, r5, r6, r7, pc}
   13b08:	e5960000 	ldr	r0, [r6]
   13b0c:	e5961000 	ldr	r1, [r6]
   13b10:	e3100c01 	tst	r0, #256	; 0x100
   13b14:	128f0084 	addne	r0, pc, #132	; 0x13ba0
   13b18:	028f0088 	addeq	r0, pc, #136	; 0x13ba8
   13b1c:	e5962000 	ldr	r2, [r6]
   13b20:	e3110008 	tst	r1, #8
   13b24:	128f1080 	addne	r1, pc, #128	; 0x13bac
   13b28:	028f1078 	addeq	r1, pc, #120	; 0x13ba8
   13b2c:	e58d0008 	str	r0, [sp, #8]
   13b30:	e3120004 	tst	r2, #4
   13b34:	e58d1004 	str	r1, [sp, #4]
   13b38:	128f2074 	addne	r2, pc, #116	; 0x13bb4
   13b3c:	028f2064 	addeq	r2, pc, #100	; 0x13ba8
   13b40:	e58d2000 	str	r2, [sp]
   13b44:	e5960000 	ldr	r0, [r6]
   13b48:	e3100002 	tst	r0, #2
   13b4c:	e5960000 	ldr	r0, [r6]
   13b50:	128f3064 	addne	r3, pc, #100	; 0x13bbc
   13b54:	028f304c 	addeq	r3, pc, #76	; 0x13ba8
   13b58:	e5961000 	ldr	r1, [r6]
   13b5c:	e3100001 	tst	r0, #1
   13b60:	128f205c 	addne	r2, pc, #92	; 0x13bc4
   13b64:	028f203c 	addeq	r2, pc, #60	; 0x13ba8
   13b68:	e28f008c 	add	r0, pc, #140	; 0x13bfc
   13b6c:	eb0008c6 	bl	0x15e8c
   13b70:	e5960000 	ldr	r0, [r6]
   13b74:	e2600000 	rsb	r0, r0, #0
   13b78:	e8bd80fe 	pop	{r1, r2, r3, r4, r5, r6, r7, pc}

v13b7c:
   13b7c:	0800340c 
v13b80:
   13b80:	"status err\n",0
v13b8c:
   13b8c:	00016be8
v13b90:
   13b90:	08003428
v13b94:
   13b94:	"Load busy\n",0,0
v13ba0:
   13ba0:	" NOACK ",0
v13ba8:
   13ba8:	00000000
v13bac:
   13bac:	" 4THE ",0
v13bb4:
   13bb4:	" 3RD ",0,0
v13bbc:
   13bbc:	" 2NDE ",0,0
v13bc4:
   13bc4:	" 1STE ",0,0
v13bcc:
   13bcc:	"rsb write failed, flag 0x%x:%s%s%s%s%s !!\n",0,0
v13bf8:
   13bf8:	08003430
v13bfc:
   13bfc:	"rsb set run time address failed, flag 0xled, flag 0xs !!\n",0,0,0

   13c38:	e92d4ffe 	push	{r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   13c3c:	e3a06000 	mov	r6, #0
   13c40:	e1a08000 	mov	r8, r0
   13c44:	e3530004 	cmp	r3, #4
   13c48:	e1a09001 	mov	r9, r1
   13c4c:	e1a07002 	mov	r7, r2
   13c50:	e1a04003 	mov	r4, r3
   13c54:	e1a05006 	mov	r5, r6
   13c58:	8a000008 	bhi	0x13c80
   13c5c:	e3540000 	cmp	r4, #0
   13c60:	0a000006 	beq	0x13c80
   13c64:	e3540003 	cmp	r4, #3
   13c68:	0a000004 	beq	0x13c80
   13c6c:	e51fa0f8 	ldr	sl, [pc, #-248]	; 0x13b7c
   13c70:	e3570000 	cmp	r7, #0
   13c74:	028f0fd3 	addeq	r0, pc, #844	; 0x13fc8
   13c78:	0a000041 	beq	0x13d84
   13c7c:	ea000005 	b	0x13c98
   13c80:	e28f0fd7 	add	r0, pc, #860	; 0x13fe4
   13c84:	e1a01003 	mov	r1, r3
   13c88:	eb00087f 	bl	0x15e8c
   13c8c:	ea00003d 	b	0x13d88
   13c90:	e24f0f46 	sub	r0, pc, #280	; 0x13db0
   13c94:	eb00087c 	bl	0x15e8c
   13c98:	e59a0000 	ldr	r0, [sl]
   13c9c:	e3100007 	tst	r0, #7
   13ca0:	1afffffa 	bne	0x13c90
   13ca4:	e51fb120 	ldr	fp, [pc, #-288]	; 0x13b8c
   13ca8:	e3a01000 	mov	r1, #0
   13cac:	e58b1000 	str	r1, [fp]
   13cb0:	e3a02001 	mov	r2, #1
   13cb4:	e58b2004 	str	r2, [fp, #4]
   13cb8:	e58b1008 	str	r1, [fp, #8]
   13cbc:	e1a00808 	lsl	r0, r8, #16
   13cc0:	e51f30d0 	ldr	r3, [pc, #-208]	; 0x13bf8
   13cc4:	e5830000 	str	r0, [r3]
   13cc8:	e1c30282 	bic	r0, r3, r2, lsl #5
   13ccc:	e5809000 	str	r9, [r0]
   13cd0:	e1a00001 	mov	r0, r1
   13cd4:	ea000003 	b	0x13ce8
   13cd8:	e7d73000 	ldrb	r3, [r7, r0]
   13cdc:	e1a0c180 	lsl	ip, r0, #3
   13ce0:	e2800001 	add	r0, r0, #1
   13ce4:	e1855c13 	orr	r5, r5, r3, lsl ip
   13ce8:	e1540000 	cmp	r4, r0
   13cec:	8afffff9 	bhi	0x13cd8
   13cf0:	e59f0300 	ldr	r0, [pc, #768]	; 0x13ff8
   13cf4:	e5805000 	str	r5, [r0]
   13cf8:	e3540001 	cmp	r4, #1
   13cfc:	03a0604e 	moveq	r6, #78	; 0x4e
   13d00:	0a000004 	beq	0x13d18
   13d04:	e3540002 	cmp	r4, #2
   13d08:	03a06059 	moveq	r6, #89	; 0x59
   13d0c:	0a000001 	beq	0x13d18
   13d10:	e3540004 	cmp	r4, #4
   13d14:	03a06063 	moveq	r6, #99	; 0x63
   13d18:	e59f02dc 	ldr	r0, [pc, #732]	; 0x13ffc
   13d1c:	e5806000 	str	r6, [r0]
   13d20:	e240002c 	sub	r0, r0, #44	; 0x2c
   13d24:	e5903000 	ldr	r3, [r0]
   13d28:	e3833080 	orr	r3, r3, #128	; 0x80
   13d2c:	e5803000 	str	r3, [r0]
   13d30:	ea00000c 	b	0x13d68
   13d34:	e59a0000 	ldr	r0, [sl]
   13d38:	e3100004 	tst	r0, #4
   13d3c:	158b2008 	strne	r2, [fp, #8]
   13d40:	0a000001 	beq	0x13d4c
   13d44:	e58a0000 	str	r0, [sl]
   13d48:	ea000009 	b	0x13d74
   13d4c:	e3100002 	tst	r0, #2
   13d50:	17ef1450 	ubfxne	r1, r0, #8, #16
   13d54:	158b1000 	strne	r1, [fp]
   13d58:	1afffff9 	bne	0x13d44
   13d5c:	e3100001 	tst	r0, #1
   13d60:	158b1004 	strne	r1, [fp, #4]
   13d64:	158a0000 	strne	r0, [sl]
   13d68:	e59b0004 	ldr	r0, [fp, #4]
   13d6c:	e3500000 	cmp	r0, #0
   13d70:	1affffef 	bne	0x13d34
   13d74:	e59b0008 	ldr	r0, [fp, #8]
   13d78:	e3500000 	cmp	r0, #0
   13d7c:	124f0e1f 	subne	r0, pc, #496	; 0x13f74
   13d80:	0a000002 	beq	0x13d90
   13d84:	eb000840 	bl	0x15e8c
   13d88:	e3e00000 	mvn	r0, #0
   13d8c:	e8bd8ffe 	pop	{r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
   13d90:	e59b0000 	ldr	r0, [fp]
   13d94:	e3500000 	cmp	r0, #0
   13d98:	08bd8ffe 	popeq	{r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
   13d9c:	e59b0000 	ldr	r0, [fp]
   13da0:	e59b1000 	ldr	r1, [fp]
   13da4:	e3100c01 	tst	r0, #256	; 0x100
   13da8:	124f0e21 	subne	r0, pc, #528	; 0x13fc0
   13dac:	028f0f8b 	addeq	r0, pc, #556	; 0x13fe0
v13db0:
   13db0:	e59b2000 	ldr	r2, [fp]
   13db4:	e3110008 	tst	r1, #8
   13db8:	124f1f85 	subne	r1, pc, #532	; 0x13fd4
   13dbc:	028f1f87 	addeq	r1, pc, #540	; 0x13fe0
   13dc0:	e58d0008 	str	r0, [sp, #8]
   13dc4:	e3120004 	tst	r2, #4
   13dc8:	e58d1004 	str	r1, [sp, #4]
   13dcc:	124f2e22 	subne	r2, pc, #544	; 0x13ff4
   13dd0:	028f2f82 	addeq	r2, pc, #520	; 0x13fe0
   13dd4:	e58d2000 	str	r2, [sp]
   13dd8:	e59b0000 	ldr	r0, [fp]
   13ddc:	e3100002 	tst	r0, #2
   13de0:	e59b0000 	ldr	r0, [fp]
   13de4:	124f3e23 	subne	r3, pc, #560	; 0x1401c
   13de8:	028f3e1f 	addeq	r3, pc, #496	; 0x13fe0
   13dec:	e59b1000 	ldr	r1, [fp]
   13df0:	e3100001 	tst	r0, #1
   13df4:	124f2f8e 	subne	r2, pc, #568	; 0x14034
   13df8:	028f2e1e 	addeq	r2, pc, #480	; 0x13fe0
   13dfc:	e24f0f8e 	sub	r0, pc, #568	; 0x1403c
   13e00:	eb000821 	bl	0x15e8c
   13e04:	e59b0000 	ldr	r0, [fp]
   13e08:	e2600000 	rsb	r0, r0, #0
   13e0c:	e8bd8ffe 	pop	{r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
   13e10:	e92d4ffe 	push	{r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   13e14:	e3530004 	cmp	r3, #4
   13e18:	e1a07000 	mov	r7, r0
   13e1c:	e1a08001 	mov	r8, r1
   13e20:	e1a06002 	mov	r6, r2
   13e24:	e1a04003 	mov	r4, r3
   13e28:	e3a05000 	mov	r5, #0
   13e2c:	8a000008 	bhi	0x13e54
   13e30:	e3540000 	cmp	r4, #0
   13e34:	0a000006 	beq	0x13e54
   13e38:	e3540003 	cmp	r4, #3
   13e3c:	0a000004 	beq	0x13e54
   13e40:	e51fa2cc 	ldr	sl, [pc, #-716]	; 0x13b7c
   13e44:	e3560000 	cmp	r6, #0
   13e48:	028f0f5e 	addeq	r0, pc, #376	; 0x13fc8
   13e4c:	0a000037 	beq	0x13f30
   13e50:	ea000005 	b	0x13e6c
   13e54:	e28f0f62 	add	r0, pc, #392	; 0x13fe4
   13e58:	e1a01003 	mov	r1, r3
   13e5c:	eb00080a 	bl	0x15e8c
   13e60:	ea000033 	b	0x13f34
   13e64:	e24f0fbb 	sub	r0, pc, #748	; 0x14158
   13e68:	eb000807 	bl	0x15e8c
   13e6c:	e59a0000 	ldr	r0, [sl]
   13e70:	e3100007 	tst	r0, #7
   13e74:	1afffffa 	bne	0x13e64
   13e78:	e51f92f4 	ldr	r9, [pc, #-756]	; 0x13b8c
   13e7c:	e3a01000 	mov	r1, #0
   13e80:	e5891000 	str	r1, [r9]
   13e84:	e3a02001 	mov	r2, #1
   13e88:	e5892004 	str	r2, [r9, #4]
   13e8c:	e5891008 	str	r1, [r9, #8]
   13e90:	e1a00807 	lsl	r0, r7, #16
   13e94:	e51f32a4 	ldr	r3, [pc, #-676]	; 0x13bf8
   13e98:	e5830000 	str	r0, [r3]
   13e9c:	e1c30282 	bic	r0, r3, r2, lsl #5
   13ea0:	e5808000 	str	r8, [r0]
   13ea4:	e3540001 	cmp	r4, #1
   13ea8:	03a0508b 	moveq	r5, #139	; 0x8b
   13eac:	0a000004 	beq	0x13ec4
   13eb0:	e3540002 	cmp	r4, #2
   13eb4:	03a0509c 	moveq	r5, #156	; 0x9c
   13eb8:	0a000001 	beq	0x13ec4
   13ebc:	e3540004 	cmp	r4, #4
   13ec0:	03a050a6 	moveq	r5, #166	; 0xa6
   13ec4:	e59f0130 	ldr	r0, [pc, #304]	; 0x13ffc
   13ec8:	e5805000 	str	r5, [r0]
   13ecc:	e240002c 	sub	r0, r0, #44	; 0x2c
   13ed0:	e5903000 	ldr	r3, [r0]
   13ed4:	e3833080 	orr	r3, r3, #128	; 0x80
   13ed8:	e5803000 	str	r3, [r0]
   13edc:	ea00000c 	b	0x13f14
   13ee0:	e59a0000 	ldr	r0, [sl]
   13ee4:	e3100004 	tst	r0, #4
   13ee8:	15892008 	strne	r2, [r9, #8]
   13eec:	0a000001 	beq	0x13ef8
   13ef0:	e58a0000 	str	r0, [sl]
   13ef4:	ea000009 	b	0x13f20
   13ef8:	e3100002 	tst	r0, #2
   13efc:	17ef1450 	ubfxne	r1, r0, #8, #16
   13f00:	15891000 	strne	r1, [r9]
   13f04:	1afffff9 	bne	0x13ef0
   13f08:	e3100001 	tst	r0, #1
   13f0c:	15891004 	strne	r1, [r9, #4]
   13f10:	158a0000 	strne	r0, [sl]
   13f14:	e5990004 	ldr	r0, [r9, #4]
   13f18:	e3500000 	cmp	r0, #0
   13f1c:	1affffef 	bne	0x13ee0
   13f20:	e5990008 	ldr	r0, [r9, #8]
   13f24:	e3500000 	cmp	r0, #0
   13f28:	124f0fe7 	subne	r0, pc, #924	; 0x142cc
   13f2c:	0a000002 	beq	0x13f3c
   13f30:	eb0007d5 	bl	0x15e8c
   13f34:	e3e00000 	mvn	r0, #0
   13f38:	e8bd8ffe 	pop	{r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
   13f3c:	e5990000 	ldr	r0, [r9]
   13f40:	e3500000 	cmp	r0, #0
   13f44:	059f00ac 	ldreq	r0, [pc, #172]	; 0x13ff8
   13f48:	05901000 	ldreq	r1, [r0]
   13f4c:	03a00000 	moveq	r0, #0
   13f50:	0a000035 	beq	0x1402c
   13f54:	e5990000 	ldr	r0, [r9]
   13f58:	e5991000 	ldr	r1, [r9]
   13f5c:	e3100c01 	tst	r0, #256	; 0x100
   13f60:	124f0ff2 	subne	r0, pc, #968	; 0x14330
   13f64:	028f0074 	addeq	r0, pc, #116	; 0x13fe0
   13f68:	e5992000 	ldr	r2, [r9]
   13f6c:	e3110008 	tst	r1, #8
   13f70:	124f1ff3 	subne	r1, pc, #972	; 0x14344
v13f74:
   13f74:	028f1064 	addeq	r1, pc, #100	; 0x13fe0
   13f78:	e58d0008 	str	r0, [sp, #8]
   13f7c:	e3120004 	tst	r2, #4
   13f80:	e58d1004 	str	r1, [sp, #4]
   13f84:	124f2ff6 	subne	r2, pc, #984	; 0x14364
   13f88:	028f2050 	addeq	r2, pc, #80	; 0x13fe0
   13f8c:	e58d2000 	str	r2, [sp]
   13f90:	e5990000 	ldr	r0, [r9]
   13f94:	e3100002 	tst	r0, #2
   13f98:	e5990000 	ldr	r0, [r9]
   13f9c:	124f3ffa 	subne	r3, pc, #1000	; 0x1438c
   13fa0:	028f3038 	addeq	r3, pc, #56	; 0x13fe0
   13fa4:	e5991000 	ldr	r1, [r9]
   13fa8:	e3100001 	tst	r0, #1
   13fac:	124f2e3f 	subne	r2, pc, #1008	; 0x143a4
   13fb0:	028f2028 	addeq	r2, pc, #40	; 0x13fe0
   13fb4:	e28f0044 	add	r0, pc, #68	; 0x14000
   13fb8:	eb0007b3 	bl	0x15e8c
   13fbc:	e5990000 	ldr	r0, [r9]
v13fc0:
   13fc0:	e2600000 	rsb	r0, r0, #0
   13fc4:	e8bd8ffe 	pop	{r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}

v13fc8:
   13fc8:	"data should not be NULL\n",0,0,0,0
v13fe4:
   13fe4:	"error length %d\n",0,0,0,0
v13ff8:
   13ff8:	0800341c 	stmdaeq	r0, {r2, r3, r4, sl, ip, sp}
v13ffc:
   13ffc:	0800342c 	stmdaeq	r0, {r2, r3, r5, sl, ip, sp}
v14000:
   14000:	"rsb read failed, flag 0x%x:%s%s%s%s%s !!\n",0,0,0

   1402c:	e1500004 	cmp	r0, r4
   14030:	31a02180 	lslcc	r2, r0, #3
v14034:
   14034:	31a02231 	lsrcc	r2, r1, r2
   14038:	37c62000 	strbcc	r2, [r6, r0]
v1403c:
   1403c:	32800001 	addcc	r0, r0, #1
   14040:	23a00000 	movcs	r0, #0
   14044:	3afffff8 	bcc	0x1402c
   14048:	e8bd8ffe 	pop	{r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}

f1404c:
   1404c:	e92d4010 	push	{r4, lr}
   14050:	eb00073a 	bl	0x15d40
   14054:	e3a0207c 	mov	r2, #124	; 0x7c
   14058:	e3a0103e 	mov	r1, #62	; 0x3e
   1405c:	e3a00000 	mov	r0, #0
   14060:	ebfffe21 	bl	0x138ec
   14064:	e3500000 	cmp	r0, #0
   14068:	18bd8010 	popne	{r4, pc}
   1406c:	e30003a3 	movw	r0, #931	; 0x3a3
   14070:	e3a0102d 	mov	r1, #45	; 0x2d
   14074:	e8bd4010 	pop	{r4, lr}
   14078:	eafffe6d 	b	0x13a34

f1407c:
   1407c:	e3a0002d 	mov	r0, #45	; 0x2d
   14080:	eaffff62 	b	0x13e10

f14084:
   14084:	e3a0002d 	mov	r0, #45	; 0x2d
   14088:	eafffeea 	b	0x13c38

f1408c:
   1408c:	e92d401c 	push	{r2, r3, r4, lr}
   14090:	e3a00000 	mov	r0, #0
   14094:	e5cd0000 	strb	r0, [sp]
   14098:	ebffffeb 	bl	0x1404c
   1409c:	e3a03001 	mov	r3, #1
   140a0:	e1a0200d 	mov	r2, sp
   140a4:	e3a01003 	mov	r1, #3
   140a8:	e3a00000 	mov	r0, #0
   140ac:	ebfffff2 	bl	0x1407c
   140b0:	e3500000 	cmp	r0, #0
   140b4:	0a000002 	beq	0x140c4
   140b8:	e28f0e3d 	add	r0, pc, #976	; 0x14490
   140bc:	eb000772 	bl	0x15e8c
   140c0:	ea00000b 	b	0x140f4
   140c4:	e5dd1000 	ldrb	r1, [sp]
   140c8:	e28f0ff5 	add	r0, pc, #980	; 0x144a4
   140cc:	eb00076e 	bl	0x15e8c
   140d0:	e3a0000a 	mov	r0, #10
   140d4:	e3a03001 	mov	r3, #1
   140d8:	e28d2004 	add	r2, sp, #4
   140dc:	e3a01025 	mov	r1, #37	; 0x25
   140e0:	e5cd0004 	strb	r0, [sp, #4]
   140e4:	e3a00000 	mov	r0, #0
   140e8:	ebffffe5 	bl	0x14084
   140ec:	e3500000 	cmp	r0, #0
   140f0:	0a000000 	beq	0x140f8
   140f4:	e3e00000 	mvn	r0, #0
   140f8:	e8bd801c 	pop	{r2, r3, r4, pc}

f140fc:
   140fc:	e5903000 	ldr	r3, [r0]
   14100:	e1c31001 	bic	r1, r3, r1
   14104:	e1811002 	orr	r1, r1, r2
   14108:	e5801000 	str	r1, [r0]
   1410c:	e12fff1e 	bx	lr

f14110:
   14110:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   14114:	e24dd020 	sub	sp, sp, #32
   14118:	e3a01004 	mov	r1, #4
   1411c:	e28db00c 	add	fp, sp, #12
   14120:	e1a04000 	mov	r4, r0
   14124:	e3a00006 	mov	r0, #6
   14128:	e3a0a004 	mov	sl, #4
   1412c:	e58d1014 	str	r1, [sp, #20]
   14130:	e3a01080 	mov	r1, #128	; 0x80
   14134:	e58d1004 	str	r1, [sp, #4]
   14138:	e3a01000 	mov	r1, #0
   1413c:	e58d1018 	str	r1, [sp, #24]
   14140:	e3a0600b 	mov	r6, #11
   14144:	e58d1008 	str	r1, [sp, #8]
   14148:	e3a010c3 	mov	r1, #195	; 0xc3
   1414c:	e58d1000 	str	r1, [sp]
   14150:	e1a01000 	mov	r1, r0
   14154:	e88b0402 	stm	fp, {r1, sl}
v14158:
   14158:	e594a05c 	ldr	sl, [r4, #92]	; 0x5c
   1415c:	e3a08008 	mov	r8, #8
   14160:	e1a03006 	mov	r3, r6
   14164:	e3a09020 	mov	r9, #32
   14168:	e31a0002 	tst	sl, #2
   1416c:	e3a0701c 	mov	r7, #28
   14170:	e1a0c006 	mov	ip, r6
   14174:	e1a02000 	mov	r2, r0
   14178:	e3a0500c 	mov	r5, #12
   1417c:	e1a0e000 	mov	lr, r0
   14180:	1a0001a1 	bne	0x1480c
   14184:	e594b000 	ldr	fp, [r4]
   14188:	e594a004 	ldr	sl, [r4, #4]
   1418c:	e58da01c 	str	sl, [sp, #28]
   14190:	e35a0003 	cmp	sl, #3
   14194:	e1a010ab 	lsr	r1, fp, #1
   14198:	0a000005 	beq	0x141b4
   1419c:	e35a0006 	cmp	sl, #6
   141a0:	e302b710 	movw	fp, #10000	; 0x2710
   141a4:	0a000075 	beq	0x14380
   141a8:	e35a0007 	cmp	sl, #7
   141ac:	0a0000fc 	beq	0x145a4
   141b0:	ea00016b 	b	0x14764
   141b4:	e300015e 	movw	r0, #350	; 0x15e
   141b8:	e30093e8 	movw	r9, #1000	; 0x3e8
   141bc:	e0020091 	mul	r2, r1, r0
   141c0:	e730f912 	udiv	r0, r2, r9
   141c4:	e0622099 	mls	r2, r9, r0, r2
   141c8:	e3520000 	cmp	r2, #0
   141cc:	13a02001 	movne	r2, #1
   141d0:	e0800002 	add	r0, r0, r2
   141d4:	e6ff0070 	uxth	r0, r0
   141d8:	e58d0004 	str	r0, [sp, #4]
   141dc:	e3010e78 	movw	r0, #7800	; 0x1e78
   141e0:	e0020091 	mul	r2, r1, r0
   141e4:	e730f912 	udiv	r0, r2, r9
   141e8:	e0622099 	mls	r2, r9, r0, r2
   141ec:	e3520000 	cmp	r2, #0
   141f0:	13a02001 	movne	r2, #1
   141f4:	e0800002 	add	r0, r0, r2
   141f8:	e7ef02d0 	ubfx	r0, r0, #5, #16
   141fc:	e58d0000 	str	r0, [sp]
   14200:	e0610201 	rsb	r0, r1, r1, lsl #4
   14204:	e73af910 	udiv	sl, r0, r9
   14208:	e0650a99 	mls	r5, r9, sl, r0
   1420c:	e3550000 	cmp	r5, #0
   14210:	13a00001 	movne	r0, #1
   14214:	03a00000 	moveq	r0, #0
   14218:	e080000a 	add	r0, r0, sl
   1421c:	e3550000 	cmp	r5, #0
   14220:	e20030ff 	and	r3, r0, #255	; 0xff
   14224:	13a00001 	movne	r0, #1
   14228:	03a00000 	moveq	r0, #0
   1422c:	e080000a 	add	r0, r0, sl
   14230:	e200c0ff 	and	ip, r0, #255	; 0xff
   14234:	e3a00002 	mov	r0, #2
   14238:	e58d0014 	str	r0, [sp, #20]
   1423c:	e3a00026 	mov	r0, #38	; 0x26
   14240:	e0020091 	mul	r2, r1, r0
   14244:	e730f912 	udiv	r0, r2, r9
   14248:	e0622099 	mls	r2, r9, r0, r2
   1424c:	e3520000 	cmp	r2, #0
   14250:	13a02001 	movne	r2, #1
   14254:	e0800002 	add	r0, r0, r2
   14258:	e20070ff 	and	r7, r0, #255	; 0xff
   1425c:	e1a00181 	lsl	r0, r1, #3
   14260:	e73ef910 	udiv	lr, r0, r9
   14264:	e0600e99 	mls	r0, r9, lr, r0
   14268:	e3500000 	cmp	r0, #0
   1426c:	13a02001 	movne	r2, #1
   14270:	03a02000 	moveq	r2, #0
   14274:	e082200e 	add	r2, r2, lr
   14278:	e20220ff 	and	r2, r2, #255	; 0xff
   1427c:	e3520004 	cmp	r2, #4
   14280:	33a02004 	movcc	r2, #4
   14284:	e3550000 	cmp	r5, #0
   14288:	13a05001 	movne	r5, #1
   1428c:	e3500000 	cmp	r0, #0
   14290:	13a00001 	movne	r0, #1
   14294:	e080000e 	add	r0, r0, lr
   14298:	e200e0ff 	and	lr, r0, #255	; 0xff
   1429c:	e5940014 	ldr	r0, [r4, #20]
   142a0:	e35e0004 	cmp	lr, #4
   142a4:	e3100004 	tst	r0, #4
   142a8:	33a0e004 	movcc	lr, #4
   142ac:	e085500a 	add	r5, r5, sl
   142b0:	e0810101 	add	r0, r1, r1, lsl #2
   142b4:	e20550ff 	and	r5, r5, #255	; 0xff
   142b8:	e1a0a080 	lsl	sl, r0, #1
   142bc:	e730f91a 	udiv	r0, sl, r9
   142c0:	e06aa099 	mls	sl, r9, r0, sl
   142c4:	0a000009 	beq	0x142f0
   142c8:	e35a0000 	cmp	sl, #0
v142cc:
   142cc:	13a0a001 	movne	sl, #1
   142d0:	e080000a 	add	r0, r0, sl
   142d4:	e1a0a001 	mov	sl, r1
   142d8:	e3a01032 	mov	r1, #50	; 0x32
   142dc:	e20000ff 	and	r0, r0, #255	; 0xff
   142e0:	e3500004 	cmp	r0, #4
   142e4:	e00a019a 	mul	sl, sl, r1
   142e8:	33a00004 	movcc	r0, #4
   142ec:	ea000007 	b	0x14310
   142f0:	e35a0000 	cmp	sl, #0
   142f4:	13a0a001 	movne	sl, #1
   142f8:	e080000a 	add	r0, r0, sl
   142fc:	e20000ff 	and	r0, r0, #255	; 0xff
   14300:	e081a101 	add	sl, r1, r1, lsl #2
   14304:	e3500004 	cmp	r0, #4
   14308:	e1a0a18a 	lsl	sl, sl, #3
   1430c:	33a00004 	movcc	r0, #4
   14310:	e731f91a 	udiv	r1, sl, r9
   14314:	e069a199 	mls	r9, r9, r1, sl
   14318:	e3590000 	cmp	r9, #0
   1431c:	13a09001 	movne	r9, #1
   14320:	e35b0e19 	cmp	fp, #400	; 0x190
   14324:	e0899001 	add	r9, r9, r1
   14328:	93a06006 	movls	r6, #6
   1432c:	e20990ff 	and	r9, r9, #255	; 0xff
v14330:
   14330:	93a08005 	movls	r8, #5
   14334:	93a01003 	movls	r1, #3
   14338:	9a000005 	bls	0x14354
   1433c:	e3001215 	movw	r1, #533	; 0x215
   14340:	e151000b 	cmp	r1, fp
v14344:
   14344:	23a06008 	movcs	r6, #8
   14348:	23a08006 	movcs	r8, #6
   1434c:	23a01004 	movcs	r1, #4
   14350:	3a000003 	bcc	0x14364

f14354:
   14354:	e28db00c 	add	fp, sp, #12
   14358:	e3a0a003 	mov	sl, #3
   1435c:	e88b0402 	stm	fp, {r1, sl}
   14360:	ea0000ff 	b	0x14764
v14364:
   14364:	e35b0fa7 	cmp	fp, #668	; 0x29c
   14368:	2a0000fd 	bcs	0x14764
   1436c:	e3a0600a 	mov	r6, #10
   14370:	e3a08007 	mov	r8, #7
   14374:	e3a0a005 	mov	sl, #5
   14378:	e58da00c 	str	sl, [sp, #12]
   1437c:	ea0000f8 	b	0x14764
   14380:	e3a00002 	mov	r0, #2
   14384:	e58d0010 	str	r0, [sp, #16]
   14388:	e3a000d2 	mov	r0, #210	; 0xd2
v1438c:
   1438c:	e3a06008 	mov	r6, #8
   14390:	e3a08004 	mov	r8, #4
   14394:	e30023e8 	movw	r2, #1000	; 0x3e8
   14398:	e0000091 	mul	r0, r1, r0
   1439c:	e733f210 	udiv	r3, r0, r2
   143a0:	e0600392 	mls	r0, r2, r3, r0
v143a4:
   143a4:	e58d800c 	str	r8, [sp, #12]
   143a8:	e3500000 	cmp	r0, #0
   143ac:	13a00001 	movne	r0, #1
   143b0:	e0800003 	add	r0, r0, r3
   143b4:	e6ff0070 	uxth	r0, r0
   143b8:	e58d0004 	str	r0, [sp, #4]
   143bc:	e0810181 	add	r0, r1, r1, lsl #3
   143c0:	e0800201 	add	r0, r0, r1, lsl #4
   143c4:	e733fb10 	udiv	r3, r0, fp
   143c8:	e060039b 	mls	r0, fp, r3, r0
   143cc:	e3500000 	cmp	r0, #0
   143d0:	13a00001 	movne	r0, #1
   143d4:	e0800003 	add	r0, r0, r3
   143d8:	e20000ff 	and	r0, r0, #255	; 0xff
   143dc:	e58d0008 	str	r0, [sp, #8]
   143e0:	e58d0018 	str	r0, [sp, #24]
   143e4:	e3000f3c 	movw	r0, #3900	; 0xf3c
   143e8:	e0030091 	mul	r3, r1, r0
   143ec:	e730f213 	udiv	r0, r3, r2
   143f0:	e0633092 	mls	r3, r2, r0, r3
   143f4:	e3530000 	cmp	r3, #0
   143f8:	13a03001 	movne	r3, #1
   143fc:	e0800003 	add	r0, r0, r3
   14400:	e7ef02d0 	ubfx	r0, r0, #5, #16
   14404:	e58d0000 	str	r0, [sp]
   14408:	e3a0002a 	mov	r0, #42	; 0x2a
   1440c:	e0030091 	mul	r3, r1, r0
   14410:	e730f213 	udiv	r0, r3, r2
   14414:	e0633092 	mls	r3, r2, r0, r3
   14418:	e3530000 	cmp	r3, #0
   1441c:	13a03001 	movne	r3, #1
   14420:	e0800003 	add	r0, r0, r3
   14424:	e20070ff 	and	r7, r0, #255	; 0xff
   14428:	e3570003 	cmp	r7, #3
   1442c:	e1a00181 	lsl	r0, r1, #3
   14430:	33a07003 	movcc	r7, #3
   14434:	e739f210 	udiv	r9, r0, r2
   14438:	e06b0992 	mls	fp, r2, r9, r0
   1443c:	e3a00002 	mov	r0, #2
   14440:	e58d0014 	str	r0, [sp, #20]
   14444:	e35b0000 	cmp	fp, #0
   14448:	13a00001 	movne	r0, #1
   1444c:	03a00000 	moveq	r0, #0
   14450:	e0800009 	add	r0, r0, r9
   14454:	e20000ff 	and	r0, r0, #255	; 0xff
   14458:	e3500002 	cmp	r0, #2
   1445c:	33a00002 	movcc	r0, #2
   14460:	e2800001 	add	r0, r0, #1
   14464:	e200e0ff 	and	lr, r0, #255	; 0xff
   14468:	e0810081 	add	r0, r1, r1, lsl #1
   1446c:	e1a03180 	lsl	r3, r0, #3
   14470:	e730f213 	udiv	r0, r3, r2
   14474:	e0633092 	mls	r3, r2, r0, r3
   14478:	e3530000 	cmp	r3, #0
   1447c:	13a03001 	movne	r3, #1
   14480:	e0800003 	add	r0, r0, r3
   14484:	e20030ff 	and	r3, r0, #255	; 0xff
   14488:	e3530003 	cmp	r3, #3
   1448c:	ea000007 	b	0x144b0

v14490:
   14490:	"Get pmu ID failed\n",0,0
v144a4:
   144a4:	"pm id=%x\n",0,0

   144b0:	e0810181 	add	r0, r1, r1, lsl #3
   144b4:	33a03003 	movcc	r3, #3
   144b8:	e0805080 	add	r5, r0, r0, lsl #1
   144bc:	e730f215 	udiv	r0, r5, r2
   144c0:	e0655092 	mls	r5, r2, r0, r5
   144c4:	e3550000 	cmp	r5, #0
   144c8:	13a05001 	movne	r5, #1
   144cc:	e0800005 	add	r0, r0, r5
   144d0:	e200c0ff 	and	ip, r0, #255	; 0xff
   144d4:	e35c0003 	cmp	ip, #3
   144d8:	e0615201 	rsb	r5, r1, r1, lsl #4
   144dc:	33a0c003 	movcc	ip, #3
   144e0:	e730f215 	udiv	r0, r5, r2
   144e4:	e0655092 	mls	r5, r2, r0, r5
   144e8:	e3550000 	cmp	r5, #0
   144ec:	13a05001 	movne	r5, #1
   144f0:	e0800005 	add	r0, r0, r5
   144f4:	e20050ff 	and	r5, r0, #255	; 0xff
   144f8:	e0810101 	add	r0, r1, r1, lsl #2
   144fc:	e3550003 	cmp	r5, #3
   14500:	e1a0a080 	lsl	sl, r0, #1
   14504:	33a05003 	movcc	r5, #3
   14508:	e30003e8 	movw	r0, #1000	; 0x3e8
   1450c:	e732f01a 	udiv	r2, sl, r0
   14510:	e06aa290 	mls	sl, r0, r2, sl
   14514:	e35a0000 	cmp	sl, #0
   14518:	13a00001 	movne	r0, #1
   1451c:	03a00000 	moveq	r0, #0
   14520:	e0800002 	add	r0, r0, r2
   14524:	e20000ff 	and	r0, r0, #255	; 0xff
   14528:	e3500002 	cmp	r0, #2
   1452c:	33a00002 	movcc	r0, #2
   14530:	e35100c8 	cmp	r1, #200	; 0xc8
   14534:	8a000004 	bhi	0x1454c
   14538:	e35a0000 	cmp	sl, #0
   1453c:	13a09001 	movne	r9, #1
   14540:	03a09000 	moveq	r9, #0
   14544:	e0822009 	add	r2, r2, r9
   14548:	ea000003 	b	0x1455c
   1454c:	e35b0000 	cmp	fp, #0
   14550:	13a02001 	movne	r2, #1
   14554:	03a02000 	moveq	r2, #0
   14558:	e0822009 	add	r2, r2, r9
   1455c:	e20220ff 	and	r2, r2, #255	; 0xff
   14560:	e3520002 	cmp	r2, #2
   14564:	33a02002 	movcc	r2, #2
   14568:	e35100a6 	cmp	r1, #166	; 0xa6
   1456c:	83a0a032 	movhi	sl, #50	; 0x32
   14570:	90619201 	rsbls	r9, r1, r1, lsl #4
   14574:	800a0a91 	mulhi	sl, r1, sl
   14578:	91a0a109 	lslls	sl, r9, #2
   1457c:	e30093e8 	movw	r9, #1000	; 0x3e8
   14580:	e731f91a 	udiv	r1, sl, r9
   14584:	e069a199 	mls	r9, r9, r1, sl
   14588:	e3590000 	cmp	r9, #0
   1458c:	13a09001 	movne	r9, #1
   14590:	e0899001 	add	r9, r9, r1
   14594:	e20990ff 	and	r9, r9, #255	; 0xff
   14598:	e3590008 	cmp	r9, #8
   1459c:	33a09008 	movcc	r9, #8
   145a0:	ea00006f 	b	0x14764
   145a4:	e3a00003 	mov	r0, #3
   145a8:	e58d0010 	str	r0, [sp, #16]
   145ac:	e3a00002 	mov	r0, #2
   145b0:	e58d0014 	str	r0, [sp, #20]
   145b4:	e0810181 	add	r0, r1, r1, lsl #3
   145b8:	e3a0600c 	mov	r6, #12
   145bc:	e0800201 	add	r0, r0, r1, lsl #4
   145c0:	e3a08006 	mov	r8, #6
   145c4:	e732fb10 	udiv	r2, r0, fp
   145c8:	e060029b 	mls	r0, fp, r2, r0
   145cc:	e30033e8 	movw	r3, #1000	; 0x3e8
   145d0:	e3500000 	cmp	r0, #0
   145d4:	13a00001 	movne	r0, #1
   145d8:	e0800002 	add	r0, r0, r2
   145dc:	e20000ff 	and	r0, r0, #255	; 0xff
   145e0:	e58d0008 	str	r0, [sp, #8]
   145e4:	e58d0018 	str	r0, [sp, #24]
   145e8:	e3a000d2 	mov	r0, #210	; 0xd2
   145ec:	e0020091 	mul	r2, r1, r0
   145f0:	e730f312 	udiv	r0, r2, r3
   145f4:	e0622093 	mls	r2, r3, r0, r2
   145f8:	e3520000 	cmp	r2, #0
   145fc:	13a02001 	movne	r2, #1
   14600:	e0800002 	add	r0, r0, r2
   14604:	e6ff0070 	uxth	r0, r0
   14608:	e58d0004 	str	r0, [sp, #4]
   1460c:	e1a00181 	lsl	r0, r1, #3
   14610:	e732f310 	udiv	r2, r0, r3
   14614:	e0600293 	mls	r0, r3, r2, r0
   14618:	e0615201 	rsb	r5, r1, r1, lsl #4
   1461c:	e739f315 	udiv	r9, r5, r3
   14620:	e06b5993 	mls	fp, r3, r9, r5
   14624:	e3500000 	cmp	r0, #0
   14628:	e1a0a003 	mov	sl, r3
   1462c:	13a03001 	movne	r3, #1
   14630:	03a03000 	moveq	r3, #0
   14634:	e0833002 	add	r3, r3, r2
   14638:	e203e0ff 	and	lr, r3, #255	; 0xff
   1463c:	e0813081 	add	r3, r1, r1, lsl #1
   14640:	e35e0004 	cmp	lr, #4
   14644:	e1a05183 	lsl	r5, r3, #3
   14648:	33a0e004 	movcc	lr, #4
   1464c:	e733fa15 	udiv	r3, r5, sl
   14650:	e065539a 	mls	r5, sl, r3, r5
   14654:	e3550000 	cmp	r5, #0
   14658:	13a05001 	movne	r5, #1
   1465c:	e0833005 	add	r3, r3, r5
   14660:	e20330ff 	and	r3, r3, #255	; 0xff
   14664:	e0815181 	add	r5, r1, r1, lsl #3
   14668:	e3530003 	cmp	r3, #3
   1466c:	e0857085 	add	r7, r5, r5, lsl #1
   14670:	33a03003 	movcc	r3, #3
   14674:	e735fa17 	udiv	r5, r7, sl
   14678:	e067759a 	mls	r7, sl, r5, r7
   1467c:	e3570000 	cmp	r7, #0
   14680:	13a07001 	movne	r7, #1
   14684:	e0855007 	add	r5, r5, r7
   14688:	e205c0ff 	and	ip, r5, #255	; 0xff
   1468c:	e3a0502a 	mov	r5, #42	; 0x2a
   14690:	e35c0003 	cmp	ip, #3
   14694:	e0070591 	mul	r7, r1, r5
   14698:	33a0c003 	movcc	ip, #3
   1469c:	e735fa17 	udiv	r5, r7, sl
   146a0:	e067759a 	mls	r7, sl, r5, r7
   146a4:	e3570000 	cmp	r7, #0
   146a8:	13a07001 	movne	r7, #1
   146ac:	e0855007 	add	r5, r5, r7
   146b0:	e20570ff 	and	r7, r5, #255	; 0xff
   146b4:	e3570003 	cmp	r7, #3
   146b8:	33a07003 	movcc	r7, #3
   146bc:	e35b0000 	cmp	fp, #0
   146c0:	13a05001 	movne	r5, #1
   146c4:	03a05000 	moveq	r5, #0
   146c8:	e0855009 	add	r5, r5, r9
   146cc:	e20550ff 	and	r5, r5, #255	; 0xff
   146d0:	e3550004 	cmp	r5, #4
   146d4:	33a05004 	movcc	r5, #4
   146d8:	e3500000 	cmp	r0, #0
   146dc:	13a00001 	movne	r0, #1
   146e0:	e0800002 	add	r0, r0, r2
   146e4:	e20020ff 	and	r2, r0, #255	; 0xff
   146e8:	e0810101 	add	r0, r1, r1, lsl #2
   146ec:	e3520004 	cmp	r2, #4
   146f0:	e1a09080 	lsl	r9, r0, #1
   146f4:	33a02004 	movcc	r2, #4
   146f8:	e730fa19 	udiv	r0, r9, sl
   146fc:	e069909a 	mls	r9, sl, r0, r9
   14700:	e3590000 	cmp	r9, #0
   14704:	13a09001 	movne	r9, #1
   14708:	e0800009 	add	r0, r0, r9
   1470c:	e3a09032 	mov	r9, #50	; 0x32
   14710:	e20000ff 	and	r0, r0, #255	; 0xff
   14714:	e00b0991 	mul	fp, r1, r9
   14718:	e3500004 	cmp	r0, #4
   1471c:	33a00004 	movcc	r0, #4
   14720:	e739fa1b 	udiv	r9, fp, sl
   14724:	e06bb99a 	mls	fp, sl, r9, fp
   14728:	e35b0000 	cmp	fp, #0
   1472c:	13a0b001 	movne	fp, #1
   14730:	e089900b 	add	r9, r9, fp
   14734:	e300bf3c 	movw	fp, #3900	; 0xf3c
   14738:	e20990ff 	and	r9, r9, #255	; 0xff
   1473c:	e00b0b91 	mul	fp, r1, fp
   14740:	e3590008 	cmp	r9, #8
   14744:	33a09008 	movcc	r9, #8
   14748:	e731fa1b 	udiv	r1, fp, sl
   1474c:	e06ab19a 	mls	sl, sl, r1, fp
   14750:	e35a0000 	cmp	sl, #0
   14754:	13a0a001 	movne	sl, #1
   14758:	e081100a 	add	r1, r1, sl
   1475c:	e7ef12d1 	ubfx	r1, r1, #5, #16
   14760:	e58d1000 	str	r1, [sp]
   14764:	e186a288 	orr	sl, r6, r8, lsl #5
   14768:	e59d1014 	ldr	r1, [sp, #20]
   1476c:	e18a3503 	orr	r3, sl, r3, lsl #10
   14770:	e1830780 	orr	r0, r3, r0, lsl #15
   14774:	e1800a09 	orr	r0, r0, r9, lsl #20
   14778:	e1800c81 	orr	r0, r0, r1, lsl #25
   1477c:	e5840028 	str	r0, [r4, #40]	; 0x28
   14780:	e187028c 	orr	r0, r7, ip, lsl #5
   14784:	e1800505 	orr	r0, r0, r5, lsl #10
   14788:	e180078e 	orr	r0, r0, lr, lsl #15
   1478c:	e1801a02 	orr	r1, r0, r2, lsl #20
   14790:	e59d0018 	ldr	r0, [sp, #24]
   14794:	e1811c80 	orr	r1, r1, r0, lsl #25
   14798:	e59d0008 	ldr	r0, [sp, #8]
   1479c:	e1810e00 	orr	r0, r1, r0, lsl #28
   147a0:	e584002c 	str	r0, [r4, #44]	; 0x2c
   147a4:	e1cd00d0 	ldrd	r0, [sp]
   147a8:	e1801601 	orr	r1, r0, r1, lsl #12
   147ac:	e59d000c 	ldr	r0, [sp, #12]
   147b0:	e1811a80 	orr	r1, r1, r0, lsl #21
   147b4:	e59d0010 	ldr	r0, [sp, #16]
   147b8:	e1810d00 	orr	r0, r1, r0, lsl #26
   147bc:	e5840030 	str	r0, [r4, #48]	; 0x30
   147c0:	e59d001c 	ldr	r0, [sp, #28]
   147c4:	e3500003 	cmp	r0, #3
   147c8:	0a000011 	beq	0x14814
   147cc:	e1a00285 	lsl	r0, r5, #5
   147d0:	e3a010e0 	mov	r1, #224	; 0xe0
   147d4:	e2402040 	sub	r2, r0, #64	; 0x40
   147d8:	e284001c 	add	r0, r4, #28
   147dc:	ebfffe46 	bl	0x140fc
   147e0:	e5940004 	ldr	r0, [r4, #4]
   147e4:	e3a01007 	mov	r1, #7
   147e8:	e3500006 	cmp	r0, #6
   147ec:	e284001c 	add	r0, r4, #28
   147f0:	03a02002 	moveq	r2, #2
   147f4:	13a02003 	movne	r2, #3
   147f8:	ebfffe3f 	bl	0x140fc
   147fc:	e2462002 	sub	r2, r6, #2
   14800:	e3a0100f 	mov	r1, #15
   14804:	e2840020 	add	r0, r4, #32
   14808:	ebfffe3b 	bl	0x140fc
   1480c:	e28dd020 	add	sp, sp, #32
   14810:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   14814:	e1a00188 	lsl	r0, r8, #3
   14818:	e3a01038 	mov	r1, #56	; 0x38
   1481c:	e2402028 	sub	r2, r0, #40	; 0x28
   14820:	e2840020 	add	r0, r4, #32
   14824:	ebfffe34 	bl	0x140fc
   14828:	e1a00485 	lsl	r0, r5, #9
   1482c:	e3001e00 	movw	r1, #3584	; 0xe00
   14830:	e2402b02 	sub	r2, r0, #2048	; 0x800
   14834:	e2840018 	add	r0, r4, #24
   14838:	ebfffe2f 	bl	0x140fc
   1483c:	e2465004 	sub	r5, r6, #4
   14840:	e3a01070 	mov	r1, #112	; 0x70
   14844:	e1a00e85 	lsl	r0, r5, #29
   14848:	e1a02ca0 	lsr	r2, r0, #25
   1484c:	e2840018 	add	r0, r4, #24
   14850:	ebfffe29 	bl	0x140fc
   14854:	e1a001c5 	asr	r0, r5, #3
   14858:	e3a01004 	mov	r1, #4
   1485c:	e1a02100 	lsl	r2, r0, #2
   14860:	e2840018 	add	r0, r4, #24
   14864:	eaffffe7 	b	0x14808

f14868:
   14868:	e92d4030 	push	{r4, r5, lr}
   1486c:	e59f2334 	ldr	r2, [pc, #820]	; 0x14ba8
   14870:	e3a05000 	mov	r5, #0
   14874:	e1a03005 	mov	r3, r5
   14878:	e732f210 	udiv	r2, r0, r2
   1487c:	e3510001 	cmp	r1, #1
   14880:	13500e1e 	cmpne	r0, #480	; 0x1e0
   14884:	859f1320 	ldrhi	r1, [pc, #800]	; 0x14bac
   14888:	93a03001 	movls	r3, #1
   1488c:	8732f110 	udivhi	r2, r0, r1
   14890:	e3a01406 	mov	r1, #100663296	; 0x6000000
   14894:	e1a00903 	lsl	r0, r3, #18
   14898:	e1800402 	orr	r0, r0, r2, lsl #8
   1489c:	e3800102 	orr	r0, r0, #-2147483648	; 0x80000000
   148a0:	e5810014 	str	r0, [r1, #20]
   148a4:	e3800101 	orr	r0, r0, #1073741824	; 0x40000000
   148a8:	e5810014 	str	r0, [r1, #20]
   148ac:	e3a04005 	mov	r4, #5
   148b0:	e591009c 	ldr	r0, [r1, #156]	; 0x9c
   148b4:	e1a00430 	lsr	r0, r0, r4
   148b8:	e3100001 	tst	r0, #1
   148bc:	0afffffb 	beq	0x148b0
   148c0:	e59f02e4 	ldr	r0, [pc, #740]	; 0x14bac
   148c4:	e2851001 	add	r1, r5, #1
   148c8:	e0000092 	mul	r0, r2, r0
   148cc:	e730f110 	udiv	r0, r0, r1
   148d0:	e2831001 	add	r1, r3, #1
   148d4:	e730f110 	udiv	r0, r0, r1
   148d8:	e8bd8030 	pop	{r4, r5, pc}

f148dc:
   148dc:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   148e0:	e59f52c8 	ldr	r5, [pc, #712]	; 0x14bb0
   148e4:	e1a04000 	mov	r4, r0
   148e8:	e5950000 	ldr	r0, [r5]
   148ec:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
   148f0:	e5850000 	str	r0, [r5]
   148f4:	e2857f47 	add	r7, r5, #284	; 0x11c
   148f8:	e5970000 	ldr	r0, [r7]
   148fc:	e3c00901 	bic	r0, r0, #16384	; 0x4000
   14900:	e5870000 	str	r0, [r7]
   14904:	e5940000 	ldr	r0, [r4]
   14908:	e3a06001 	mov	r6, #1
   1490c:	e5942048 	ldr	r2, [r4, #72]	; 0x48
   14910:	e3500e19 	cmp	r0, #400	; 0x190
   14914:	e1c62002 	bic	r2, r6, r2
   14918:	93a01001 	movls	r1, #1
   1491c:	83a01000 	movhi	r1, #0
   14920:	e1911002 	orrs	r1, r1, r2
   14924:	159f1288 	ldrne	r1, [pc, #648]	; 0x14bb4
   14928:	059f1288 	ldreq	r1, [pc, #648]	; 0x14bb8
   1492c:	e0000190 	mul	r0, r0, r1
   14930:	13a01000 	movne	r1, #0
   14934:	03a01001 	moveq	r1, #1
   14938:	01a000a0 	lsreq	r0, r0, #1
   1493c:	ebffffc9 	bl	0x14868
   14940:	e594005c 	ldr	r0, [r4, #92]	; 0x5c
   14944:	e310070f 	tst	r0, #3932160	; 0x3c0000
   14948:	0a000011 	beq	0x14994
   1494c:	e28f0f9a 	add	r0, pc, #616	; 0x14bbc
   14950:	eb00054d 	bl	0x15e8c
   14954:	e3a02406 	mov	r2, #100663296	; 0x6000000
   14958:	e5920014 	ldr	r0, [r2, #20]
   1495c:	e594105c 	ldr	r1, [r4, #92]	; 0x5c
   14960:	e2000801 	and	r0, r0, #65536	; 0x10000
   14964:	e3110701 	tst	r1, #262144	; 0x40000
   14968:	159f1264 	ldrne	r1, [pc, #612]	; 0x14bd4
   1496c:	e1a00820 	lsr	r0, r0, #16
   14970:	0a00005a 	beq	0x14ae0
   14974:	e1810980 	orr	r0, r1, r0, lsl #19
   14978:	e5820114 	str	r0, [r2, #276]	; 0x114
   1497c:	e5920014 	ldr	r0, [r2, #20]
   14980:	e3800441 	orr	r0, r0, #1090519040	; 0x41000000
   14984:	e5820014 	str	r0, [r2, #20]
   14988:	e5920014 	ldr	r0, [r2, #20]
   1498c:	e3100101 	tst	r0, #1073741824	; 0x40000000
   14990:	1afffffc 	bne	0x14988
   14994:	e3a00802 	mov	r0, #131072	; 0x20000
   14998:	ebfffaf2 	bl	0x13568
   1499c:	e59f8234 	ldr	r8, [pc, #564]	; 0x14bd8
   149a0:	e5980000 	ldr	r0, [r8]
   149a4:	e3c00901 	bic	r0, r0, #16384	; 0x4000
   149a8:	e5880000 	str	r0, [r8]
   149ac:	e5970000 	ldr	r0, [r7]
   149b0:	e3c00901 	bic	r0, r0, #16384	; 0x4000
   149b4:	e5870000 	str	r0, [r7]
   149b8:	e3a00014 	mov	r0, #20
   149bc:	ebfffae9 	bl	0x13568
   149c0:	e5970000 	ldr	r0, [r7]
   149c4:	e3800901 	orr	r0, r0, #16384	; 0x4000
   149c8:	e5870000 	str	r0, [r7]
   149cc:	e5980000 	ldr	r0, [r8]
   149d0:	e3800901 	orr	r0, r0, #16384	; 0x4000
   149d4:	e5880000 	str	r0, [r8]
   149d8:	e3a00014 	mov	r0, #20
   149dc:	ebfffae1 	bl	0x13568
   149e0:	e59f01f8 	ldr	r0, [pc, #504]	; 0x14be0
   149e4:	e59f31f0 	ldr	r3, [pc, #496]	; 0x14bdc
   149e8:	e5803250 	str	r3, [r0, #592]	; 0x250
   149ec:	e3a0701f 	mov	r7, #31
   149f0:	e5807258 	str	r7, [r0, #600]	; 0x258
   149f4:	e187cc07 	orr	ip, r7, r7, lsl #24
   149f8:	e580c25c 	str	ip, [r0, #604]	; 0x25c
   149fc:	e3a010ff 	mov	r1, #255	; 0xff
   14a00:	e5801260 	str	r1, [r0, #608]	; 0x260
   14a04:	e281e40f 	add	lr, r1, #251658240	; 0xf000000
   14a08:	e580e264 	str	lr, [r0, #612]	; 0x264
   14a0c:	e5801268 	str	r1, [r0, #616]	; 0x268
   14a10:	e18e2840 	orr	r2, lr, r0, asr #16
   14a14:	e580226c 	str	r2, [r0, #620]	; 0x26c
   14a18:	e2800a01 	add	r0, r0, #4096	; 0x1000
   14a1c:	e5803250 	str	r3, [r0, #592]	; 0x250
   14a20:	e5807258 	str	r7, [r0, #600]	; 0x258
   14a24:	e580c25c 	str	ip, [r0, #604]	; 0x25c
   14a28:	e5801260 	str	r1, [r0, #608]	; 0x260
   14a2c:	e580e264 	str	lr, [r0, #612]	; 0x264
   14a30:	e5801268 	str	r1, [r0, #616]	; 0x268
   14a34:	e580226c 	str	r2, [r0, #620]	; 0x26c
   14a38:	e3a00014 	mov	r0, #20
   14a3c:	ebfffac9 	bl	0x13568
   14a40:	e3a00a13 	mov	r0, #77824	; 0x13000
   14a44:	e5850000 	str	r0, [r5]
   14a48:	e5950000 	ldr	r0, [r5]
   14a4c:	e3100801 	tst	r0, #65536	; 0x10000
   14a50:	1afffffc 	bne	0x14a48
   14a54:	e5950000 	ldr	r0, [r5]
   14a58:	e3800102 	orr	r0, r0, #-2147483648	; 0x80000000
   14a5c:	e5850000 	str	r0, [r5]
   14a60:	e5941048 	ldr	r1, [r4, #72]	; 0x48
   14a64:	e5940000 	ldr	r0, [r4]
   14a68:	e1c61001 	bic	r1, r6, r1
   14a6c:	e59f6170 	ldr	r6, [pc, #368]	; 0x14be4
   14a70:	e3500e19 	cmp	r0, #400	; 0x190
   14a74:	93a00001 	movls	r0, #1
   14a78:	83a00000 	movhi	r0, #0
   14a7c:	e1900001 	orrs	r0, r0, r1
   14a80:	e5960004 	ldr	r0, [r6, #4]
   14a84:	13800101 	orrne	r0, r0, #1073741824	; 0x40000000
   14a88:	13800901 	orrne	r0, r0, #16384	; 0x4000
   14a8c:	03c00101 	biceq	r0, r0, #1073741824	; 0x40000000
   14a90:	03c00901 	biceq	r0, r0, #16384	; 0x4000
   14a94:	e5860004 	str	r0, [r6, #4]
   14a98:	13a00002 	movne	r0, #2
   14a9c:	03a00000 	moveq	r0, #0
   14aa0:	e5860010 	str	r0, [r6, #16]
   14aa4:	e5960004 	ldr	r0, [r6, #4]
   14aa8:	e3c05102 	bic	r5, r0, #-2147483648	; 0x80000000
   14aac:	e3c55902 	bic	r5, r5, #32768	; 0x8000
   14ab0:	e5865004 	str	r5, [r6, #4]
   14ab4:	e3a00014 	mov	r0, #20
   14ab8:	ebfffaaa 	bl	0x13568
   14abc:	e5940014 	ldr	r0, [r4, #20]
   14ac0:	e7e30450 	ubfx	r0, r0, #8, #4
   14ac4:	e3500002 	cmp	r0, #2
   14ac8:	03850102 	orreq	r0, r5, #-2147483648	; 0x80000000
   14acc:	03800902 	orreq	r0, r0, #32768	; 0x8000
   14ad0:	13850902 	orrne	r0, r5, #32768	; 0x8000
   14ad4:	e5860004 	str	r0, [r6, #4]
   14ad8:	e3a00001 	mov	r0, #1
   14adc:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
   14ae0:	e3110702 	tst	r1, #524288	; 0x80000
   14ae4:	159f10fc 	ldrne	r1, [pc, #252]	; 0x14be8
   14ae8:	1affffa1 	bne	0x14974
   14aec:	e3110601 	tst	r1, #1048576	; 0x100000
   14af0:	159f10f4 	ldrne	r1, [pc, #244]	; 0x14bec
   14af4:	1affff9e 	bne	0x14974
   14af8:	e3110602 	tst	r1, #2097152	; 0x200000
   14afc:	159f10ec 	ldrne	r1, [pc, #236]	; 0x14bf0
   14b00:	1affff9b 	bne	0x14974
   14b04:	eaffff9c 	b	0x1497c

f14b08:
   14b08:	e5902004 	ldr	r2, [r0, #4]
   14b0c:	e3a01501 	mov	r1, #4194304	; 0x400000
   14b10:	e2022007 	and	r2, r2, #7
   14b14:	e1812802 	orr	r2, r1, r2, lsl #16
   14b18:	e5901010 	ldr	r1, [r0, #16]
   14b1c:	e7e03e51 	ubfx	r3, r1, #28, #1
   14b20:	e1822103 	orr	r2, r2, r3, lsl #2
   14b24:	e7e73a51 	ubfx	r3, r1, #20, #8
   14b28:	e2433001 	sub	r3, r3, #1
   14b2c:	e203300f 	and	r3, r3, #15
   14b30:	e7e31851 	ubfx	r1, r1, #16, #4
   14b34:	e1823203 	orr	r3, r2, r3, lsl #4
   14b38:	e5902014 	ldr	r2, [r0, #20]
   14b3c:	e3120001 	tst	r2, #1
   14b40:	13a00001 	movne	r0, #1
   14b44:	03a00003 	moveq	r0, #3
   14b48:	e3510001 	cmp	r1, #1
   14b4c:	e1830600 	orr	r0, r3, r0, lsl #12
   14b50:	e7e13652 	ubfx	r3, r2, #12, #2
   14b54:	e2433001 	sub	r3, r3, #1
   14b58:	e1800003 	orr	r0, r0, r3
   14b5c:	03800c07 	orreq	r0, r0, #1792	; 0x700
   14b60:	0a000008 	beq	0x14b88
   14b64:	e3510002 	cmp	r1, #2
   14b68:	03800b02 	orreq	r0, r0, #2048	; 0x800
   14b6c:	0a000005 	beq	0x14b88
   14b70:	e3510004 	cmp	r1, #4
   14b74:	03800c09 	orreq	r0, r0, #2304	; 0x900
   14b78:	0a000002 	beq	0x14b88
   14b7c:	e3510008 	cmp	r1, #8
   14b80:	13800c06 	orrne	r0, r0, #1536	; 0x600
   14b84:	03800c0a 	orreq	r0, r0, #2560	; 0xa00
   14b88:	e7e31452 	ubfx	r1, r2, #8, #4
   14b8c:	e3510002 	cmp	r1, #2
   14b90:	e59f104c 	ldr	r1, [pc, #76]	; 0x14be4
   14b94:	03800716 	orreq	r0, r0, #5767168	; 0x580000
   14b98:	13c00706 	bicne	r0, r0, #1572864	; 0x180000
   14b9c:	e5810000 	str	r0, [r1]
   14ba0:	e3a00001 	mov	r0, #1
   14ba4:	e12fff1e 	bx	lr

v14ba8:
   14ba8:	00b71b00
v14bac:
   14bac:	016e3600
v14bb0:
   14bb0:	06000484
v14bb4:
   14bb4:	001e8480
v14bb8:
   14bb8:	000f4240

v14bd4:
   14bd4:	d2063333 	andle	r3, r6, #-872415232	; 0xcc000000
v14bd8:
   14bd8:	06000580 	streq	r0, [r0], -r0, lsl #11
v14bdc:
   14bdc:	0f802001 	svceq	0x00802001
v14be0:
   14be0:	01c63000 	biceq	r3, r6, r0
v14be4:
   14be4:	01c62000 	biceq	r2, r6, r0
v14be8:
   14be8:	cd866666 	stcgt	6, cr6, [r6, #408]	; 0x198
v14bec:
   14bec:	c9069999 	stmdbgt	r6, {r0, r3, r4, r7, r8, fp, ip, pc}
v14bf0:
   14bf0:	c486cccc 	strgt	ip, [r6], #3276	; 0xccc

f14bf4:
   14bf4:	e51f0018 	ldr	r0, [pc, #-24]	; 0x14be4
   14bf8:	e5900000 	ldr	r0, [r0]
   14bfc:	e7e31450 	ubfx	r1, r0, #8, #4
   14c00:	e2411006 	sub	r1, r1, #6
   14c04:	e7e32250 	ubfx	r2, r0, #4, #4
   14c08:	e0811002 	add	r1, r1, r2
   14c0c:	e2811001 	add	r1, r1, #1
   14c10:	e7e12150 	ubfx	r2, r0, #2, #2
   14c14:	e0811002 	add	r1, r1, r2
   14c18:	e2002003 	and	r2, r0, #3
   14c1c:	e2811002 	add	r1, r1, #2
   14c20:	e0811002 	add	r1, r1, r2
   14c24:	e7e009d0 	ubfx	r0, r0, #19, #1
   14c28:	e0800001 	add	r0, r0, r1
   14c2c:	e3a01001 	mov	r1, #1
   14c30:	e240000b 	sub	r0, r0, #11
   14c34:	e1a00011 	lsl	r0, r1, r0
   14c38:	e12fff1e 	bx	lr

f14c3c:
   14c3c:	e92d4ff3 	push	{r0, r1, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   14c40:	e24dd03c 	sub	sp, sp, #60	; 0x3c
   14c44:	e1a05001 	mov	r5, r1
   14c48:	e28d4014 	add	r4, sp, #20
   14c4c:	e3a09000 	mov	r9, #0
   14c50:	e3a0e801 	mov	lr, #65536	; 0x10000
   14c54:	e59d003c 	ldr	r0, [sp, #60]	; 0x3c
   14c58:	e1a07600 	lsl	r7, r0, #12
   14c5c:	e5910028 	ldr	r0, [r1, #40]	; 0x28
   14c60:	e7e41550 	ubfx	r1, r0, #10, #5
   14c64:	e58d1020 	str	r1, [sp, #32]
   14c68:	e7e417d0 	ubfx	r1, r0, #15, #5
   14c6c:	e58d1008 	str	r1, [sp, #8]
   14c70:	e7e41a50 	ubfx	r1, r0, #20, #5
   14c74:	e58d1034 	str	r1, [sp, #52]	; 0x34
   14c78:	e7e40cd0 	ubfx	r0, r0, #25, #5
   14c7c:	e58d0038 	str	r0, [sp, #56]	; 0x38
   14c80:	e595002c 	ldr	r0, [r5, #44]	; 0x2c
   14c84:	e200301f 	and	r3, r0, #31
   14c88:	e7e417d0 	ubfx	r1, r0, #15, #5
   14c8c:	e58d100c 	str	r1, [sp, #12]
   14c90:	e7e41a50 	ubfx	r1, r0, #20, #5
   14c94:	e58d1010 	str	r1, [sp, #16]
   14c98:	e7e21cd0 	ubfx	r1, r0, #25, #3
   14c9c:	e7e462d0 	ubfx	r6, r0, #5, #5
   14ca0:	e7e4c550 	ubfx	ip, r0, #10, #5
   14ca4:	e7e20e50 	ubfx	r0, r0, #28, #3
   14ca8:	e1cd02f4 	strd	r0, [sp, #36]	; 0x24
   14cac:	e88d0048 	stm	sp, {r3, r6}
   14cb0:	e5952030 	ldr	r2, [r5, #48]	; 0x30
   14cb4:	e1a03002 	mov	r3, r2
   14cb8:	e7e80652 	ubfx	r0, r2, #12, #9
   14cbc:	e7df361f 	bfc	r3, #12, #20
   14cc0:	e8840009 	stm	r4, {r0, r3}
   14cc4:	e7e41ad2 	ubfx	r1, r2, #21, #5
   14cc8:	e7e40d52 	ubfx	r0, r2, #26, #5
   14ccc:	e0832183 	add	r2, r3, r3, lsl #3
   14cd0:	e59d3000 	ldr	r3, [sp]
   14cd4:	e0833006 	add	r3, r3, r6
   14cd8:	e58d301c 	str	r3, [sp, #28]
   14cdc:	e5958000 	ldr	r8, [r5]
   14ce0:	e30031f4 	movw	r3, #500	; 0x1f4
   14ce4:	e59d603c 	ldr	r6, [sp, #60]	; 0x3c
   14ce8:	e1a042a2 	lsr	r4, r2, #5
   14cec:	e5952004 	ldr	r2, [r5, #4]
   14cf0:	e0030398 	mul	r3, r8, r3
   14cf4:	e3520003 	cmp	r2, #3
   14cf8:	e1a06606 	lsl	r6, r6, #12
   14cfc:	e2866507 	add	r6, r6, #29360128	; 0x1c00000
   14d00:	018e3523 	orreq	r3, lr, r3, lsr #10
   14d04:	e2866a63 	add	r6, r6, #405504	; 0x63000
   14d08:	11a03523 	lsrne	r3, r3, #10
   14d0c:	11a03803 	lslne	r3, r3, #16
   14d10:	e58630d0 	str	r3, [r6, #208]	; 0xd0
   14d14:	e586e0d4 	str	lr, [r6, #212]	; 0xd4
   14d18:	e5953004 	ldr	r3, [r5, #4]
   14d1c:	e3530006 	cmp	r3, #6
   14d20:	13530007 	cmpne	r3, #7
   14d24:	0a00000c 	beq	0x14d5c
   14d28:	e595e018 	ldr	lr, [r5, #24]
   14d2c:	e595301c 	ldr	r3, [r5, #28]
   14d30:	e183380e 	orr	r3, r3, lr, lsl #16
   14d34:	e58630dc 	str	r3, [r6, #220]	; 0xdc
   14d38:	e595e020 	ldr	lr, [r5, #32]
   14d3c:	e5953024 	ldr	r3, [r5, #36]	; 0x24
   14d40:	e183380e 	orr	r3, r3, lr, lsl #16
   14d44:	e58630e0 	str	r3, [r6, #224]	; 0xe0
   14d48:	e5953004 	ldr	r3, [r5, #4]
   14d4c:	e3530006 	cmp	r3, #6
   14d50:	13530007 	cmpne	r3, #7
   14d54:	0a000007 	beq	0x14d78
   14d58:	ea00001b 	b	0x14dcc
   14d5c:	e595e01c 	ldr	lr, [r5, #28]
   14d60:	e5953020 	ldr	r3, [r5, #32]
   14d64:	e183380e 	orr	r3, r3, lr, lsl #16
   14d68:	e58630dc 	str	r3, [r6, #220]	; 0xdc
   14d6c:	e5953024 	ldr	r3, [r5, #36]	; 0x24
   14d70:	e1a03803 	lsl	r3, r3, #16
   14d74:	eafffff2 	b	0x14d44
   14d78:	e595e000 	ldr	lr, [r5]
   14d7c:	e21e301f 	ands	r3, lr, #31
   14d80:	13a03001 	movne	r3, #1
   14d84:	e08332ae 	add	r3, r3, lr, lsr #5
   14d88:	e1a03403 	lsl	r3, r3, #8
   14d8c:	e3833005 	orr	r3, r3, #5
   14d90:	e58630d8 	str	r3, [r6, #216]	; 0xd8
   14d94:	e5953000 	ldr	r3, [r5]
   14d98:	e1a02003 	mov	r2, r3
   14d9c:	e213301f 	ands	r3, r3, #31
   14da0:	13a03001 	movne	r3, #1
   14da4:	e08332a2 	add	r3, r3, r2, lsr #5
   14da8:	e1a0e803 	lsl	lr, r3, #16
   14dac:	e0823102 	add	r3, r2, r2, lsl #2
   14db0:	e0822102 	add	r2, r2, r2, lsl #2
   14db4:	e1b03b83 	lsls	r3, r3, #23
   14db8:	e1a02082 	lsl	r2, r2, #1
   14dbc:	13a03001 	movne	r3, #1
   14dc0:	e0833522 	add	r3, r3, r2, lsr #10
   14dc4:	e183300e 	orr	r3, r3, lr
   14dc8:	e58630e4 	str	r3, [r6, #228]	; 0xe4
   14dcc:	e59d3000 	ldr	r3, [sp]
   14dd0:	e183e404 	orr	lr, r3, r4, lsl #8
   14dd4:	e59d3034 	ldr	r3, [sp, #52]	; 0x34
   14dd8:	e3a04402 	mov	r4, #33554432	; 0x2000000
   14ddc:	e18e2803 	orr	r2, lr, r3, lsl #16
   14de0:	e080300c 	add	r3, r0, ip
   14de4:	e0843c03 	add	r3, r4, r3, lsl #24
   14de8:	e1833002 	orr	r3, r3, r2
   14dec:	e5863100 	str	r3, [r6, #256]	; 0x100
   14df0:	e59d300c 	ldr	r3, [sp, #12]
   14df4:	e59d201c 	ldr	r2, [sp, #28]
   14df8:	e1823403 	orr	r3, r2, r3, lsl #8
   14dfc:	e3833702 	orr	r3, r3, #524288	; 0x80000
   14e00:	e5863104 	str	r3, [r6, #260]	; 0x104
   14e04:	e59d3010 	ldr	r3, [sp, #16]
   14e08:	e3004500 	movw	r4, #1280	; 0x500
   14e0c:	e0844401 	add	r4, r4, r1, lsl #8
   14e10:	e0833000 	add	r3, r3, r0
   14e14:	e2833002 	add	r3, r3, #2
   14e18:	e1833004 	orr	r3, r3, r4
   14e1c:	e1833801 	orr	r3, r3, r1, lsl #16
   14e20:	e1833c00 	orr	r3, r3, r0, lsl #24
   14e24:	e5863108 	str	r3, [r6, #264]	; 0x108
   14e28:	e59f3850 	ldr	r3, [pc, #2128]	; 0x15680
   14e2c:	e586310c 	str	r3, [r6, #268]	; 0x10c
   14e30:	e59d3008 	ldr	r3, [sp, #8]
   14e34:	e59d4004 	ldr	r4, [sp, #4]
   14e38:	e59dc038 	ldr	ip, [sp, #56]	; 0x38
   14e3c:	e1843403 	orr	r3, r4, r3, lsl #8
   14e40:	e183480c 	orr	r4, r3, ip, lsl #16
   14e44:	e59d3020 	ldr	r3, [sp, #32]
   14e48:	e1843c03 	orr	r3, r4, r3, lsl #24
   14e4c:	e5863110 	str	r3, [r6, #272]	; 0x110
   14e50:	e59f382c 	ldr	r3, [pc, #2092]	; 0x15684
   14e54:	e5863114 	str	r3, [r6, #276]	; 0x114
   14e58:	e59f3828 	ldr	r3, [pc, #2088]	; 0x15688
   14e5c:	e5863118 	str	r3, [r6, #280]	; 0x118
   14e60:	e3a03008 	mov	r3, #8
   14e64:	e5863120 	str	r3, [r6, #288]	; 0x120
   14e68:	e28d2014 	add	r2, sp, #20
   14e6c:	e8920018 	ldm	r2, {r3, r4}
   14e70:	e1833804 	orr	r3, r3, r4, lsl #16
   14e74:	e5863064 	str	r3, [r6, #100]	; 0x64
   14e78:	e5953004 	ldr	r3, [r5, #4]
   14e7c:	e3530003 	cmp	r3, #3
   14e80:	059f3804 	ldreq	r3, [pc, #2052]	; 0x1568c
   14e84:	02400002 	subeq	r0, r0, #2
   14e88:	159f3800 	ldrne	r3, [pc, #2048]	; 0x15690
   14e8c:	12400001 	subne	r0, r0, #1
   14e90:	e0831801 	add	r1, r3, r1, lsl #16
   14e94:	e1800001 	orr	r0, r0, r1
   14e98:	e3800402 	orr	r0, r0, #33554432	; 0x2000000
   14e9c:	e3800c01 	orr	r0, r0, #256	; 0x100
   14ea0:	e310001f 	tst	r0, #31
   14ea4:	03800001 	orreq	r0, r0, #1
   14ea8:	e5860190 	str	r0, [r6, #400]	; 0x190
   14eac:	e3a00000 	mov	r0, #0
   14eb0:	e58601b0 	str	r0, [r6, #432]	; 0x1b0
   14eb4:	e3a00102 	mov	r0, #-2147483648	; 0x80000000
   14eb8:	e58601a0 	str	r0, [r6, #416]	; 0x1a0
   14ebc:	e51f42e0 	ldr	r4, [pc, #-736]	; 0x14be4
   14ec0:	e5940010 	ldr	r0, [r4, #16]
   14ec4:	e3800008 	orr	r0, r0, #8
   14ec8:	e5840010 	str	r0, [r4, #16]
   14ecc:	e3a00064 	mov	r0, #100	; 0x64
   14ed0:	ebfff9a4 	bl	0x13568
   14ed4:	e59601a8 	ldr	r0, [r6, #424]	; 0x1a8
   14ed8:	e7db081f 	bfc	r0, #16, #12
   14edc:	e3800605 	orr	r0, r0, #5242880	; 0x500000
   14ee0:	e58601a8 	str	r0, [r6, #424]	; 0x1a8
   14ee4:	e5940010 	ldr	r0, [r4, #16]
   14ee8:	e3c00008 	bic	r0, r0, #8
   14eec:	e5840010 	str	r0, [r4, #16]
   14ef0:	e5953014 	ldr	r3, [r5, #20]
   14ef4:	e3a00002 	mov	r0, #2
   14ef8:	e5951004 	ldr	r1, [r5, #4]
   14efc:	e1500623 	cmp	r0, r3, lsr #12
   14f00:	03a00403 	moveq	r0, #50331648	; 0x3000000
   14f04:	13a00401 	movne	r0, #16777216	; 0x1000000
   14f08:	e3510002 	cmp	r1, #2
   14f0c:	0a000006 	beq	0x14f2c
   14f10:	e3510003 	cmp	r1, #3
   14f14:	0a000006 	beq	0x14f34
   14f18:	e3510006 	cmp	r1, #6
   14f1c:	0a000002 	beq	0x14f2c
   14f20:	e3510007 	cmp	r1, #7
   14f24:	0a000002 	beq	0x14f34
   14f28:	ea000071 	b	0x150f4
   14f2c:	e3800802 	orr	r0, r0, #131072	; 0x20000
   14f30:	ea000000 	b	0x14f38
   14f34:	e3800701 	orr	r0, r0, #262144	; 0x40000
   14f38:	e3130001 	tst	r3, #1
   14f3c:	e595305c 	ldr	r3, [r5, #92]	; 0x5c
   14f40:	13800a01 	orrne	r0, r0, #4096	; 0x1000
   14f44:	e3130020 	tst	r3, #32
   14f48:	13800b01 	orrne	r0, r0, #1024	; 0x400
   14f4c:	e3510002 	cmp	r1, #2
   14f50:	0a000008 	beq	0x14f78
   14f54:	e3510003 	cmp	r1, #3
   14f58:	03800001 	orreq	r0, r0, #1
   14f5c:	0a000005 	beq	0x14f78
   14f60:	e3510006 	cmp	r1, #6
   14f64:	03800004 	orreq	r0, r0, #4
   14f68:	0a000002 	beq	0x14f78
   14f6c:	e3510007 	cmp	r1, #7
   14f70:	03800008 	orreq	r0, r0, #8
   14f74:	1a00005e 	bne	0x150f4
   14f78:	e5860000 	str	r0, [r6]
   14f7c:	e5950004 	ldr	r0, [r5, #4]
   14f80:	e3500006 	cmp	r0, #6
   14f84:	13500007 	cmpne	r0, #7
   14f88:	059f0704 	ldreq	r0, [pc, #1796]	; 0x15694
   14f8c:	05860180 	streq	r0, [r6, #384]	; 0x180
   14f90:	059f0700 	ldreq	r0, [pc, #1792]	; 0x15698
   14f94:	0a000004 	beq	0x14fac
   14f98:	e3500003 	cmp	r0, #3
   14f9c:	059f06f8 	ldreq	r0, [pc, #1784]	; 0x1569c
   14fa0:	05860180 	streq	r0, [r6, #384]	; 0x180
   14fa4:	03000100 	movweq	r0, #256	; 0x100
   14fa8:	1a000000 	bne	0x14fb0
   14fac:	e5860184 	str	r0, [r6, #388]	; 0x184
   14fb0:	e3a02001 	mov	r2, #1
   14fb4:	e58621b0 	str	r2, [r6, #432]	; 0x1b0
   14fb8:	e5862060 	str	r2, [r6, #96]	; 0x60
   14fbc:	e3000400 	movw	r0, #1024	; 0x400
   14fc0:	e595105c 	ldr	r1, [r5, #92]	; 0x5c
   14fc4:	e3110020 	tst	r1, #32
   14fc8:	e5951010 	ldr	r1, [r5, #16]
   14fcc:	11800900 	orrne	r0, r0, r0, lsl #18
   14fd0:	e3110201 	tst	r1, #268435456	; 0x10000000
   14fd4:	e5951004 	ldr	r1, [r5, #4]
   14fd8:	13800008 	orrne	r0, r0, #8
   14fdc:	e3510002 	cmp	r1, #2
   14fe0:	03800002 	orreq	r0, r0, #2
   14fe4:	0a000006 	beq	0x15004
   14fe8:	e3510003 	cmp	r1, #3
   14fec:	03800003 	orreq	r0, r0, #3
   14ff0:	13510006 	cmpne	r1, #6
   14ff4:	0a000002 	beq	0x15004
   14ff8:	e3510007 	cmp	r1, #7
   14ffc:	03800001 	orreq	r0, r0, #1
   15000:	1a00003b 	bne	0x150f4
   15004:	e2874507 	add	r4, r7, #29360128	; 0x1c00000
   15008:	e2844a65 	add	r4, r4, #413696	; 0x65000
   1500c:	e5840088 	str	r0, [r4, #136]	; 0x88
   15010:	e5950004 	ldr	r0, [r5, #4]
   15014:	e3500006 	cmp	r0, #6
   15018:	13500007 	cmpne	r0, #7
   1501c:	05940084 	ldreq	r0, [r4, #132]	; 0x84
   15020:	03c000c0 	biceq	r0, r0, #192	; 0xc0
   15024:	05840084 	streq	r0, [r4, #132]	; 0x84
   15028:	e5950018 	ldr	r0, [r5, #24]
   1502c:	e7df069f 	bfc	r0, #13, #19
   15030:	e584009c 	str	r0, [r4, #156]	; 0x9c
   15034:	e595001c 	ldr	r0, [r5, #28]
   15038:	e7df069f 	bfc	r0, #13, #19
   1503c:	e58400a0 	str	r0, [r4, #160]	; 0xa0
   15040:	e5950020 	ldr	r0, [r5, #32]
   15044:	e7df059f 	bfc	r0, #11, #21
   15048:	e58400a4 	str	r0, [r4, #164]	; 0xa4
   1504c:	e5950024 	ldr	r0, [r5, #36]	; 0x24
   15050:	e200000f 	and	r0, r0, #15
   15054:	e58400a8 	str	r0, [r4, #168]	; 0xa8
   15058:	e1cd00dc 	ldrd	r0, [sp, #12]
   1505c:	e1800201 	orr	r0, r0, r1, lsl #4
   15060:	e59d1004 	ldr	r1, [sp, #4]
   15064:	e1801401 	orr	r1, r0, r1, lsl #8
   15068:	e59d0020 	ldr	r0, [sp, #32]
   1506c:	e1810600 	orr	r0, r1, r0, lsl #12
   15070:	e59d1000 	ldr	r1, [sp]
   15074:	e1801801 	orr	r1, r0, r1, lsl #16
   15078:	e59d0008 	ldr	r0, [sp, #8]
   1507c:	e1810b00 	orr	r0, r1, r0, lsl #22
   15080:	e59d101c 	ldr	r1, [sp, #28]
   15084:	e1803d01 	orr	r3, r0, r1, lsl #26
   15088:	e584308c 	str	r3, [r4, #140]	; 0x8c
   1508c:	e59d3034 	ldr	r3, [sp, #52]	; 0x34
   15090:	e59dc014 	ldr	ip, [sp, #20]
   15094:	e1a03283 	lsl	r3, r3, #5
   15098:	e183058c 	orr	r0, r3, ip, lsl #11
   1509c:	e3800012 	orr	r0, r0, #18
   150a0:	e380058a 	orr	r0, r0, #578813952	; 0x22800000
   150a4:	e5840090 	str	r0, [r4, #144]	; 0x90
   150a8:	e59f05f0 	ldr	r0, [pc, #1520]	; 0x156a0
   150ac:	e5840094 	str	r0, [r4, #148]	; 0x94
   150b0:	e1cd02d4 	ldrd	r0, [sp, #36]	; 0x24
   150b4:	e1800181 	orr	r0, r0, r1, lsl #3
   150b8:	e5840098 	str	r0, [r4, #152]	; 0x98
   150bc:	e59f05e0 	ldr	r0, [pc, #1504]	; 0x156a4
   150c0:	e5840024 	str	r0, [r4, #36]	; 0x24
   150c4:	e59f05dc 	ldr	r0, [pc, #1500]	; 0x156a8
   150c8:	e5840028 	str	r0, [r4, #40]	; 0x28
   150cc:	e30013e8 	movw	r1, #1000	; 0x3e8
   150d0:	e5950004 	ldr	r0, [r5, #4]
   150d4:	e3500006 	cmp	r0, #6
   150d8:	13500007 	cmpne	r0, #7
   150dc:	0a000007 	beq	0x15100
   150e0:	e3500003 	cmp	r0, #3
   150e4:	0a000012 	beq	0x15134
   150e8:	e3500002 	cmp	r0, #2
   150ec:	0a00001c 	beq	0x15164
   150f0:	ea000026 	b	0x15190
   150f4:	e3a00000 	mov	r0, #0
   150f8:	e28dd044 	add	sp, sp, #68	; 0x44
   150fc:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   15100:	e3a00064 	mov	r0, #100	; 0x64
   15104:	e0000098 	mul	r0, r8, r0
   15108:	e730f110 	udiv	r0, r0, r1
   1510c:	e280a001 	add	sl, r0, #1
   15110:	e0880188 	add	r0, r8, r8, lsl #3
   15114:	e0800208 	add	r0, r0, r8, lsl #4
   15118:	e0820180 	add	r0, r2, r0, lsl #3
   1511c:	e58d002c 	str	r0, [sp, #44]	; 0x2c
   15120:	e0880088 	add	r0, r8, r8, lsl #1
   15124:	e0800188 	add	r0, r0, r8, lsl #3
   15128:	e082b080 	add	fp, r2, r0, lsl #1
   1512c:	e0820088 	add	r0, r2, r8, lsl #1
   15130:	ea000015 	b	0x1518c
   15134:	e0880088 	add	r0, r8, r8, lsl #1
   15138:	e0600388 	rsb	r0, r0, r8, lsl #7
   1513c:	e082a100 	add	sl, r2, r0, lsl #2
   15140:	e3000168 	movw	r0, #360	; 0x168
   15144:	e0000098 	mul	r0, r8, r0
   15148:	e730f110 	udiv	r0, r0, r1
   1514c:	e2800001 	add	r0, r0, #1
   15150:	e58d002c 	str	r0, [sp, #44]	; 0x2c
   15154:	e0880188 	add	r0, r8, r8, lsl #3
   15158:	e0800208 	add	r0, r0, r8, lsl #4
   1515c:	e082b180 	add	fp, r2, r0, lsl #3
   15160:	ea000008 	b	0x15188
   15164:	e0880188 	add	r0, r8, r8, lsl #3
   15168:	e0800208 	add	r0, r0, r8, lsl #4
   1516c:	e082a180 	add	sl, r2, r0, lsl #3
   15170:	e3000190 	movw	r0, #400	; 0x190
   15174:	e0000098 	mul	r0, r8, r0
   15178:	e730f110 	udiv	r0, r0, r1
   1517c:	e2800001 	add	r0, r0, #1
   15180:	e1a0b00a 	mov	fp, sl
   15184:	e58d002c 	str	r0, [sp, #44]	; 0x2c
   15188:	e2880001 	add	r0, r8, #1
   1518c:	e58d0030 	str	r0, [sp, #48]	; 0x30
   15190:	e59d002c 	ldr	r0, [sp, #44]	; 0x2c
   15194:	e18a0a00 	orr	r0, sl, r0, lsl #20
   15198:	e5840030 	str	r0, [r4, #48]	; 0x30
   1519c:	e59d0030 	ldr	r0, [sp, #48]	; 0x30
   151a0:	e18b0900 	orr	r0, fp, r0, lsl #18
   151a4:	e5840034 	str	r0, [r4, #52]	; 0x34
   151a8:	e5951014 	ldr	r1, [r5, #20]
   151ac:	e3030007 	movw	r0, #12295	; 0x3007
   151b0:	e1a08002 	mov	r8, r2
   151b4:	e7e31651 	ubfx	r1, r1, #12, #4
   151b8:	ea000002 	b	0x151c8
   151bc:	e2892018 	add	r2, r9, #24
   151c0:	e2899001 	add	r9, r9, #1
   151c4:	e1800218 	orr	r0, r0, r8, lsl r2
   151c8:	e1510009 	cmp	r1, r9
   151cc:	8afffffa 	bhi	0x151bc
   151d0:	e58400b0 	str	r0, [r4, #176]	; 0xb0
   151d4:	e5950014 	ldr	r0, [r5, #20]
   151d8:	e3100001 	tst	r0, #1
   151dc:	059f04c8 	ldreq	r0, [pc, #1224]	; 0x156ac
   151e0:	13a00000 	movne	r0, #0
   151e4:	e5840380 	str	r0, [r4, #896]	; 0x380
   151e8:	e59f14c0 	ldr	r1, [pc, #1216]	; 0x156b0
   151ec:	e7810007 	str	r0, [r1, r7]
   151f0:	e5940244 	ldr	r0, [r4, #580]	; 0x244
   151f4:	e5951008 	ldr	r1, [r5, #8]
   151f8:	e3c000ff 	bic	r0, r0, #255	; 0xff
   151fc:	e20110ff 	and	r1, r1, #255	; 0xff
   15200:	e1800001 	orr	r0, r0, r1
   15204:	e5840244 	str	r0, [r4, #580]	; 0x244
   15208:	e5940254 	ldr	r0, [r4, #596]	; 0x254
   1520c:	e5951008 	ldr	r1, [r5, #8]
   15210:	e3c000ff 	bic	r0, r0, #255	; 0xff
   15214:	e7e71451 	ubfx	r1, r1, #8, #8
   15218:	e1800001 	orr	r0, r0, r1
   1521c:	e5840254 	str	r0, [r4, #596]	; 0x254
   15220:	e5940264 	ldr	r0, [r4, #612]	; 0x264
   15224:	e5951008 	ldr	r1, [r5, #8]
   15228:	e3c000ff 	bic	r0, r0, #255	; 0xff
   1522c:	e7e71851 	ubfx	r1, r1, #16, #8
   15230:	e1800001 	orr	r0, r0, r1
   15234:	e5840264 	str	r0, [r4, #612]	; 0x264
   15238:	e595000c 	ldr	r0, [r5, #12]
   1523c:	e59f3470 	ldr	r3, [pc, #1136]	; 0x156b4
   15240:	e3500000 	cmp	r0, #0
   15244:	e5940288 	ldr	r0, [r4, #648]	; 0x288
   15248:	e2832004 	add	r2, r3, #4
   1524c:	e7cf001f 	bfc	r0, #0, #16
   15250:	0a00001b 	beq	0x152c4
   15254:	e5840288 	str	r0, [r4, #648]	; 0x288
   15258:	e594028c 	ldr	r0, [r4, #652]	; 0x28c
   1525c:	e3c00a03 	bic	r0, r0, #12288	; 0x3000
   15260:	e3c00030 	bic	r0, r0, #48	; 0x30
   15264:	e584028c 	str	r0, [r4, #652]	; 0x28c
   15268:	e5940308 	ldr	r0, [r4, #776]	; 0x308
   1526c:	e7cf001f 	bfc	r0, #0, #16
   15270:	e5840308 	str	r0, [r4, #776]	; 0x308
   15274:	e594030c 	ldr	r0, [r4, #780]	; 0x30c
   15278:	e3c00a03 	bic	r0, r0, #12288	; 0x3000
   1527c:	e3c00030 	bic	r0, r0, #48	; 0x30
   15280:	e584030c 	str	r0, [r4, #780]	; 0x30c
   15284:	e5940388 	ldr	r0, [r4, #904]	; 0x388
   15288:	e7cf001f 	bfc	r0, #0, #16
   1528c:	e5840388 	str	r0, [r4, #904]	; 0x388
   15290:	e594038c 	ldr	r0, [r4, #908]	; 0x38c
   15294:	e3c00a03 	bic	r0, r0, #12288	; 0x3000
   15298:	e3c00030 	bic	r0, r0, #48	; 0x30
   1529c:	e584038c 	str	r0, [r4, #908]	; 0x38c
   152a0:	e0870003 	add	r0, r7, r3
   152a4:	e5901000 	ldr	r1, [r0]
   152a8:	e7cf101f 	bfc	r1, #0, #16
   152ac:	e5801000 	str	r1, [r0]
   152b0:	e0870002 	add	r0, r7, r2
   152b4:	e5901000 	ldr	r1, [r0]
   152b8:	e3c11a03 	bic	r1, r1, #12288	; 0x3000
   152bc:	e3c11030 	bic	r1, r1, #48	; 0x30
   152c0:	ea00006a 	b	0x15470
   152c4:	e30a1aaa 	movw	r1, #43690	; 0xaaaa
   152c8:	e1800001 	orr	r0, r0, r1
   152cc:	e5840288 	str	r0, [r4, #648]	; 0x288
   152d0:	e5940308 	ldr	r0, [r4, #776]	; 0x308
   152d4:	e7cf001f 	bfc	r0, #0, #16
   152d8:	e1800001 	orr	r0, r0, r1
   152dc:	e5840308 	str	r0, [r4, #776]	; 0x308
   152e0:	e5940388 	ldr	r0, [r4, #904]	; 0x388
   152e4:	e7cf001f 	bfc	r0, #0, #16
   152e8:	e1800001 	orr	r0, r0, r1
   152ec:	e5840388 	str	r0, [r4, #904]	; 0x388
   152f0:	e0870003 	add	r0, r7, r3
   152f4:	e5903000 	ldr	r3, [r0]
   152f8:	e7cf301f 	bfc	r3, #0, #16
   152fc:	e1811003 	orr	r1, r1, r3
   15300:	e5801000 	str	r1, [r0]
   15304:	e5950004 	ldr	r0, [r5, #4]
   15308:	e3500003 	cmp	r0, #3
   1530c:	0a00003f 	beq	0x15410
   15310:	e3a00012 	mov	r0, #18
   15314:	e584028c 	str	r0, [r4, #652]	; 0x28c
   15318:	e584030c 	str	r0, [r4, #780]	; 0x30c
   1531c:	e584038c 	str	r0, [r4, #908]	; 0x38c
   15320:	e7870002 	str	r0, [r7, r2]
   15324:	e59f038c 	ldr	r0, [pc, #908]	; 0x156b8
   15328:	e5840240 	str	r0, [r4, #576]	; 0x240
   1532c:	e5840250 	str	r0, [r4, #592]	; 0x250
   15330:	e5840260 	str	r0, [r4, #608]	; 0x260
   15334:	e5960060 	ldr	r0, [r6, #96]	; 0x60
   15338:	e3800001 	orr	r0, r0, #1
   1533c:	e5860060 	str	r0, [r6, #96]	; 0x60
   15340:	e5940084 	ldr	r0, [r4, #132]	; 0x84
   15344:	e380040f 	orr	r0, r0, #251658240	; 0xf000000
   15348:	e5840084 	str	r0, [r4, #132]	; 0x84
   1534c:	e594000c 	ldr	r0, [r4, #12]
   15350:	e3c00506 	bic	r0, r0, #25165824	; 0x1800000
   15354:	e3800301 	orr	r0, r0, #67108864	; 0x4000000
   15358:	e3800080 	orr	r0, r0, #128	; 0x80
   1535c:	e584000c 	str	r0, [r4, #12]
   15360:	e5940020 	ldr	r0, [r4, #32]
   15364:	e3800706 	orr	r0, r0, #1572864	; 0x180000
   15368:	e5840020 	str	r0, [r4, #32]
   1536c:	e5950000 	ldr	r0, [r5]
   15370:	e5951048 	ldr	r1, [r5, #72]	; 0x48
   15374:	e3500e19 	cmp	r0, #400	; 0x190
   15378:	e1c81001 	bic	r1, r8, r1
   1537c:	93a00001 	movls	r0, #1
   15380:	83a00000 	movhi	r0, #0
   15384:	e1900001 	orrs	r0, r0, r1
   15388:	15940020 	ldrne	r0, [r4, #32]
   1538c:	1380020a 	orrne	r0, r0, #-1610612736	; 0xa0000000
   15390:	15840020 	strne	r0, [r4, #32]
   15394:	e5940008 	ldr	r0, [r4, #8]
   15398:	e3c0003f 	bic	r0, r0, #63	; 0x3f
   1539c:	e5840008 	str	r0, [r4, #8]
   153a0:	e59d103c 	ldr	r1, [sp, #60]	; 0x3c
   153a4:	e28f0e31 	add	r0, pc, #784	; 0x156bc
   153a8:	eb0002b7 	bl	0x15e8c
   153ac:	e5950000 	ldr	r0, [r5]
   153b0:	e5951048 	ldr	r1, [r5, #72]	; 0x48
   153b4:	e3500e19 	cmp	r0, #400	; 0x190
   153b8:	e1c81001 	bic	r1, r8, r1
   153bc:	93a00001 	movls	r0, #1
   153c0:	83a00000 	movhi	r0, #0
   153c4:	e1900001 	orrs	r0, r0, r1
   153c8:	e5951004 	ldr	r1, [r5, #4]
   153cc:	13a00802 	movne	r0, #131072	; 0x20000
   153d0:	e3510003 	cmp	r1, #3
   153d4:	03001df3 	movweq	r1, #3571	; 0xdf3
   153d8:	130c1573 	movwne	r1, #50547	; 0xc573
   153dc:	e1800001 	orr	r0, r0, r1
   153e0:	e5840004 	str	r0, [r4, #4]
   153e4:	e30003e8 	movw	r0, #1000	; 0x3e8
   153e8:	ebfff85e 	bl	0x13568
   153ec:	e5940018 	ldr	r0, [r4, #24]
   153f0:	e3100001 	tst	r0, #1
   153f4:	0afffffc 	beq	0x153ec
   153f8:	e5950014 	ldr	r0, [r5, #20]
   153fc:	e7e30650 	ubfx	r0, r0, #12, #4
   15400:	e3500002 	cmp	r0, #2
   15404:	03a09000 	moveq	r9, #0
   15408:	0a00001a 	beq	0x15478
   1540c:	ea00004c 	b	0x15544
   15410:	e594028c 	ldr	r0, [r4, #652]	; 0x28c
   15414:	e3c00a03 	bic	r0, r0, #12288	; 0x3000
   15418:	e3c00030 	bic	r0, r0, #48	; 0x30
   1541c:	e3800a02 	orr	r0, r0, #8192	; 0x2000
   15420:	e3800020 	orr	r0, r0, #32
   15424:	e584028c 	str	r0, [r4, #652]	; 0x28c
   15428:	e594030c 	ldr	r0, [r4, #780]	; 0x30c
   1542c:	e3c00a03 	bic	r0, r0, #12288	; 0x3000
   15430:	e3c00030 	bic	r0, r0, #48	; 0x30
   15434:	e3800a02 	orr	r0, r0, #8192	; 0x2000
   15438:	e3800020 	orr	r0, r0, #32
   1543c:	e584030c 	str	r0, [r4, #780]	; 0x30c
   15440:	e594038c 	ldr	r0, [r4, #908]	; 0x38c
   15444:	e3c00a03 	bic	r0, r0, #12288	; 0x3000
   15448:	e3c00030 	bic	r0, r0, #48	; 0x30
   1544c:	e3800a02 	orr	r0, r0, #8192	; 0x2000
   15450:	e3800020 	orr	r0, r0, #32
   15454:	e584038c 	str	r0, [r4, #908]	; 0x38c
   15458:	e0870002 	add	r0, r7, r2
   1545c:	e5901000 	ldr	r1, [r0]
   15460:	e3c11a03 	bic	r1, r1, #12288	; 0x3000
   15464:	e3c11030 	bic	r1, r1, #48	; 0x30
   15468:	e3811a02 	orr	r1, r1, #8192	; 0x2000
   1546c:	e3811020 	orr	r1, r1, #32
   15470:	e5801000 	str	r1, [r0]
   15474:	eaffffaa 	b	0x15324
   15478:	e0870389 	add	r0, r7, r9, lsl #7
   1547c:	e280a507 	add	sl, r0, #29360128	; 0x1c00000
   15480:	e28aaa65 	add	sl, sl, #413696	; 0x65000
   15484:	e59a02c0 	ldr	r0, [sl, #704]	; 0x2c0
   15488:	e200b0ff 	and	fp, r0, #255	; 0xff
   1548c:	e7e70450 	ubfx	r0, r0, #8, #8
   15490:	e58d0004 	str	r0, [sp, #4]
   15494:	e59a02c8 	ldr	r0, [sl, #712]	; 0x2c8
   15498:	e2001007 	and	r1, r0, #7
   1549c:	e58d1008 	str	r1, [sp, #8]
   154a0:	e7e201d0 	ubfx	r0, r0, #3, #3
   154a4:	e58d000c 	str	r0, [sp, #12]
   154a8:	e59a02c4 	ldr	r0, [sl, #708]	; 0x2c4
   154ac:	e7e78450 	ubfx	r8, r0, #8, #8
   154b0:	e59d000c 	ldr	r0, [sp, #12]
   154b4:	e1510000 	cmp	r1, r0
   154b8:	0a000003 	beq	0x154cc
   154bc:	e59d103c 	ldr	r1, [sp, #60]	; 0x3c
   154c0:	e28f0f81 	add	r0, pc, #516	; 0x156cc
   154c4:	e1a02009 	mov	r2, r9
   154c8:	eb00026f 	bl	0x15e8c
   154cc:	e59d0004 	ldr	r0, [sp, #4]
   154d0:	e20b10f8 	and	r1, fp, #248	; 0xf8
   154d4:	e20000f8 	and	r0, r0, #248	; 0xf8
   154d8:	e1510000 	cmp	r1, r0
   154dc:	0a000003 	beq	0x154f0
   154e0:	e59d103c 	ldr	r1, [sp, #60]	; 0x3c
   154e4:	e28f0c02 	add	r0, pc, #512	; 0x156ec
   154e8:	e1a02009 	mov	r2, r9
   154ec:	eb000266 	bl	0x15e8c
   154f0:	e59d0004 	ldr	r0, [sp, #4]
   154f4:	e08b2000 	add	r2, fp, r0
   154f8:	e1cd00d8 	ldrd	r0, [sp, #8]
   154fc:	e0800001 	add	r0, r0, r1
   15500:	e3a01000 	mov	r1, #0
   15504:	e0202890 	mla	r0, r0, r8, r2
   15508:	e1a000a0 	lsr	r0, r0, #1

f1550c:
   1550c:	e1580000 	cmp	r8, r0
   15510:	90400008 	subls	r0, r0, r8
   15514:	92811001 	addls	r1, r1, #1
   15518:	9afffffb 	bls	0x1550c
   1551c:	e1800400 	orr	r0, r0, r0, lsl #8
   15520:	e58a02c0 	str	r0, [sl, #704]	; 0x2c0
   15524:	e59a02c8 	ldr	r0, [sl, #712]	; 0x2c8
   15528:	e1811181 	orr	r1, r1, r1, lsl #3
   1552c:	e3c0003f 	bic	r0, r0, #63	; 0x3f
   15530:	e1800001 	orr	r0, r0, r1
   15534:	e58a02c8 	str	r0, [sl, #712]	; 0x2c8
   15538:	e2899001 	add	r9, r9, #1
   1553c:	e3590004 	cmp	r9, #4
   15540:	3affffcc 	bcc	0x15478
   15544:	e5950004 	ldr	r0, [r5, #4]
   15548:	e3500006 	cmp	r0, #6
   1554c:	13500007 	cmpne	r0, #7
   15550:	1a000006 	bne	0x15570
   15554:	e5940084 	ldr	r0, [r4, #132]	; 0x84
   15558:	e3c000c0 	bic	r0, r0, #192	; 0xc0
   1555c:	e3800040 	orr	r0, r0, #64	; 0x40
   15560:	e5840084 	str	r0, [r4, #132]	; 0x84
   15564:	e59d103c 	ldr	r1, [sp, #60]	; 0x3c
   15568:	e28f0e1a 	add	r0, pc, #416	; 0x15710
   1556c:	eb000246 	bl	0x15e8c
   15570:	e595005c 	ldr	r0, [r5, #92]	; 0x5c
   15574:	e3100102 	tst	r0, #-2147483648	; 0x80000000
   15578:	15940240 	ldrne	r0, [r4, #576]	; 0x240
   1557c:	13800b0e 	orrne	r0, r0, #14336	; 0x3800
   15580:	15840240 	strne	r0, [r4, #576]	; 0x240
   15584:	e595005c 	ldr	r0, [r5, #92]	; 0x5c
   15588:	e59f819c 	ldr	r8, [pc, #412]	; 0x1572c
   1558c:	e2001001 	and	r1, r0, #1
   15590:	e59d003c 	ldr	r0, [sp, #60]	; 0x3c
   15594:	e1900001 	orrs	r0, r0, r1
   15598:	0a00000a 	beq	0x155c8
   1559c:	e5940018 	ldr	r0, [r4, #24]
   155a0:	e1100008 	tst	r0, r8
   155a4:	0a000003 	beq	0x155b8
   155a8:	e59d103c 	ldr	r1, [sp, #60]	; 0x3c
   155ac:	e28f0f5f 	add	r0, pc, #380	; 0x15730
   155b0:	eb000235 	bl	0x15e8c
   155b4:	eafffece 	b	0x150f4
   155b8:	e59d103c 	ldr	r1, [sp, #60]	; 0x3c
   155bc:	e28f0f62 	add	r0, pc, #392	; 0x1574c
   155c0:	eb000231 	bl	0x15e8c
   155c4:	ea0000de 	b	0x15944
   155c8:	e59d103c 	ldr	r1, [sp, #60]	; 0x3c
   155cc:	e28f0f62 	add	r0, pc, #392	; 0x1575c
   155d0:	eb00022d 	bl	0x15e8c
   155d4:	e5940290 	ldr	r0, [r4, #656]	; 0x290
   155d8:	e3100401 	tst	r0, #16777216	; 0x1000000
   155dc:	159d103c 	ldrne	r1, [sp, #60]	; 0x3c
   155e0:	128f0f62 	addne	r0, pc, #392	; 0x15770
   155e4:	1afffff1 	bne	0x155b0
   155e8:	e5940290 	ldr	r0, [r4, #656]	; 0x290
   155ec:	e59d103c 	ldr	r1, [sp, #60]	; 0x3c
   155f0:	e3100402 	tst	r0, #33554432	; 0x2000000
   155f4:	0a00007a 	beq	0x157e4
   155f8:	e28f0f65 	add	r0, pc, #404	; 0x15794
   155fc:	eb000222 	bl	0x15e8c
   15600:	e28f0f6c 	add	r0, pc, #108, 30	; 0x15674
   15604:	eb000220 	bl	0x15e8c
   15608:	e2850014 	add	r0, r5, #20
   1560c:	e3012000 	movw	r2, #4096	; 0x1000
   15610:	e30f1000 	movw	r1, #61440	; 0xf000
   15614:	ebfffab8 	bl	0x140fc
   15618:	e5960000 	ldr	r0, [r6]
   1561c:	e3c00403 	bic	r0, r0, #50331648	; 0x3000000
   15620:	e3800401 	orr	r0, r0, #16777216	; 0x1000000
   15624:	e5860000 	str	r0, [r6]
   15628:	e59400b0 	ldr	r0, [r4, #176]	; 0xb0
   1562c:	e3c0040f 	bic	r0, r0, #251658240	; 0xf000000
   15630:	e3800401 	orr	r0, r0, #16777216	; 0x1000000
   15634:	e58400b0 	str	r0, [r4, #176]	; 0xb0
   15638:	e5940390 	ldr	r0, [r4, #912]	; 0x390
   1563c:	e3100401 	tst	r0, #16777216	; 0x1000000
   15640:	0a000073 	beq	0x15814
   15644:	e28f0f62 	add	r0, pc, #392	; 0x157d4
   15648:	eb00020f 	bl	0x15e8c
   1564c:	e2850014 	add	r0, r5, #20
   15650:	e3a02001 	mov	r2, #1
   15654:	e3a0100f 	mov	r1, #15
   15658:	ebfffaa7 	bl	0x140fc
   1565c:	e5960000 	ldr	r0, [r6]
   15660:	e3c00a03 	bic	r0, r0, #12288	; 0x3000
   15664:	e3800a01 	orr	r0, r0, #4096	; 0x1000
   15668:	e5860000 	str	r0, [r6]
   1566c:	e3a00000 	mov	r0, #0
   15670:	e5840380 	str	r0, [r4, #896]	; 0x380
v15674:
   15674:	e59f1034 	ldr	r1, [pc, #52]	; 0x156b0
   15678:	e7810007 	str	r0, [r1, r7]
   1567c:	ea000066 	b	0x1581c

v15680:
   15680:	0005400c
v15684:
   15684:	05050403
v15688:
   15688:	02020005
v1568c:
   1568c:	fffe0000
v15690:
   15690:	ffff0000
v15694:
   15694:	01200048
v15698:
   15698:	02800100
v1569c:
   1569c:	02000040
v156a0:
   156a0:	10036a00
v156a4:
   156a4:	42c21590
v156a8:
   156a8:	d05612c0
v156ac:
   156ac:	7c000285
v156b0:
   156b0:	01c65400
v156b4:
   156b4:	01c65408
v156b8:
   156b8:	04058d02

v156bc:
   156bc:	"VTC Disabled!!\n",0
v156cc:
   156cc:	"Warn:CH%d BYTE%d GTR different\n",0
v156ec:
   156ec:	"Warn:CH%d BYTE%d LCDLR2 differen\n",0,0
v15710:
   15710:	"DQS Gate Extend Enable!\n",0,0,0,0
v1572c:
   1572c:	1ff00000
v15730:
   15730:	"Channel %d unavailable!\n",0,0,0,0
v1574c:
   1574c:	"Channel %d OK!\n",0
v1575c:
   1575c:	"DRAM Size Scan!\n",0,0,0,0
v15770:
   15770:	"Channel %d Rank0 Byte0 Gate Error!\n",0
v15794:
   15794:	"Channel %d Rank1 Byte0 Gate Error!\n",0
   157b8:	"Only one rank available!\n",0,0,0
v157d4:
   157d4:	"Half DQ Used!\n",0,0

   157e4:	e28f0fe5 	add	r0, pc, #916	; 0x15b80
   157e8:	eb0001a7 	bl	0x15e8c
   157ec:	e5940390 	ldr	r0, [r4, #912]	; 0x390
   157f0:	e3100401 	tst	r0, #16777216	; 0x1000000
   157f4:	0a000006 	beq	0x15814
   157f8:	e24f002c 	sub	r0, pc, #44	; 0x1582c
   157fc:	eb0001a2 	bl	0x15e8c
   15800:	e2850014 	add	r0, r5, #20
   15804:	e3a02001 	mov	r2, #1
   15808:	e3a0100f 	mov	r1, #15
   1580c:	ebfffa3a 	bl	0x140fc
   15810:	ea000001 	b	0x1581c
   15814:	e28f0fe1 	add	r0, pc, #900	; 0x15ba0
   15818:	eb00019b 	bl	0x15e8c
   1581c:	e5940004 	ldr	r0, [r4, #4]
   15820:	e5951004 	ldr	r1, [r5, #4]
   15824:	e3510003 	cmp	r1, #3
   15828:	03001df3 	movweq	r1, #3571	; 0xdf3
v1582c:
   1582c:	130c1573 	movwne	r1, #50547	; 0xc573
   15830:	e7cf001f 	bfc	r0, #0, #16
   15834:	e1800001 	orr	r0, r0, r1
   15838:	e5840004 	str	r0, [r4, #4]
   1583c:	e30003e8 	movw	r0, #1000	; 0x3e8
   15840:	ebfff748 	bl	0x13568
   15844:	e5940018 	ldr	r0, [r4, #24]
   15848:	e3100001 	tst	r0, #1
   1584c:	0afffffc 	beq	0x15844
   15850:	e5940018 	ldr	r0, [r4, #24]
   15854:	e5940018 	ldr	r0, [r4, #24]
   15858:	e1100008 	tst	r0, r8
   1585c:	1affff51 	bne	0x155a8
   15860:	e59d103c 	ldr	r1, [sp, #60]	; 0x3c
   15864:	e24f0e12 	sub	r0, pc, #288	; 0x1598c
   15868:	eb000187 	bl	0x15e8c
   1586c:	e5950014 	ldr	r0, [r5, #20]
   15870:	e7e30650 	ubfx	r0, r0, #12, #4
   15874:	e3500002 	cmp	r0, #2
   15878:	03a08000 	moveq	r8, #0
   1587c:	1a000030 	bne	0x15944
   15880:	e0870388 	add	r0, r7, r8, lsl #7
   15884:	e2809507 	add	r9, r0, #29360128	; 0x1c00000
   15888:	e2899a65 	add	r9, r9, #413696	; 0x65000
   1588c:	e59902c0 	ldr	r0, [r9, #704]	; 0x2c0
   15890:	e20010ff 	and	r1, r0, #255	; 0xff
   15894:	e58d1000 	str	r1, [sp]
   15898:	e7e70450 	ubfx	r0, r0, #8, #8
   1589c:	e58d0004 	str	r0, [sp, #4]
   158a0:	e59902c8 	ldr	r0, [r9, #712]	; 0x2c8
   158a4:	e200a007 	and	sl, r0, #7
   158a8:	e7e2b1d0 	ubfx	fp, r0, #3, #3
   158ac:	e59902c4 	ldr	r0, [r9, #708]	; 0x2c4
   158b0:	e15a000b 	cmp	sl, fp
   158b4:	e7e75450 	ubfx	r5, r0, #8, #8
   158b8:	0a000003 	beq	0x158cc
   158bc:	e59d103c 	ldr	r1, [sp, #60]	; 0x3c
   158c0:	e24f0f7f 	sub	r0, pc, #508	; 0x15ac4
   158c4:	e1a02008 	mov	r2, r8
   158c8:	eb00016f 	bl	0x15e8c
   158cc:	e59d0000 	ldr	r0, [sp]
   158d0:	e20010f8 	and	r1, r0, #248	; 0xf8
   158d4:	e59d0004 	ldr	r0, [sp, #4]
   158d8:	e20000f8 	and	r0, r0, #248	; 0xf8
   158dc:	e1510000 	cmp	r1, r0
   158e0:	0a000003 	beq	0x158f4
   158e4:	e59d103c 	ldr	r1, [sp, #60]	; 0x3c
   158e8:	e24f0f81 	sub	r0, pc, #516	; 0x15af4
   158ec:	e1a02008 	mov	r2, r8
   158f0:	eb000165 	bl	0x15e8c
   158f4:	e1cd00d0 	ldrd	r0, [sp]
   158f8:	e0800001 	add	r0, r0, r1
   158fc:	e08a100b 	add	r1, sl, fp
   15900:	e0200591 	mla	r0, r1, r5, r0
   15904:	e3a01000 	mov	r1, #0
   15908:	e1a000a0 	lsr	r0, r0, #1

f1590c:
   1590c:	e1550000 	cmp	r5, r0
   15910:	90400005 	subls	r0, r0, r5
   15914:	92811001 	addls	r1, r1, #1
   15918:	9afffffb 	bls	0x1590c
   1591c:	e1800400 	orr	r0, r0, r0, lsl #8
   15920:	e58902c0 	str	r0, [r9, #704]	; 0x2c0
   15924:	e59902c8 	ldr	r0, [r9, #712]	; 0x2c8
   15928:	e1811181 	orr	r1, r1, r1, lsl #3
   1592c:	e3c0003f 	bic	r0, r0, #63	; 0x3f
   15930:	e1800001 	orr	r0, r0, r1
   15934:	e58902c8 	str	r0, [r9, #712]	; 0x2c8
   15938:	e2888001 	add	r8, r8, #1
   1593c:	e3580004 	cmp	r8, #4
   15940:	3affffce 	bcc	0x15880
   15944:	e5960004 	ldr	r0, [r6, #4]
   15948:	e3100001 	tst	r0, #1
   1594c:	0afffffc 	beq	0x15944
   15950:	e5940014 	ldr	r0, [r4, #20]
   15954:	e3c00402 	bic	r0, r0, #33554432	; 0x2000000
   15958:	e5840014 	str	r0, [r4, #20]
   1595c:	e3a00000 	mov	r0, #0
   15960:	e58601b0 	str	r0, [r6, #432]	; 0x1b0
   15964:	e5960060 	ldr	r0, [r6, #96]	; 0x60
   15968:	e3c00001 	bic	r0, r0, #1
   1596c:	e5860060 	str	r0, [r6, #96]	; 0x60
   15970:	e3a00001 	mov	r0, #1
   15974:	eafffddf 	b	0x150f8

f15978:
   15978:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   1597c:	e28f0f8b 	add	r0, pc, #556	; 0x15bb0
   15980:	e1a05001 	mov	r5, r1
   15984:	e3a04000 	mov	r4, #0
   15988:	eb00013f 	bl	0x15e8c
v1598c:
   1598c:	e5951000 	ldr	r1, [r5]
   15990:	e28f0e23 	add	r0, pc, #560	; 0x15bc8
   15994:	eb00013c 	bl	0x15e8c
   15998:	e5951008 	ldr	r1, [r5, #8]
   1599c:	e28f0f8d 	add	r0, pc, #564	; 0x15bd8
   159a0:	eb000139 	bl	0x15e8c
   159a4:	e5950004 	ldr	r0, [r5, #4]
   159a8:	e3500007 	cmp	r0, #7
   159ac:	028f0f8e 	addeq	r0, pc, #568	; 0x15bec
   159b0:	0a000005 	beq	0x159cc
   159b4:	e3500003 	cmp	r0, #3
   159b8:	028f0f8f 	addeq	r0, pc, #572	; 0x15bfc
   159bc:	0a000002 	beq	0x159cc
   159c0:	e3500006 	cmp	r0, #6
   159c4:	028f0d09 	addeq	r0, pc, #576	; 0x15c0c
   159c8:	1a000000 	bne	0x159d0
   159cc:	eb00012e 	bl	0x15e8c
   159d0:	e5950014 	ldr	r0, [r5, #20]
   159d4:	e3100c02 	tst	r0, #512	; 0x200
   159d8:	128f0f8f 	addne	r0, pc, #572	; 0x15c1c
   159dc:	028f0f92 	addeq	r0, pc, #584	; 0x15c2c
   159e0:	eb000129 	bl	0x15e8c
   159e4:	e5950004 	ldr	r0, [r5, #4]
   159e8:	e3500003 	cmp	r0, #3
   159ec:	0bfff9a6 	bleq	0x1408c
   159f0:	e59f0244 	ldr	r0, [pc, #580]	; 0x15c3c
   159f4:	ebfff6db 	bl	0x13568
   159f8:	e59f1240 	ldr	r1, [pc, #576]	; 0x15c40
   159fc:	e5910000 	ldr	r0, [r1]
   15a00:	e3800c03 	orr	r0, r0, #768	; 0x300
   15a04:	e5810000 	str	r0, [r1]
   15a08:	e1811c41 	orr	r1, r1, r1, asr #24
   15a0c:	e3a00000 	mov	r0, #0
   15a10:	e5810000 	str	r0, [r1]
   15a14:	e30003e8 	movw	r0, #1000	; 0x3e8
   15a18:	ebfff6d2 	bl	0x13568
   15a1c:	e1a00005 	mov	r0, r5
   15a20:	ebfff9ba 	bl	0x14110
   15a24:	e1a00005 	mov	r0, r5
   15a28:	ebfffbab 	bl	0x148dc
   15a2c:	e1a01005 	mov	r1, r5
   15a30:	e3a00000 	mov	r0, #0
   15a34:	ebfffc80 	bl	0x14c3c
   15a38:	e3500000 	cmp	r0, #0
   15a3c:	08bd81f0 	popeq	{r4, r5, r6, r7, r8, pc}
   15a40:	e51f7e64 	ldr	r7, [pc, #-3684]	; 0x14be4
   15a44:	e595005c 	ldr	r0, [r5, #92]	; 0x5c
   15a48:	e3100001 	tst	r0, #1
   15a4c:	0a000011 	beq	0x15a98
   15a50:	e5950014 	ldr	r0, [r5, #20]
   15a54:	e7e30450 	ubfx	r0, r0, #8, #4
   15a58:	e3500001 	cmp	r0, #1
   15a5c:	0a000005 	beq	0x15a78
   15a60:	e1a01005 	mov	r1, r5
   15a64:	e3a00001 	mov	r0, #1
   15a68:	ebfffc73 	bl	0x14c3c
   15a6c:	e3500000 	cmp	r0, #0
   15a70:	08bd81f0 	popeq	{r4, r5, r6, r7, r8, pc}
   15a74:	ea00009e 	b	0x15cf4
   15a78:	e5970000 	ldr	r0, [r7]
   15a7c:	e3c00702 	bic	r0, r0, #524288	; 0x80000
   15a80:	e3800501 	orr	r0, r0, #4194304	; 0x400000
   15a84:	e5870000 	str	r0, [r7]
   15a88:	e5970004 	ldr	r0, [r7, #4]
   15a8c:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
   15a90:	e5870004 	str	r0, [r7, #4]
   15a94:	ea000096 	b	0x15cf4
   15a98:	e1a01005 	mov	r1, r5
   15a9c:	e3a00001 	mov	r0, #1
   15aa0:	ebfffc65 	bl	0x14c3c
   15aa4:	e3500000 	cmp	r0, #0
   15aa8:	1a00000a 	bne	0x15ad8
   15aac:	e2850014 	add	r0, r5, #20
   15ab0:	e3002100 	movw	r2, #256	; 0x100
   15ab4:	e3001f00 	movw	r1, #3840	; 0xf00
   15ab8:	ebfff98f 	bl	0x140fc
   15abc:	e5970000 	ldr	r0, [r7]
   15ac0:	e3c00702 	bic	r0, r0, #524288	; 0x80000
v15ac4:
   15ac4:	e3800501 	orr	r0, r0, #4194304	; 0x400000
   15ac8:	e5870000 	str	r0, [r7]
   15acc:	e5970004 	ldr	r0, [r7, #4]
   15ad0:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
   15ad4:	e5870004 	str	r0, [r7, #4]
   15ad8:	e5970000 	ldr	r0, [r7]
   15adc:	e3c00702 	bic	r0, r0, #524288	; 0x80000
   15ae0:	e3800501 	orr	r0, r0, #4194304	; 0x400000
   15ae4:	e5870000 	str	r0, [r7]
   15ae8:	e3020710 	movw	r0, #10000	; 0x2710
   15aec:	ebfff69d 	bl	0x13568
   15af0:	e3a06202 	mov	r6, #536870912	; 0x20000000
v15af4:
   15af4:	e3140001 	tst	r4, #1
   15af8:	11a00104 	lslne	r0, r4, #2
   15afc:	12800202 	addne	r0, r0, #536870912	; 0x20000000
   15b00:	00860104 	addeq	r0, r6, r4, lsl #2
   15b04:	01e00000 	mvneq	r0, r0
   15b08:	e7860104 	str	r0, [r6, r4, lsl #2]
   15b0c:	e2844001 	add	r4, r4, #1
   15b10:	e3540040 	cmp	r4, #64	; 0x40
   15b14:	3afffff6 	bcc	0x15af4
   15b18:	e5970000 	ldr	r0, [r7]
   15b1c:	e3c00c0f 	bic	r0, r0, #3840	; 0xf00
   15b20:	e3800e6f 	orr	r0, r0, #1776	; 0x6f0
   15b24:	e5870000 	str	r0, [r7]
   15b28:	e3a000c8 	mov	r0, #200	; 0xc8
   15b2c:	ebfff68d 	bl	0x13568
   15b30:	e3a0100b 	mov	r1, #11
   15b34:	e3a04001 	mov	r4, #1

f15b38:
   15b38:	e281000c 	add	r0, r1, #12
   15b3c:	e3a02000 	mov	r2, #0
   15b40:	e1a00014 	lsl	r0, r4, r0
   15b44:	e2803202 	add	r3, r0, #536870912	; 0x20000000
   15b48:	e1a00002 	mov	r0, r2
   15b4c:	e796c100 	ldr	ip, [r6, r0, lsl #2]
   15b50:	e793e100 	ldr	lr, [r3, r0, lsl #2]
   15b54:	e2800001 	add	r0, r0, #1
   15b58:	e15c000e 	cmp	ip, lr
   15b5c:	02822001 	addeq	r2, r2, #1
   15b60:	e3500040 	cmp	r0, #64	; 0x40
   15b64:	3afffff8 	bcc	0x15b4c
   15b68:	e3520040 	cmp	r2, #64	; 0x40
   15b6c:	0a000034 	beq	0x15c44
   15b70:	e2811001 	add	r1, r1, #1
   15b74:	e3510010 	cmp	r1, #16
   15b78:	9affffee 	bls	0x15b38
   15b7c:	ea000032 	b	0x15c4c

v15b80:
   15b80:	"Channel %d Two RANK available!\n",0
v15ba0:
   15ba0:	"Full DQ Used!\n",0,0
v15bb0:
   15bb0:	"INFO: dram code V2.2\n",0,0,0
v15bc8:
   15bc8:	"dram clk=%d\n",0,0,0,0
v15bd8:
   15bd8:	"dram_zq = 0x%x!!\n",0,0,0
v15bec:
   15bec:	"LPDDR3 used!!\n",0,0
v15bfc:
   15bfc:	"DDR3 ised!!\n",0,0,0,0
v15c0c:
   15c0c:	"LPDDR2 used!!\n",0,0
v15c1c:
   15c1c:	"dram channle 2\n",0
v15c2c:
   15c2c:	"dram channle 1\n",0

v15c3c:
   15c3c:	000186a0
v15c40:
   15c40:	080015e0

   15c44:	e3510010 	cmp	r1, #16
   15c48:	3a000000 	bcc	0x15c50
   15c4c:	e3a01010 	mov	r1, #16
   15c50:	e2850010 	add	r0, r5, #16
   15c54:	e1a02a01 	lsl	r2, r1, #20
   15c58:	e3a016ff 	mov	r1, #267386880	; 0xff00000
   15c5c:	ebfff926 	bl	0x140fc
   15c60:	e5970000 	ldr	r0, [r7]
   15c64:	e3c00eff 	bic	r0, r0, #4080	; 0xff0
   15c68:	e3800eaa 	orr	r0, r0, #2720	; 0xaa0
   15c6c:	e5870000 	str	r0, [r7]
   15c70:	e3a000c8 	mov	r0, #200	; 0xc8
   15c74:	ebfff63b 	bl	0x13568
   15c78:	e3a01009 	mov	r1, #9

f15c7c:
   15c7c:	e3a02000 	mov	r2, #0
   15c80:	e1a00114 	lsl	r0, r4, r1
   15c84:	e2803202 	add	r3, r0, #536870912	; 0x20000000
   15c88:	e1a00002 	mov	r0, r2
   15c8c:	e7967100 	ldr	r7, [r6, r0, lsl #2]
   15c90:	e793c100 	ldr	ip, [r3, r0, lsl #2]
   15c94:	e2800001 	add	r0, r0, #1
   15c98:	e157000c 	cmp	r7, ip
   15c9c:	02822001 	addeq	r2, r2, #1
   15ca0:	e3500040 	cmp	r0, #64	; 0x40
   15ca4:	3afffff8 	bcc	0x15c8c
   15ca8:	e3520040 	cmp	r2, #64	; 0x40
   15cac:	0a000003 	beq	0x15cc0
   15cb0:	e2811001 	add	r1, r1, #1
   15cb4:	e351000d 	cmp	r1, #13
   15cb8:	9affffef 	bls	0x15c7c
   15cbc:	ea000001 	b	0x15cc8
   15cc0:	e351000d 	cmp	r1, #13
   15cc4:	3a000001 	bcc	0x15cd0
   15cc8:	e3a0100d 	mov	r1, #13
   15ccc:	ea000002 	b	0x15cdc
   15cd0:	e3510009 	cmp	r1, #9
   15cd4:	03a00000 	moveq	r0, #0
   15cd8:	0a000001 	beq	0x15ce4
   15cdc:	e241000a 	sub	r0, r1, #10
   15ce0:	e1a00014 	lsl	r0, r4, r0
   15ce4:	e3a0180f 	mov	r1, #983040	; 0xf0000
   15ce8:	e1a02800 	lsl	r2, r0, #16
   15cec:	e2850010 	add	r0, r5, #16
   15cf0:	ebfff901 	bl	0x140fc
   15cf4:	e1a00005 	mov	r0, r5
   15cf8:	ebfffb82 	bl	0x14b08
   15cfc:	e3a000c8 	mov	r0, #200	; 0xc8
   15d00:	ebfff618 	bl	0x13568
   15d04:	ebfffbba 	bl	0x14bf4
   15d08:	e1a04000 	mov	r4, r0
   15d0c:	e1a02000 	mov	r2, r0
   15d10:	e2850010 	add	r0, r5, #16
   15d14:	e30f1fff 	movw	r1, #65535	; 0xffff
   15d18:	ebfff8f7 	bl	0x140fc
   15d1c:	e3a02003 	mov	r2, #3
   15d20:	e285005c 	add	r0, r5, #92	; 0x5c
   15d24:	e1a01002 	mov	r1, r2
   15d28:	ebfff8f3 	bl	0x140fc
   15d2c:	e28f00f4 	add	r0, pc, #244	; 0x15e28
   15d30:	e1a01004 	mov	r1, r4
   15d34:	eb000054 	bl	0x15e8c
   15d38:	e1a00004 	mov	r0, r4
   15d3c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

f15d40:
   15d40:	e59f10f8 	ldr	r1, [pc, #248]	; 0x15e40
   15d44:	e3a00000 	mov	r0, #0
   15d48:	e92d4010 	push	{r4, lr}
   15d4c:	e5810000 	str	r0, [r1]
   15d50:	e5810004 	str	r0, [r1, #4]
   15d54:	e5810008 	str	r0, [r1, #8]
   15d58:	eb000011 	bl	0x15da4
   15d5c:	e59f00e0 	ldr	r0, [pc, #224]	; 0x15e44
   15d60:	e5901000 	ldr	r1, [r0]
   15d64:	e3c11008 	bic	r1, r1, #8
   15d68:	e5801000 	str	r1, [r0]
   15d6c:	e5901000 	ldr	r1, [r0]
   15d70:	e3811008 	orr	r1, r1, #8
   15d74:	e5801000 	str	r1, [r0]
   15d78:	e2400088 	sub	r0, r0, #136	; 0x88
   15d7c:	e5901000 	ldr	r1, [r0]
   15d80:	e3811008 	orr	r1, r1, #8
   15d84:	e5801000 	str	r1, [r0]
   15d88:	e59f10b8 	ldr	r1, [pc, #184]	; 0x15e48
   15d8c:	e3a00001 	mov	r0, #1
   15d90:	e5810000 	str	r0, [r1]
   15d94:	e3000103 	movw	r0, #259	; 0x103
   15d98:	e1811340 	orr	r1, r1, r0, asr #6
   15d9c:	e5810000 	str	r0, [r1]
   15da0:	e8bd8010 	pop	{r4, pc}

f15da4:
   15da4:	e92d4070 	push	{r4, r5, r6, lr}
   15da8:	e59f509c 	ldr	r5, [pc, #156]	; 0x15e4c
   15dac:	e5954000 	ldr	r4, [r5]
   15db0:	e28f0098 	add	r0, pc, #152	; 0x15e50
   15db4:	e1a01004 	mov	r1, r4
   15db8:	eb000033 	bl	0x15e8c
   15dbc:	e3840001 	orr	r0, r4, #1
   15dc0:	e5850000 	str	r0, [r5]
   15dc4:	e5951000 	ldr	r1, [r5]
   15dc8:	e28f0080 	add	r0, pc, #128	; 0x15e50
   15dcc:	eb00002e 	bl	0x15e8c
   15dd0:	e59f0080 	ldr	r0, [pc, #128]	; 0x15e58
   15dd4:	e5901000 	ldr	r1, [r0]
   15dd8:	e3c110ff 	bic	r1, r1, #255	; 0xff
   15ddc:	e5801000 	str	r1, [r0]
   15de0:	e5901000 	ldr	r1, [r0]
   15de4:	e3811033 	orr	r1, r1, #51	; 0x33
   15de8:	e5801000 	str	r1, [r0]
   15dec:	e280001c 	add	r0, r0, #28
   15df0:	e5901000 	ldr	r1, [r0]
   15df4:	e3c1100f 	bic	r1, r1, #15
   15df8:	e5801000 	str	r1, [r0]
   15dfc:	e5901000 	ldr	r1, [r0]
   15e00:	e3811005 	orr	r1, r1, #5
   15e04:	e5801000 	str	r1, [r0]
   15e08:	e2400008 	sub	r0, r0, #8
   15e0c:	e5901000 	ldr	r1, [r0]
   15e10:	e3c1100f 	bic	r1, r1, #15
   15e14:	e5801000 	str	r1, [r0]
   15e18:	e5901000 	ldr	r1, [r0]
   15e1c:	e381100a 	orr	r1, r1, #10
   15e20:	e5801000 	str	r1, [r0]
   15e24:	e8bd8070 	pop	{r4, r5, r6, pc}

v15e28:
   15e28:	"dram size=%dMBytes!\n",0,0,0,0
v15e40:
   15e40:	00016be8
v15e44:
   15e44:	080014b0
v15e48:
   15e48:	08003400
v15e4c:
   15e4c:	08001428
v15e50:
   15e50:	"0x%x\n",0,0,0
v15e58:
   15e58:	08002c48


f15e5c:
   15e5c:	e92d4010 	push	{r4, lr}
   15e60:	e1a04000 	mov	r4, r0
   15e64:	ea000004 	b	0x15e7c
   15e68:	e350000a 	cmp	r0, #10
   15e6c:	03a0000d 	moveq	r0, #13
   15e70:	0b0000dc 	bleq	0x161e8
   15e74:	e4d40001 	ldrb	r0, [r4], #1
   15e78:	eb0000da 	bl	0x161e8
   15e7c:	e5d40000 	ldrb	r0, [r4]
   15e80:	e3500000 	cmp	r0, #0
   15e84:	1afffff7 	bne	0x15e68
   15e88:	e8bd8010 	pop	{r4, pc}

f15e8c:
   15e8c:	e92d000f 	push	{r0, r1, r2, r3}
   15e90:	e92d407f 	push	{r0, r1, r2, r3, r4, r5, r6, lr}
   15e94:	e28d4024 	add	r4, sp, #36	; 0x24
   15e98:	ea000034 	b	0x15f70
   15e9c:	e3500025 	cmp	r0, #37	; 0x25
   15ea0:	0a000007 	beq	0x15ec4
   15ea4:	e350000a 	cmp	r0, #10
   15ea8:	03a0000d 	moveq	r0, #13
   15eac:	0b0000cd 	bleq	0x161e8
   15eb0:	e59d1020 	ldr	r1, [sp, #32]
   15eb4:	e4d10001 	ldrb	r0, [r1], #1
   15eb8:	e58d1020 	str	r1, [sp, #32]
   15ebc:	eb0000c9 	bl	0x161e8
   15ec0:	ea00002a 	b	0x15f70
   15ec4:	e2811001 	add	r1, r1, #1
   15ec8:	e58d1020 	str	r1, [sp, #32]
   15ecc:	e1a0500d 	mov	r5, sp
   15ed0:	e3a02058 	mov	r2, #88	; 0x58
   15ed4:	e5d10000 	ldrb	r0, [r1]
   15ed8:	e3500070 	cmp	r0, #112	; 0x70
   15edc:	0a00001b 	beq	0x15f50
   15ee0:	ca000008 	bgt	0x15f08
   15ee4:	e3500058 	cmp	r0, #88	; 0x58
   15ee8:	0a000018 	beq	0x15f50
   15eec:	e3500063 	cmp	r0, #99	; 0x63
   15ef0:	04940004 	ldreq	r0, [r4], #4
   15ef4:	020000ff 	andeq	r0, r0, #255	; 0xff
   15ef8:	0a00000e 	beq	0x15f38
   15efc:	e3500064 	cmp	r0, #100	; 0x64
   15f00:	1a000008 	bne	0x15f28
   15f04:	ea00000d 	b	0x15f40
   15f08:	e3500073 	cmp	r0, #115	; 0x73
   15f0c:	04940004 	ldreq	r0, [r4], #4
   15f10:	0a000012 	beq	0x15f60
   15f14:	e3500075 	cmp	r0, #117	; 0x75
   15f18:	0a00001a 	beq	0x15f88
   15f1c:	e3500078 	cmp	r0, #120	; 0x78
   15f20:	03a02078 	moveq	r2, #120	; 0x78
   15f24:	0a000009 	beq	0x15f50
   15f28:	e3a00025 	mov	r0, #37	; 0x25
   15f2c:	eb0000ad 	bl	0x161e8
   15f30:	e59d0020 	ldr	r0, [sp, #32]
   15f34:	e5d00000 	ldrb	r0, [r0]
   15f38:	eb0000aa 	bl	0x161e8
   15f3c:	ea000008 	b	0x15f64
   15f40:	e4940004 	ldr	r0, [r4], #4
   15f44:	e1a01005 	mov	r1, r5
   15f48:	eb000012 	bl	0x15f98
   15f4c:	ea000002 	b	0x15f5c
   15f50:	e4940004 	ldr	r0, [r4], #4
   15f54:	e1a01005 	mov	r1, r5
   15f58:	eb000050 	bl	0x160a0
   15f5c:	e1a00005 	mov	r0, r5
   15f60:	ebffffbd 	bl	0x15e5c
   15f64:	e59d0020 	ldr	r0, [sp, #32]
   15f68:	e2800001 	add	r0, r0, #1
   15f6c:	e58d0020 	str	r0, [sp, #32]
   15f70:	e59d1020 	ldr	r1, [sp, #32]
   15f74:	e5d10000 	ldrb	r0, [r1]
   15f78:	e3500000 	cmp	r0, #0
   15f7c:	1affffc6 	bne	0x15e9c
   15f80:	e8bd007f 	pop	{r0, r1, r2, r3, r4, r5, r6}
   15f84:	e49df014 	ldr	pc, [sp], #20
   15f88:	e4940004 	ldr	r0, [r4], #4
   15f8c:	e1a01005 	mov	r1, r5
   15f90:	eb000025 	bl	0x1602c
   15f94:	eafffff0 	b	0x15f5c

f15f98:
   15f98:	e92d407e 	push	{r1, r2, r3, r4, r5, r6, lr}
   15f9c:	e3500000 	cmp	r0, #0
   15fa0:	e3a0c000 	mov	ip, #0
   15fa4:	b2600000 	rsblt	r0, r0, #0
   15fa8:	e1a0600c 	mov	r6, ip
   15fac:	03a00030 	moveq	r0, #48	; 0x30
   15fb0:	05c10000 	strbeq	r0, [r1]
   15fb4:	b3a0c001 	movlt	ip, #1
   15fb8:	13a02000 	movne	r2, #0
   15fbc:	11a0500d 	movne	r5, sp
   15fc0:	13a0300a 	movne	r3, #10
   15fc4:	05c16001 	strbeq	r6, [r1, #1]
   15fc8:	0a000016 	beq	0x16028
   15fcc:	ea000005 	b	0x15fe8
   15fd0:	e1a04000 	mov	r4, r0
   15fd4:	e710f310 	sdiv	r0, r0, r3
   15fd8:	e0644093 	mls	r4, r3, r0, r4
   15fdc:	e2844030 	add	r4, r4, #48	; 0x30
   15fe0:	e7c54002 	strb	r4, [r5, r2]
   15fe4:	e2822001 	add	r2, r2, #1
   15fe8:	e3500000 	cmp	r0, #0
   15fec:	cafffff7 	bgt	0x15fd0
   15ff0:	e35c0001 	cmp	ip, #1
   15ff4:	e3a00000 	mov	r0, #0
   15ff8:	03a0002d 	moveq	r0, #45	; 0x2d
   15ffc:	05c10000 	strbeq	r0, [r1]
   16000:	e2422001 	sub	r2, r2, #1
   16004:	03a00001 	moveq	r0, #1
   16008:	ea000003 	b	0x1601c
   1600c:	e7d53002 	ldrb	r3, [r5, r2]
   16010:	e2422001 	sub	r2, r2, #1
   16014:	e7c13000 	strb	r3, [r1, r0]
   16018:	e2800001 	add	r0, r0, #1
   1601c:	e3520000 	cmp	r2, #0
   16020:	b7c16000 	strblt	r6, [r1, r0]
   16024:	aafffff8 	bge	0x1600c
   16028:	e8bd807e 	pop	{r1, r2, r3, r4, r5, r6, pc}

f1602c:
   1602c:	e92d407e 	push	{r1, r2, r3, r4, r5, r6, lr}
   16030:	e3500000 	cmp	r0, #0
   16034:	e3a06000 	mov	r6, #0
   16038:	03a00030 	moveq	r0, #48	; 0x30
   1603c:	05c10000 	strbeq	r0, [r1]
   16040:	13a02000 	movne	r2, #0
   16044:	13a0300a 	movne	r3, #10
   16048:	11a0500d 	movne	r5, sp
   1604c:	05c16001 	strbeq	r6, [r1, #1]
   16050:	0a000011 	beq	0x1609c
   16054:	e1a04000 	mov	r4, r0
   16058:	e730f310 	udiv	r0, r0, r3
   1605c:	e0644093 	mls	r4, r3, r0, r4
   16060:	e3500000 	cmp	r0, #0
   16064:	e2844030 	add	r4, r4, #48	; 0x30
   16068:	e7c54002 	strb	r4, [r5, r2]
   1606c:	e2822001 	add	r2, r2, #1
   16070:	02420001 	subeq	r0, r2, #1
   16074:	03a02000 	moveq	r2, #0
   16078:	1afffff5 	bne	0x16054
   1607c:	ea000003 	b	0x16090
   16080:	e7d53000 	ldrb	r3, [r5, r0]
   16084:	e2400001 	sub	r0, r0, #1
   16088:	e7c13002 	strb	r3, [r1, r2]
   1608c:	e2822001 	add	r2, r2, #1
   16090:	e3500000 	cmp	r0, #0
   16094:	b7c16002 	strblt	r6, [r1, r2]
   16098:	aafffff8 	bge	0x16080
   1609c:	e8bd807e 	pop	{r1, r2, r3, r4, r5, r6, pc}

f160a0:
   160a0:	e59f303c 	ldr	r3, [pc, #60]	; 0x160e4
   160a4:	e3a02009 	mov	r2, #9
   160a8:	e92d4010 	push	{r4, lr}
   160ac:	e200400f 	and	r4, r0, #15
   160b0:	e1a00240 	asr	r0, r0, #4
   160b4:	e7d34004 	ldrb	r4, [r3, r4]
   160b8:	e7c14002 	strb	r4, [r1, r2]
   160bc:	e2422001 	sub	r2, r2, #1
   160c0:	e3520001 	cmp	r2, #1
   160c4:	cafffff8 	bgt	0x160ac
   160c8:	e3a00030 	mov	r0, #48	; 0x30
   160cc:	e5c10000 	strb	r0, [r1]
   160d0:	e3a00078 	mov	r0, #120	; 0x78
   160d4:	e5c10001 	strb	r0, [r1, #1]
   160d8:	e3a00000 	mov	r0, #0
   160dc:	e5c1000a 	strb	r0, [r1, #10]
   160e0:	e8bd8010 	pop	{r4, pc}
v160e4:
   160e4:	00016bf4 	strdeq	r6, [r1], -r4

f160e8:
   160e8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   160ec:	e59f5118 	ldr	r5, [pc, #280]	; 0x1620c
   160f0:	e3500007 	cmp	r0, #7
   160f4:	e1a03001 	mov	r3, r1
   160f8:	e1a04002 	mov	r4, r2
   160fc:	e5850000 	str	r0, [r5]
   16100:	88bd81f0 	pophi	{r4, r5, r6, r7, r8, pc}
   16104:	e59f1104 	ldr	r1, [pc, #260]	; 0x16210
   16108:	e5917000 	ldr	r7, [r1]
   1610c:	e2800010 	add	r0, r0, #16
   16110:	e3a06001 	mov	r6, #1
   16114:	e1a02016 	lsl	r2, r6, r0
   16118:	e1c70002 	bic	r0, r7, r2
   1611c:	e5810000 	str	r0, [r1]
   16120:	e3a00000 	mov	r0, #0
   16124:	e2800001 	add	r0, r0, #1
   16128:	e3500064 	cmp	r0, #100	; 0x64
   1612c:	3afffffc 	bcc	0x16124
   16130:	e5910000 	ldr	r0, [r1]
   16134:	e1800002 	orr	r0, r0, r2
   16138:	e5810000 	str	r0, [r1]
   1613c:	e59f10d0 	ldr	r1, [pc, #208]	; 0x16214
   16140:	e5910000 	ldr	r0, [r1]
   16144:	e1c00002 	bic	r0, r0, r2
   16148:	e5810000 	str	r0, [r1]
   1614c:	e3a00000 	mov	r0, #0
   16150:	e2800001 	add	r0, r0, #1
   16154:	e3500064 	cmp	r0, #100	; 0x64
   16158:	3afffffc 	bcc	0x16150
   1615c:	e5910000 	ldr	r0, [r1]
   16160:	e1800002 	orr	r0, r0, r2
   16164:	e5810000 	str	r0, [r1]
   16168:	e59f00a8 	ldr	r0, [pc, #168]	; 0x16218
   1616c:	e59012d8 	ldr	r1, [r0, #728]	; 0x2d8
   16170:	e1811002 	orr	r1, r1, r2
   16174:	e58012d8 	str	r1, [r0, #728]	; 0x2d8
   16178:	e3a02001 	mov	r2, #1
   1617c:	e3a01002 	mov	r1, #2
   16180:	e1a00003 	mov	r0, r3
   16184:	eb000025 	bl	0x16220
   16188:	e59f108c 	ldr	r1, [pc, #140]	; 0x1621c
   1618c:	e2840ae1 	add	r0, r4, #921600	; 0xe1000
   16190:	e731f110 	udiv	r1, r0, r1
   16194:	e5952000 	ldr	r2, [r5]
   16198:	e3a00407 	mov	r0, #117440512	; 0x7000000
   1619c:	e0800502 	add	r0, r0, r2, lsl #10
   161a0:	e590200c 	ldr	r2, [r0, #12]
   161a4:	e58060a4 	str	r6, [r0, #164]	; 0xa4
   161a8:	e3823080 	orr	r3, r2, #128	; 0x80
   161ac:	e580300c 	str	r3, [r0, #12]
   161b0:	e1a03421 	lsr	r3, r1, #8
   161b4:	e5803004 	str	r3, [r0, #4]
   161b8:	e20110ff 	and	r1, r1, #255	; 0xff
   161bc:	e5801000 	str	r1, [r0]
   161c0:	e3c21080 	bic	r1, r2, #128	; 0x80
   161c4:	e580100c 	str	r1, [r0, #12]
   161c8:	e3a01000 	mov	r1, #0
   161cc:	e58010a4 	str	r1, [r0, #164]	; 0xa4
   161d0:	e3a01003 	mov	r1, #3
   161d4:	e580100c 	str	r1, [r0, #12]
   161d8:	e3a01006 	mov	r1, #6
   161dc:	e5801008 	str	r1, [r0, #8]
   161e0:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
   161e4:	e12fff1e 	bx	lr

f161e8:
   161e8:	e59f101c 	ldr	r1, [pc, #28]	; 0x1620c
   161ec:	e3a02407 	mov	r2, #117440512	; 0x7000000
   161f0:	e5911000 	ldr	r1, [r1]
   161f4:	e0821501 	add	r1, r2, r1, lsl #10
   161f8:	e5912014 	ldr	r2, [r1, #20]
   161fc:	e3120040 	tst	r2, #64	; 0x40
   16200:	15810000 	strne	r0, [r1]
   16204:	0afffffb 	beq	0x161f8
   16208:	e12fff1e 	bx	lr
v1620c:
   1620c:	00016c08 	andeq	r6, r1, r8, lsl #24
v16210:
   16210:	060005b4 			; <UNDEFINED> instruction: 0x060005b4
v16214:
   16214:	06000594 			; <UNDEFINED> instruction: 0x06000594
v16218:
   16218:	01c20000 	biceq	r0, r2, r0
v1621c:
   1621c:	001c2000 	andseq	r2, ip, r0

f16220:
   16220:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   16224:	e3a03000 	mov	r3, #0
   16228:	e1a05000 	mov	r5, r0
   1622c:	e24dd020 	sub	sp, sp, #32
   16230:	e1a07003 	mov	r7, r3
   16234:	e1a0c003 	mov	ip, r3
   16238:	e1a0e003 	mov	lr, r3
   1623c:	e1a04003 	mov	r4, r3
   16240:	e1a0a003 	mov	sl, r3
   16244:	e58d301c 	str	r3, [sp, #28]
   16248:	e1a0b003 	mov	fp, r3
   1624c:	e58d3000 	str	r3, [sp]
   16250:	e1a00003 	mov	r0, r3
   16254:	e1a06003 	mov	r6, r3
   16258:	e58d3008 	str	r3, [sp, #8]
   1625c:	e58d3004 	str	r3, [sp, #4]
   16260:	e58d5014 	str	r5, [sp, #20]
   16264:	e59d1024 	ldr	r1, [sp, #36]	; 0x24
   16268:	e1560001 	cmp	r6, r1
   1626c:	2a00003c 	bcs	0x16364
   16270:	e59d1014 	ldr	r1, [sp, #20]
   16274:	e0815186 	add	r5, r1, r6, lsl #3
   16278:	e5d59000 	ldrb	r9, [r5]
   1627c:	e5d58001 	ldrb	r8, [r5, #1]
   16280:	e3590000 	cmp	r9, #0
   16284:	02866001 	addeq	r6, r6, #1
   16288:	0afffff5 	beq	0x16264
   1628c:	e1a02228 	lsr	r2, r8, #4
   16290:	e59f0278 	ldr	r0, [pc, #632]	; 0x16510
   16294:	e58d200c 	str	r2, [sp, #12]
   16298:	e0892189 	add	r2, r9, r9, lsl #3
   1629c:	e1a011a8 	lsr	r1, r8, #3
   162a0:	e0800102 	add	r0, r0, r2, lsl #2
   162a4:	e59d200c 	ldr	r2, [sp, #12]
   162a8:	e0804101 	add	r4, r0, r1, lsl #2
   162ac:	e080b102 	add	fp, r0, r2, lsl #2
   162b0:	e5943000 	ldr	r3, [r4]
   162b4:	e28ba01c 	add	sl, fp, #28
   162b8:	e59b701c 	ldr	r7, [fp, #28]
   162bc:	e5bbc014 	ldr	ip, [fp, #20]!
   162c0:	e5b0e010 	ldr	lr, [r0, #16]!
   162c4:	e98d0202 	stmib	sp, {r1, r9}
   162c8:	e0489181 	sub	r9, r8, r1, lsl #3
   162cc:	e3a01007 	mov	r1, #7
   162d0:	e58d2000 	str	r2, [sp]
   162d4:	e1a09109 	lsl	r9, r9, #2
   162d8:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
   162dc:	e1c33911 	bic	r3, r3, r1, lsl r9
   162e0:	e3520000 	cmp	r2, #0
   162e4:	0a000002 	beq	0x162f4
   162e8:	e5d51002 	ldrb	r1, [r5, #2]
   162ec:	e2011007 	and	r1, r1, #7
   162f0:	e1833911 	orr	r3, r3, r1, lsl r9
   162f4:	e59d100c 	ldr	r1, [sp, #12]
   162f8:	e1d520d3 	ldrsb	r2, [r5, #3]
   162fc:	e0489201 	sub	r9, r8, r1, lsl #4
   16300:	e3520000 	cmp	r2, #0
   16304:	e1a09089 	lsl	r9, r9, #1
   16308:	ba000003 	blt	0x1631c
   1630c:	e3a01003 	mov	r1, #3
   16310:	e1c77911 	bic	r7, r7, r1, lsl r9
   16314:	e2021003 	and	r1, r2, #3
   16318:	e1877911 	orr	r7, r7, r1, lsl r9

f1631c:
   1631c:	e1d520d4 	ldrsb	r2, [r5, #4]
   16320:	e3520000 	cmp	r2, #0
   16324:	ba000003 	blt	0x16338
   16328:	e3a01003 	mov	r1, #3
   1632c:	e1ccc911 	bic	ip, ip, r1, lsl r9
   16330:	e2021003 	and	r1, r2, #3
   16334:	e18cc911 	orr	ip, ip, r1, lsl r9

f16338:
   16338:	e5d59002 	ldrb	r9, [r5, #2]
   1633c:	e3590001 	cmp	r9, #1
   16340:	1a000007 	bne	0x16364
   16344:	e1d550d5 	ldrsb	r5, [r5, #5]
   16348:	e3550000 	cmp	r5, #0
   1634c:	ba000004 	blt	0x16364
   16350:	e3a09001 	mov	r9, #1
   16354:	e58d901c 	str	r9, [sp, #28]
   16358:	e2055001 	and	r5, r5, #1
   1635c:	e1cee819 	bic	lr, lr, r9, lsl r8
   16360:	e18ee815 	orr	lr, lr, r5, lsl r8

f16364:
   16364:	e59d1024 	ldr	r1, [sp, #36]	; 0x24
   16368:	e1510006 	cmp	r1, r6
   1636c:	93e00000 	mvnls	r0, #0
   16370:	82865001 	addhi	r5, r6, #1
   16374:	9a000063 	bls	0x16508
   16378:	ea000055 	b	0x164d4
   1637c:	e59d1014 	ldr	r1, [sp, #20]
   16380:	e0815185 	add	r5, r1, r5, lsl #3
   16384:	e5d59000 	ldrb	r9, [r5]
   16388:	e5d56001 	ldrb	r6, [r5, #1]
   1638c:	e3590000 	cmp	r9, #0
   16390:	0a000053 	beq	0x164e4
   16394:	e59d2000 	ldr	r2, [sp]
   16398:	e1a01226 	lsr	r1, r6, #4
   1639c:	e1a081a6 	lsr	r8, r6, #3
   163a0:	e1510002 	cmp	r1, r2
   163a4:	1a000002 	bne	0x163b4
   163a8:	e59d2008 	ldr	r2, [sp, #8]
   163ac:	e1590002 	cmp	r9, r2
   163b0:	0a000012 	beq	0x16400
   163b4:	e5843000 	str	r3, [r4]
   163b8:	e58a7000 	str	r7, [sl]
   163bc:	e58bc000 	str	ip, [fp]
   163c0:	e59d201c 	ldr	r2, [sp, #28]
   163c4:	e3520000 	cmp	r2, #0
   163c8:	13a02000 	movne	r2, #0
   163cc:	158d201c 	strne	r2, [sp, #28]
   163d0:	1580e000 	strne	lr, [r0]
   163d4:	e0892189 	add	r2, r9, r9, lsl #3
   163d8:	e59f0130 	ldr	r0, [pc, #304]	; 0x16510
   163dc:	e0800102 	add	r0, r0, r2, lsl #2
   163e0:	e0804108 	add	r4, r0, r8, lsl #2
   163e4:	e080b101 	add	fp, r0, r1, lsl #2
   163e8:	e28ba01c 	add	sl, fp, #28
   163ec:	e5943000 	ldr	r3, [r4]
   163f0:	e59b701c 	ldr	r7, [fp, #28]
   163f4:	e5bbc014 	ldr	ip, [fp, #20]!
   163f8:	e5b0e010 	ldr	lr, [r0, #16]!
   163fc:	ea000008 	b	0x16424
   16400:	e59d2004 	ldr	r2, [sp, #4]
   16404:	e1520008 	cmp	r2, r8
   16408:	0a000005 	beq	0x16424
   1640c:	e5843000 	str	r3, [r4]
   16410:	e0893189 	add	r3, r9, r9, lsl #3
   16414:	e1a03103 	lsl	r3, r3, #2
   16418:	e0834108 	add	r4, r3, r8, lsl #2
   1641c:	e59f30ec 	ldr	r3, [pc, #236]	; 0x16510
   16420:	e7b43003 	ldr	r3, [r4, r3]!
   16424:	e88d0302 	stm	sp, {r1, r8, r9}
   16428:	e1d520d2 	ldrsb	r2, [r5, #2]
   1642c:	e0468188 	sub	r8, r6, r8, lsl #3
   16430:	e58d200c 	str	r2, [sp, #12]
   16434:	e3520000 	cmp	r2, #0
   16438:	e1a08108 	lsl	r8, r8, #2
   1643c:	0a000007 	beq	0x16460
   16440:	e3a09007 	mov	r9, #7
   16444:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
   16448:	e1c33819 	bic	r3, r3, r9, lsl r8
   1644c:	e3520000 	cmp	r2, #0
   16450:	0a000002 	beq	0x16460
   16454:	e59d200c 	ldr	r2, [sp, #12]
   16458:	e2029007 	and	r9, r2, #7
   1645c:	e1833819 	orr	r3, r3, r9, lsl r8
   16460:	e1d590d3 	ldrsb	r9, [r5, #3]
   16464:	e0468201 	sub	r8, r6, r1, lsl #4
   16468:	e3590000 	cmp	r9, #0
   1646c:	e1a08088 	lsl	r8, r8, #1
   16470:	ba000003 	blt	0x16484
   16474:	e3a01003 	mov	r1, #3
   16478:	e2099003 	and	r9, r9, #3
   1647c:	e1c77811 	bic	r7, r7, r1, lsl r8
   16480:	e1877819 	orr	r7, r7, r9, lsl r8

f16484:
   16484:	e1d590d4 	ldrsb	r9, [r5, #4]
   16488:	e3590000 	cmp	r9, #0
   1648c:	ba000003 	blt	0x164a0
   16490:	e3a01003 	mov	r1, #3
   16494:	e2099003 	and	r9, r9, #3
   16498:	e1ccc811 	bic	ip, ip, r1, lsl r8
   1649c:	e18cc819 	orr	ip, ip, r9, lsl r8

f164a0:
   164a0:	e59d200c 	ldr	r2, [sp, #12]
   164a4:	e3520001 	cmp	r2, #1
   164a8:	1a000007 	bne	0x164cc
   164ac:	e1d550d5 	ldrsb	r5, [r5, #5]
   164b0:	e3550000 	cmp	r5, #0
   164b4:	ba000004 	blt	0x164cc
   164b8:	e3a08001 	mov	r8, #1
   164bc:	e58d801c 	str	r8, [sp, #28]
   164c0:	e2055001 	and	r5, r5, #1
   164c4:	e1cee618 	bic	lr, lr, r8, lsl r6
   164c8:	e18ee615 	orr	lr, lr, r5, lsl r6

f164cc:
   164cc:	e59d5018 	ldr	r5, [sp, #24]
   164d0:	e2855001 	add	r5, r5, #1
   164d4:	e59d1024 	ldr	r1, [sp, #36]	; 0x24
   164d8:	e58d5018 	str	r5, [sp, #24]
   164dc:	e1510005 	cmp	r1, r5
   164e0:	8affffa5 	bhi	0x1637c
   164e4:	e3540000 	cmp	r4, #0
   164e8:	0a000005 	beq	0x16504
   164ec:	e5843000 	str	r3, [r4]
   164f0:	e58a7000 	str	r7, [sl]
   164f4:	e58bc000 	str	ip, [fp]
   164f8:	e59d101c 	ldr	r1, [sp, #28]
   164fc:	e3510000 	cmp	r1, #0
   16500:	1580e000 	strne	lr, [r0]
   16504:	e3a00000 	mov	r0, #0

f16508:
   16508:	e28dd02c 	add	sp, sp, #44	; 0x2c
   1650c:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
v16510:
   16510:	060007dc 			; <UNDEFINED> instruction: 0x060007dc

f16514:
   16514:	e92d4070 	push	{r4, r5, r6, lr}
   16518:	e1a04003 	mov	r4, r3
   1651c:	e1a05002 	mov	r5, r2
   16520:	e1a03001 	mov	r3, r1
   16524:	e1a02000 	mov	r2, r0
   16528:	e3540000 	cmp	r4, #0
   1652c:	11a0c004 	movne	ip, r4
   16530:	01a0c005 	moveq	ip, r5
   16534:	e16fef1c 	clz	lr, ip
   16538:	e28e0001 	add	r0, lr, #1
   1653c:	e1a0c01c 	lsl	ip, ip, r0
   16540:	127ee03f 	rsbsne	lr, lr, #63	; 0x3f
   16544:	027ee01f 	rsbseq	lr, lr, #31
   16548:	4a000094 	bmi	0x167a0
   1654c:	e3530000 	cmp	r3, #0
   16550:	116f1f13 	clzne	r1, r3
   16554:	016f1f12 	clzeq	r1, r2
   16558:	1271103f 	rsbsne	r1, r1, #63	; 0x3f
   1655c:	0271101f 	rsbseq	r1, r1, #31
   16560:	e051600e 	subs	r6, r1, lr
   16564:	4a000092 	bmi	0x167b4
   16568:	52760004 	rsbspl	r0, r6, #4
   1656c:	5a000093 	bpl	0x167c0
   16570:	e24e0020 	sub	r0, lr, #32
   16574:	e3500004 	cmp	r0, #4
   16578:	d1a01035 	lsrle	r1, r5, r0
   1657c:	d18cc001 	orrle	ip, ip, r1
   16580:	e28f1f9f 	add	r1, pc, #636	; 0x16804
   16584:	e1a0ce2c 	lsr	ip, ip, #28
   16588:	e35e001f 	cmp	lr, #31
   1658c:	e791c10c 	ldr	ip, [r1, ip, lsl #2]
   16590:	824ee020 	subhi	lr, lr, #32
   16594:	e26e6020 	rsb	r6, lr, #32
   16598:	8a000048 	bhi	0x166c0
   1659c:	e081059c 	umull	r0, r1, ip, r5
   165a0:	e1a04e30 	lsr	r4, r0, lr
   165a4:	e1a01611 	lsl	r1, r1, r6
   165a8:	e1a00610 	lsl	r0, r0, r6
   165ac:	e1811004 	orr	r1, r1, r4
   165b0:	e2700000 	rsbs	r0, r0, #0
   165b4:	e2611000 	rsb	r1, r1, #0
   165b8:	32411001 	subcc	r1, r1, #1
   165bc:	e081019c 	umull	r0, r1, ip, r1
   165c0:	e08cc001 	add	ip, ip, r1
   165c4:	e081059c 	umull	r0, r1, ip, r5
   165c8:	e1a04e30 	lsr	r4, r0, lr
   165cc:	e1a01611 	lsl	r1, r1, r6
   165d0:	e1a00610 	lsl	r0, r0, r6
   165d4:	e1811004 	orr	r1, r1, r4
   165d8:	e2700000 	rsbs	r0, r0, #0
   165dc:	e2611000 	rsb	r1, r1, #0
   165e0:	32411001 	subcc	r1, r1, #1
   165e4:	e3530000 	cmp	r3, #0
   165e8:	e081019c 	umull	r0, r1, ip, r1
   165ec:	e08cc001 	add	ip, ip, r1
   165f0:	0a000009 	beq	0x1661c
   165f4:	e081059c 	umull	r0, r1, ip, r5
   165f8:	e1a04e30 	lsr	r4, r0, lr
   165fc:	e1a01611 	lsl	r1, r1, r6
   16600:	e1a00610 	lsl	r0, r0, r6
   16604:	e1811004 	orr	r1, r1, r4
   16608:	e2700000 	rsbs	r0, r0, #0
   1660c:	e2611000 	rsb	r1, r1, #0
   16610:	32411001 	subcc	r1, r1, #1
   16614:	e081019c 	umull	r0, r1, ip, r1
   16618:	e08cc001 	add	ip, ip, r1
   1661c:	e080129c 	umull	r1, r0, ip, r2
   16620:	e3a01000 	mov	r1, #0
   16624:	e0a1039c 	umlal	r0, r1, ip, r3
   16628:	e1a00e30 	lsr	r0, r0, lr
   1662c:	e1a04611 	lsl	r4, r1, r6
   16630:	e1800004 	orr	r0, r0, r4
   16634:	e1a01e31 	lsr	r1, r1, lr
   16638:	e0846590 	umull	r6, r4, r0, r5
   1663c:	e0522006 	subs	r2, r2, r6
   16640:	e0244591 	mla	r4, r1, r5, r4
   16644:	e0c33004 	sbc	r3, r3, r4
   16648:	e3530001 	cmp	r3, #1
   1664c:	31520005 	cmpcc	r2, r5
   16650:	38bd8070 	popcc	{r4, r5, r6, pc}
   16654:	e086429c 	umull	r4, r6, ip, r2
   16658:	e3a04000 	mov	r4, #0
   1665c:	e0a4639c 	umlal	r6, r4, ip, r3
   16660:	e26ec020 	rsb	ip, lr, #32
   16664:	e1a06e36 	lsr	r6, r6, lr
   16668:	e1a03c14 	lsl	r3, r4, ip
   1666c:	e1866003 	orr	r6, r6, r3
   16670:	e3a03000 	mov	r3, #0
   16674:	e1a04e34 	lsr	r4, r4, lr
   16678:	e08ce596 	umull	lr, ip, r6, r5
   1667c:	e0900006 	adds	r0, r0, r6
   16680:	e0a11004 	adc	r1, r1, r4
   16684:	e042200e 	sub	r2, r2, lr
   16688:	e1520005 	cmp	r2, r5
   1668c:	38bd8070 	popcc	{r4, r5, r6, pc}
   16690:	e2900001 	adds	r0, r0, #1
   16694:	e2a11000 	adc	r1, r1, #0
   16698:	e0422005 	sub	r2, r2, r5
   1669c:	e052c005 	subs	ip, r2, r5
   166a0:	21a0200c 	movcs	r2, ip
   166a4:	e2b00000 	adcs	r0, r0, #0
   166a8:	e2a11000 	adc	r1, r1, #0
   166ac:	e052c005 	subs	ip, r2, r5
   166b0:	21a0200c 	movcs	r2, ip
   166b4:	e2b00000 	adcs	r0, r0, #0
   166b8:	e2a11000 	adc	r1, r1, #0
   166bc:	e8bd8070 	pop	{r4, r5, r6, pc}
   166c0:	e080159c 	umull	r1, r0, ip, r5
   166c4:	e3a01000 	mov	r1, #0
   166c8:	e0a1049c 	umlal	r0, r1, ip, r4
   166cc:	e1a01611 	lsl	r1, r1, r6
   166d0:	e1a06e30 	lsr	r6, r0, lr
   166d4:	e1811006 	orr	r1, r1, r6
   166d8:	e26e6020 	rsb	r6, lr, #32
   166dc:	e2611000 	rsb	r1, r1, #0
   166e0:	e1a00610 	lsl	r0, r0, r6
   166e4:	e2700000 	rsbs	r0, r0, #0
   166e8:	32411001 	subcc	r1, r1, #1
   166ec:	e081019c 	umull	r0, r1, ip, r1
   166f0:	e08cc001 	add	ip, ip, r1
   166f4:	e080159c 	umull	r1, r0, ip, r5
   166f8:	e3a01000 	mov	r1, #0
   166fc:	e0a1049c 	umlal	r0, r1, ip, r4
   16700:	e1a01611 	lsl	r1, r1, r6
   16704:	e1a06e30 	lsr	r6, r0, lr
   16708:	e1811006 	orr	r1, r1, r6
   1670c:	e26e6020 	rsb	r6, lr, #32
   16710:	e2611000 	rsb	r1, r1, #0
   16714:	e1a00610 	lsl	r0, r0, r6
   16718:	e2700000 	rsbs	r0, r0, #0
   1671c:	32411001 	subcc	r1, r1, #1
   16720:	e081019c 	umull	r0, r1, ip, r1
   16724:	e08cc001 	add	ip, ip, r1
   16728:	e24cc001 	sub	ip, ip, #1
   1672c:	e080129c 	umull	r1, r0, ip, r2
   16730:	e3a01000 	mov	r1, #0
   16734:	e0a1039c 	umlal	r0, r1, ip, r3
   16738:	e1a00e31 	lsr	r0, r1, lr
   1673c:	e0816590 	umull	r6, r1, r0, r5
   16740:	e0522006 	subs	r2, r2, r6
   16744:	e0211490 	mla	r1, r0, r4, r1
   16748:	e0c33001 	sbc	r3, r3, r1
   1674c:	e1530004 	cmp	r3, r4
   16750:	01520005 	cmpeq	r2, r5
   16754:	33a01000 	movcc	r1, #0
   16758:	38bd8070 	popcc	{r4, r5, r6, pc}
   1675c:	e081629c 	umull	r6, r1, ip, r2
   16760:	e3a06000 	mov	r6, #0
   16764:	e0a6139c 	umlal	r1, r6, ip, r3
   16768:	e3a01000 	mov	r1, #0
   1676c:	e1a06e36 	lsr	r6, r6, lr
   16770:	e08ce596 	umull	lr, ip, r6, r5
   16774:	e0800006 	add	r0, r0, r6
   16778:	e052200e 	subs	r2, r2, lr
   1677c:	e02ec496 	mla	lr, r6, r4, ip
   16780:	e0c3300e 	sbc	r3, r3, lr
   16784:	e1530004 	cmp	r3, r4
   16788:	01520005 	cmpeq	r2, r5
   1678c:	38bd8070 	popcc	{r4, r5, r6, pc}
   16790:	e2800001 	add	r0, r0, #1
   16794:	e0522005 	subs	r2, r2, r5
   16798:	e0c33004 	sbc	r3, r3, r4
   1679c:	e8bd8070 	pop	{r4, r5, r6, pc}
   167a0:	e92d000c 	push	{r2, r3}
   167a4:	e3a01000 	mov	r1, #0
   167a8:	e3a00000 	mov	r0, #0
   167ac:	e1a00000 	nop			; (mov r0, r0)
   167b0:	e8bd807c 	pop	{r2, r3, r4, r5, r6, pc}
   167b4:	e3a01000 	mov	r1, #0
   167b8:	e3a00000 	mov	r0, #0
   167bc:	e8bd8070 	pop	{r4, r5, r6, pc}
   167c0:	e266e020 	rsb	lr, r6, #32
   167c4:	e3a00000 	mov	r0, #0
   167c8:	e3a01000 	mov	r1, #0
   167cc:	e1a04614 	lsl	r4, r4, r6
   167d0:	e1a0ce35 	lsr	ip, r5, lr
   167d4:	e1a05615 	lsl	r5, r5, r6
   167d8:	e184400c 	orr	r4, r4, ip
   167dc:	e052e005 	subs	lr, r2, r5
   167e0:	e0d3c004 	sbcs	ip, r3, r4
   167e4:	e0a00000 	adc	r0, r0, r0
   167e8:	21a0300c 	movcs	r3, ip
   167ec:	21a0200e 	movcs	r2, lr
   167f0:	e2566001 	subs	r6, r6, #1
   167f4:	38bd8070 	popcc	{r4, r5, r6, pc}
   167f8:	e1b040a4 	lsrs	r4, r4, #1
   167fc:	e1a05065 	rrx	r5, r5
   16800:	eafffff5 	b	0x167dc
v16804:
   16804:	f0f0f0f0 			; <UNDEFINED> instruction: 0xf0f0f0f0
   16808:	e38e38e3 	orr	r3, lr, #14876672	; 0xe30000
   1680c:	d79435e5 	ldrle	r3, [r4, r5, ror #11]
   16810:	cccccccc 	stclgt	12, cr12, [ip], {204}	; 0xcc
   16814:	c30c30c3 	movwgt	r3, #49347	; 0xc0c3
   16818:	ba2e8ba2 	blt	0xbb96a8
   1681c:	b21642c8 	andslt	r4, r6, #200, 4	; 0x8000000c
   16820:	aaaaaaaa 	bge	0xfeac12d0
   16824:	a3d70a3d 	bicsge	r0, r7, #249856	; 0x3d000
   16828:	9d89d89d 	stcls	8, cr13, [r9, #628]	; 0x274
   1682c:	97b425ed 	ldrls	r2, [r4, sp, ror #11]!
   16830:	92492492 	subls	r2, r9, #-1845493760	; 0x92000000
   16834:	8d3dcb08 	vldmdbhi	sp!, {d12-d15}
   16838:	88888888 	stmhi	r8, {r3, r7, fp, pc}
   1683c:	84210842 	strthi	r0, [r1], #-2114	; 0x842
   16840:	80000000 	andhi	r0, r0, r0
t16844:
   16844:	0320f1b2 	msreq	CPSR_, #-2147483604	; 0x8000002c
   16848:	f1c2d50a 			; <UNDEFINED> instruction: 0xf1c2d50a
   1684c:	fa010320 	blx	0x574d4
   16850:	fa20f102 	blx	0x852c60
   16854:	fa00f303 	blx	0x53468
   16858:	ea41f002 	b	0x1092868
   1685c:	47700103 	ldrbmi	r0, [r0, -r3, lsl #2]!
   16860:	f103fa00 			; <UNDEFINED> instruction: 0xf103fa00
   16864:	0000f04f 	andeq	pc, r0, pc, asr #32
   16868:	ea404770 	b	0x1028630
   1686c:	46020301 	strmi	r0, [r2], -r1, lsl #6
   16870:	079bb530 			; <UNDEFINED> instruction: 0x079bb530
   16874:	f04fd10f 			; <UNDEFINED> instruction: 0xf04fd10f
   16878:	e0003401 	and	r3, r0, r1, lsl #8
   1687c:	c908c208 	stmdbgt	r8, {r3, r9, lr, pc}
   16880:	f553fac4 	pld	[r3, #-2756]	; 0xac4
   16884:	d0f92d00 	rscsle	r2, r9, r0, lsl #26
   16888:	01fff013 	mvnseq	pc, r3, lsl r0	; <UNPREDICTABLE>
   1688c:	1b01f802 	blne	0x9489c
   16890:	0a1bd00d 	beq	0x70a8cc
   16894:	f811e7f8 			; <UNDEFINED> instruction: 0xf811e7f8
   16898:	2b003b01 	blcs	0x254a4
   1689c:	3b01f802 	blcc	0x948ac
   168a0:	f811d005 			; <UNDEFINED> instruction: 0xf811d005
   168a4:	2b003b01 	blcs	0x254b0
   168a8:	3b01f802 	blcc	0x948b8
   168ac:	bd30d1f3 	ldfltd	f5, [r0, #-972]!	; 0xfffffc34

f168b0:
   168b0:	e1803001 	orr	r3, r0, r1
   168b4:	e92d4070 	push	{r4, r5, r6, lr}
   168b8:	e3130003 	tst	r3, #3
   168bc:	059f60d8 	ldreq	r6, [pc, #216]	; 0x1699c
   168c0:	1a000020 	bne	0x16948
   168c4:	e3520004 	cmp	r2, #4
   168c8:	3a00001e 	bcc	0x16948
   168cc:	e4903004 	ldr	r3, [r0], #4
   168d0:	e4914004 	ldr	r4, [r1], #4
   168d4:	e2422004 	sub	r2, r2, #4
   168d8:	e6665ff3 	uqsub8	r5, r6, r3
   168dc:	e3550000 	cmp	r5, #0
   168e0:	0a000010 	beq	0x16928
   168e4:	e20300ff 	and	r0, r3, #255	; 0xff
   168e8:	e20410ff 	and	r1, r4, #255	; 0xff
   168ec:	e0400001 	sub	r0, r0, r1
   168f0:	e1901c05 	orrs	r1, r0, r5, lsl #24
   168f4:	18bd8070 	popne	{r4, r5, r6, pc}
   168f8:	e6ff0073 	uxth	r0, r3
   168fc:	e6ff1074 	uxth	r1, r4
   16900:	e0400001 	sub	r0, r0, r1
   16904:	e1901805 	orrs	r1, r0, r5, lsl #16
   16908:	18bd8070 	popne	{r4, r5, r6, pc}
   1690c:	e3c304ff 	bic	r0, r3, #-16777216	; 0xff000000
   16910:	e3c414ff 	bic	r1, r4, #-16777216	; 0xff000000
   16914:	e0400001 	sub	r0, r0, r1
   16918:	e1901405 	orrs	r1, r0, r5, lsl #8
   1691c:	01a00c23 	lsreq	r0, r3, #24
   16920:	00400c24 	subeq	r0, r0, r4, lsr #24
   16924:	e8bd8070 	pop	{r4, r5, r6, pc}
   16928:	e1530004 	cmp	r3, r4
   1692c:	0affffe4 	beq	0x168c4
   16930:	e6bf0f33 	rev	r0, r3
   16934:	e6bf1f34 	rev	r1, r4
   16938:	e1500001 	cmp	r0, r1
   1693c:	93e00000 	mvnls	r0, #0
   16940:	83a00001 	movhi	r0, #1
   16944:	e8bd8070 	pop	{r4, r5, r6, pc}
   16948:	e3520000 	cmp	r2, #0
   1694c:	03a00000 	moveq	r0, #0
   16950:	08bd8070 	popeq	{r4, r5, r6, pc}
   16954:	e4d03001 	ldrb	r3, [r0], #1
   16958:	e4d14001 	ldrb	r4, [r1], #1
   1695c:	e3530000 	cmp	r3, #0
   16960:	0a00000b 	beq	0x16994
   16964:	e1530004 	cmp	r3, r4
   16968:	1a000009 	bne	0x16994
   1696c:	e2522001 	subs	r2, r2, #1
   16970:	0a000007 	beq	0x16994
   16974:	e4d03001 	ldrb	r3, [r0], #1
   16978:	e4d14001 	ldrb	r4, [r1], #1
   1697c:	e3530000 	cmp	r3, #0
   16980:	0a000003 	beq	0x16994
   16984:	e1530004 	cmp	r3, r4
   16988:	1a000001 	bne	0x16994
   1698c:	e2522001 	subs	r2, r2, #1
   16990:	1affffef 	bne	0x16954
   16994:	e0430004 	sub	r0, r3, r4
   16998:	e8bd8070 	pop	{r4, r5, r6, pc}
v1699c:
   1699c:	01010101 	tsteq	r1, r1, lsl #2
   169a0:	e3520003 	cmp	r2, #3
   169a4:	9a000017 	bls	0x16a08
   169a8:	e210c003 	ands	ip, r0, #3
   169ac:	0a000008 	beq	0x169d4
   169b0:	e4d13001 	ldrb	r3, [r1], #1
   169b4:	e35c0002 	cmp	ip, #2
   169b8:	e082200c 	add	r2, r2, ip
   169bc:	94d1c001 	ldrbls	ip, [r1], #1
   169c0:	e4c03001 	strb	r3, [r0], #1
   169c4:	34d13001 	ldrbcc	r3, [r1], #1
   169c8:	94c0c001 	strbls	ip, [r0], #1
   169cc:	e2422004 	sub	r2, r2, #4
   169d0:	34c03001 	strbcc	r3, [r0], #1
   169d4:	e2113003 	ands	r3, r1, #3
   169d8:	0a000012 	beq	0x16a28
   169dc:	e2522008 	subs	r2, r2, #8
   169e0:	3a000004 	bcc	0x169f8
   169e4:	e4913004 	ldr	r3, [r1], #4
   169e8:	e2522008 	subs	r2, r2, #8
   169ec:	e491c004 	ldr	ip, [r1], #4
   169f0:	e8a01008 	stmia	r0!, {r3, ip}
   169f4:	eafffff9 	b	0x169e0
   169f8:	e2922004 	adds	r2, r2, #4
   169fc:	54913004 	ldrpl	r3, [r1], #4
   16a00:	54803004 	strpl	r3, [r0], #4
   16a04:	e1a00000 	nop			; (mov r0, r0)

f16a08:
   16a08:	e1b02f82 	lsls	r2, r2, #31
   16a0c:	24d13001 	ldrbcs	r3, [r1], #1
   16a10:	24d1c001 	ldrbcs	ip, [r1], #1
   16a14:	44d12001 	ldrbmi	r2, [r1], #1
   16a18:	24c03001 	strbcs	r3, [r0], #1
   16a1c:	24c0c001 	strbcs	ip, [r0], #1
   16a20:	44c02001 	strbmi	r2, [r0], #1
   16a24:	e12fff1e 	bx	lr

f16a28:
   16a28:	e92d4010 	push	{r4, lr}
   16a2c:	e2522020 	subs	r2, r2, #32
   16a30:	3a000005 	bcc	0x16a4c
   16a34:	e8b15018 	ldm	r1!, {r3, r4, ip, lr}
   16a38:	e2522020 	subs	r2, r2, #32
   16a3c:	e8a05018 	stmia	r0!, {r3, r4, ip, lr}
   16a40:	e8b15018 	ldm	r1!, {r3, r4, ip, lr}
   16a44:	e8a05018 	stmia	r0!, {r3, r4, ip, lr}
   16a48:	2afffff9 	bcs	0x16a34
   16a4c:	e1b0ce02 	lsls	ip, r2, #28
   16a50:	28b15018 	ldmcs	r1!, {r3, r4, ip, lr}
   16a54:	28a05018 	stmiacs	r0!, {r3, r4, ip, lr}
   16a58:	48b10018 	ldmmi	r1!, {r3, r4}
   16a5c:	48a00018 	stmiami	r0!, {r3, r4}
   16a60:	e8bd4010 	pop	{r4, lr}
   16a64:	e1b0cf02 	lsls	ip, r2, #30
   16a68:	24913004 	ldrcs	r3, [r1], #4
   16a6c:	24803004 	strcs	r3, [r0], #4
   16a70:	012fff1e 	bxeq	lr
   16a74:	e1b02f82 	lsls	r2, r2, #31
   16a78:	20d130b2 	ldrhcs	r3, [r1], #2
   16a7c:	44d12001 	ldrbmi	r2, [r1], #1
   16a80:	20c030b2 	strhcs	r3, [r0], #2
   16a84:	44c02001 	strbmi	r2, [r0], #1
   16a88:	e12fff1e 	bx	lr

t16a8c:
   16a8c:	0200f04f 	andeq	pc, r0, #79	; 0x1004f
   16a90:	4613b500 	ldrmi	fp, [r3], -r0, lsl #10
   16a94:	46964694 			; <UNDEFINED> instruction: 0x46964694
   16a98:	bf223920 	svclt	0x00223920
   16a9c:	500ce8a0 	andpl	lr, ip, r0, lsr #17
   16aa0:	500ce8a0 	andpl	lr, ip, r0, lsr #17
   16aa4:	0120f1b1 	msreq	CPSR_, r1	; <illegal shifter operand>
   16aa8:	aff7f4bf 	svcge	0x00f7f4bf
   16aac:	bf280709 	svclt	0x00280709
   16ab0:	500ce8a0 	andpl	lr, ip, r0, lsr #17
   16ab4:	c00cbf48 	andgt	fp, ip, r8, asr #30
   16ab8:	eb04f85d 	bl	0x154c34
   16abc:	bf280089 	svclt	0x00280089
   16ac0:	2b04f840 	blcs	0x154bc8
   16ac4:	4770bf08 	ldrbmi	fp, [r0, -r8, lsl #30]!
   16ac8:	f820bf48 			; <UNDEFINED> instruction: 0xf820bf48
   16acc:	f0112b02 			; <UNDEFINED> instruction: 0xf0112b02
   16ad0:	bf184f80 	svclt	0x00184f80
   16ad4:	2b01f800 	blcs	0x94adc
   16ad8:	00004770 	andeq	r4, r0, r0, ror r7
   16adc:	e3a00000 	mov	r0, #0
   16ae0:	ee070f15 	mcr	15, 0, r0, cr7, cr5, {0}
   16ae4:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
   16ae8:	e3800a01 	orr	r0, r0, #4096	; 0x1000
   16aec:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
   16af0:	e1a0f00e 	mov	pc, lr
   16af4:	e3a00000 	mov	r0, #0
   16af8:	ee070f15 	mcr	15, 0, r0, cr7, cr5, {0}
   16afc:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
   16b00:	e3c00004 	bic	r0, r0, #4
   16b04:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
   16b08:	e1a0f00e 	mov	pc, lr

f16b0c:
   16b0c:	e3a00000 	mov	r0, #0
   16b10:	ee070f15 	mcr	15, 0, r0, cr7, cr5, {0}
   16b14:	e1a0f00e 	mov	pc, lr

f16b18:
   16b18:	e1a0f000 	mov	pc, r0
   16b1c:	ee020f10 	mcr	15, 0, r0, cr2, cr0, {0}
   16b20:	e1a0f00e 	mov	pc, lr
   16b24:	ee130f10 	mrc	15, 0, r0, cr3, cr0, {0}
   16b28:	e59f001c 	ldr	r0, [pc, #28]	; 0x16b4c
   16b2c:	ee030f10 	mcr	15, 0, r0, cr3, cr0, {0}
   16b30:	e1a0f00e 	mov	pc, lr

f16b34:
   16b34:	e3a00000 	mov	r0, #0
   16b38:	ee080f17 	mcr	15, 0, r0, cr8, cr7, {0}
   16b3c:	e1a0f00e 	mov	pc, lr
   16b40:	ee110f30 	mrc	15, 0, r0, cr1, cr0, {1}
   16b44:	e3800040 	orr	r0, r0, #64	; 0x40
   16b48:	ee010f30 	mcr	15, 0, r0, cr1, cr0, {1}
v16b4c:
   16b4c:	55555555 	ldrbpl	r5, [r5, #-1365]	; 0x555
   16b50:	00002710 	andeq	r2, r0, r0, lsl r7
   16b54:	000186a0 	andeq	r8, r1, r0, lsr #13
   16b58:	000f4240 	andeq	r4, pc, r0, asr #4
   16b5c:	00989680 	addseq	r9, r8, r0, lsl #13
   16b60:	00000000 	andeq	r0, r0, r0
   16b64:	0000000a 	andeq	r0, r0, sl
   16b68:	0000000c 	andeq	r0, r0, ip
   16b6c:	0000000d 	andeq	r0, r0, sp
   16b70:	0000000f 	andeq	r0, r0, pc
   16b74:	00000014 	andeq	r0, r0, r4, lsl r0
   16b78:	00000019 	andeq	r0, r0, r9, lsl r0
   16b7c:	0000001e 	andeq	r0, r0, lr, lsl r0
   16b80:	00000023 	andeq	r0, r0, r3, lsr #32
   16b84:	00000028 	andeq	r0, r0, r8, lsr #32
   16b88:	0000002d 	andeq	r0, r0, sp, lsr #32
   16b8c:	00000032 	andeq	r0, r0, r2, lsr r0
   16b90:	00000037 	andeq	r0, r0, r7, lsr r0
   16b94:	0000003c 	andeq	r0, r0, ip, lsr r0
   16b98:	00000046 	andeq	r0, r0, r6, asr #32
   16b9c:	00000050 	andeq	r0, r0, r0, asr r0
   16ba0:	"SDMMC_PhyWrite",0
   16baf:	"SDMMC_PhyErase",0
   16bbe:	"SDMMC_LogicalWrite",0
   16bd1:	"SDMMC_LogicaErase",0,0
   16be4:	00000000 	andeq	r0, r0, r0
   16be8:	00000001 	andeq	r0, r0, r1
   16bec:	00000001 	andeq	r0, r0, r1
   16bf0:	00000001 	andeq	r0, r0, r1
   16bf4:	"0123456789abcdef"
   16c04:	00000000
   16c08:	00000000
