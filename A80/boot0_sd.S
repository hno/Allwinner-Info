
./lichee/tools/pack/chips/sun9iw1p1/bin/boot0_sdcard_sun9iw1p1.bin:     filformat binary


Disassembly of section .data:

00000000 <.data>:
       0:	ea0000bc 	b	0x2f8
       4:	4e4f4765 	"eGON.BT0"
       8:	3054422e 	
       c:	6f162d05 	svcvs	0x00162d05
      10:	00008000 	andeq	r8, r0, r0
      14:	00000030 	andeq	r0, r0, r0, lsr r0
      18:	30303131 	"1100"
	...
      24:	30303131 	"1100"
      28:	2e330000 	0,0,"3.1.0",0
      2c:	00302e31 	
      30:	000002c8 	0xc8,0x02,0,0
      34:	30333231 	"1230"
	...
      bc:	01030002 	
      c0:	00000001 	
      c4:	01030102 	
      c8:	00000001 	
	...
      f8:	01020006 	
      fc:	00000002 	
     100:	01020106 	
     104:	00000002 	
     108:	01020206 	
     10c:	00000002 	
     110:	01020306 	
     114:	00000002 	
     118:	01020406 	
     11c:	00000002 	
     120:	01020506 	
     124:	00000002 	
	...
     2f8:	e10f0000 	mrs	r0, CPSR
     2fc:	e3c0001f 	bic	r0, r0, #31
     300:	e3800013 	orr	r0, r0, #19
     304:	e38000c0 	orr	r0, r0, #192	; 0xc0
     308:	e3c00c02 	bic	r0, r0, #512	; 0x200
     30c:	e121f000 	msr	CPSR_c, r0
     310:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
     314:	e3c00005 	bic	r0, r0, #5
     318:	e3c00b06 	bic	r0, r0, #6144	; 0x1800
     31c:	e3c00002 	bic	r0, r0, #2
     320:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
     324:	e59fd008 	ldr	sp, [pc, #8]	; 0x334 = 0x19000
     328:	eb000d57 	bl	0x388c
     32c:	eb000b0a 	bl	0x2f5c
     330:	eafffffe 	b	0x330

     334:	00019000 	
     338:	e92d4070 	push	{r4, r5, r6, lr}
     33c:	e1a05000 	mov	r5, r0
     340:	e59f0140 	ldr	r0, [pc, #320]	; 0x488
     344:	e5d04028 	ldrb	r4, [r0, #40]	; 0x28
     348:	e28f0f4f 	add	r0, pc, #316	; 0x48c "card boot number = %d\n"
     34c:	e1a01004 	mov	r1, r4
     350:	eb0016cd 	bl	0x5e8c
     354:	e28f0f52 	add	r0, pc, #328	; 0x4a4 "card no is %d\n"
     358:	e1a01004 	mov	r1, r4
     35c:	eb0016ca 	bl	0x5e8c
     360:	e3540000 	cmp	r4, #0
     364:	aa000003 	bge	0x378
     368:	e28f0f51 	add	r0, pc, #324	; 0x4b4
     36c:	e1a01004 	mov	r1, r4
     370:	eb0016c5 	bl	0x5e8c
     374:	ea00001a 	b	0x3e4
     378:	e0855104 	add	r5, r5, r4, lsl #2
     37c:	e1a01004 	mov	r1, r4
     380:	e28f0e15 	add	r0, pc, #336	; 0x4d8
     384:	e5952038 	ldr	r2, [r5, #56]	; 0x38
     388:	eb0016bf 	bl	0x5e8c
     38c:	e5950038 	ldr	r0, [r5, #56]	; 0x38
     390:	e3500000 	cmp	r0, #0
     394:	03a00004 	moveq	r0, #4
     398:	05850038 	streq	r0, [r5, #56]	; 0x38
     39c:	e1a01000 	mov	r1, r0
     3a0:	e1a00004 	mov	r0, r4
     3a4:	eb000a96 	bl	0x2e04
     3a8:	e3700001 	cmn	r0, #1
     3ac:	028f0d05 	addeq	r0, pc, #320	; 0x4f4
     3b0:	0a00000a 	beq	0x3e0
     3b4:	e28f0e15 	add	r0, pc, #336	; 0x50c
     3b8:	e1a01004 	mov	r1, r4
     3bc:	eb0016b2 	bl	0x5e8c
     3c0:	e3a0242a 	mov	r2, #704643072	; 0x2a000000
     3c4:	e1a03004 	mov	r3, r4
     3c8:	e3a01002 	mov	r1, #2
     3cc:	e3090530 	movw	r0, #38192	; 0x9530
     3d0:	eb000a94 	bl	0x2e28
     3d4:	e3500002 	cmp	r0, #2
     3d8:	0a000005 	beq	0x3f4
     3dc:	e28f0f4f 	add	r0, pc, #316	; 0x520
     3e0:	eb0016a9 	bl	0x5e8c
     3e4:	e1a00004 	mov	r0, r4
     3e8:	eb000a8a 	bl	0x2e18
     3ec:	e3a00001 	mov	r0, #1
     3f0:	e8bd8070 	pop	{r4, r5, r6, pc}
     3f4:	e28f1f51 	add	r1, pc, #324	; 0x540
     3f8:	e3a0042a 	mov	r0, #704643072	; 0x2a000000
     3fc:	eb000bc9 	bl	0x3328
     400:	e3500000 	cmp	r0, #0
     404:	128f0f4f 	addne	r0, pc, #316	; 0x548
     408:	1afffff4 	bne	0x3e0
     40c:	e3a0642a 	mov	r6, #704643072	; 0x2a000000
     410:	e28f0f55 	add	r0, pc, #340	; 0x56c
     414:	e5965014 	ldr	r5, [r6, #20]
     418:	e1a01005 	mov	r1, r5
     41c:	eb00169a 	bl	0x5e8c
     420:	e1b00b85 	lsls	r0, r5, #23
     424:	128f0f57 	addne	r0, pc, #348	; 0x588
     428:	1affffec 	bne	0x3e0
     42c:	e1a014a5 	lsr	r1, r5, #9
     430:	e1a03004 	mov	r3, r4
     434:	e3a0242a 	mov	r2, #704643072	; 0x2a000000
     438:	e3090530 	movw	r0, #38192	; 0x9530
     43c:	eb000a79 	bl	0x2e28
     440:	e15004a5 	cmp	r0, r5, lsr #9
     444:	1affffe4 	bne	0x3dc
     448:	e3a0042a 	mov	r0, #704643072	; 0x2a000000
     44c:	e1a01005 	mov	r1, r5
     450:	eb000bbb 	bl	0x3344
     454:	e3500000 	cmp	r0, #0
     458:	128f0f51 	addne	r0, pc, #324	; 0x5a4
     45c:	1affffdf 	bne	0x3e0
     460:	e3540000 	cmp	r4, #0
     464:	03a00001 	moveq	r0, #1
     468:	13a00002 	movne	r0, #2
     46c:	e58600e4 	str	r0, [r6, #228]	; 0xe4
     470:	e28f0f52 	add	r0, pc, #328	; 0x5c0
     474:	eb001684 	bl	0x5e8c
     478:	e1a00004 	mov	r0, r4
     47c:	eb000a65 	bl	0x2e18
     480:	e3a00000 	mov	r0, #0
     484:	e8bd8070 	pop	{r4, r5, r6, pc}
     488:	00010000 	
     48c:	"card boot number = %d\n",0,0
     4a4:	"card no is %d\n",0,0
     4b4:	"bad card number %d in card boot\n",0,0,0,0
     4d8:	"sdcard %d line count %d\n",0,0,0,0
     4f4:	"Fail in Init sdmmc\n",0,0,0,0
     50c:	"sdcard %d init ok\n",0,0
     520:	"Fail in reading uboot head.\n",0,0,0,0
     548:	"ERROR! NOT find the head of uboot.\n",0
     56c:	"The size of uboot is %x.\n",0,0,0
     588:	"boot0 length is NOT align.\n",0
     5a4:	"Fail in checking uboot.\n",0,0,0,0
     5c0:	"Succeed in loading uboot from sdmmc flash.\n",0

     5ec:	e5903098 	ldr	r3, [r0, #152]	; 0x98
     5f0:	e12fff13 	bx	r3
     5f4:	e92d40f0 	push	{r4, r5, r6, r7, lr}
     5f8:	e24dd024 	sub	sp, sp, #36	; 0x24
     5fc:	e1a06000 	mov	r6, r0
     600:	e3a0000d 	mov	r0, #13
     604:	e59f7260 	ldr	r7, [pc, #608]	; 0x86c
     608:	e1a04001 	mov	r4, r1
     60c:	e58d0000 	str	r0, [sp]
     610:	e3a00015 	mov	r0, #21
     614:	e58d0004 	str	r0, [sp, #4]
     618:	e1d607bc 	ldrh	r0, [r6, #124]	; 0x7c
     61c:	e1a00800 	lsl	r0, r0, #16
     620:	e58d0008 	str	r0, [sp, #8]
     624:	e3a00000 	mov	r0, #0
     628:	e58d001c 	str	r0, [sp, #28]
     62c:	e3a02000 	mov	r2, #0
     630:	e1a0100d 	mov	r1, sp
     634:	e1a00006 	mov	r0, r6
     638:	ebffffeb 	bl	0x5ec
     63c:	e1b05000 	movs	r5, r0
     640:	0a000005 	beq	0x65c
     644:	e5961030 	ldr	r1, [r6, #48]	; 0x30
     648:	e28f0e22 	add	r0, pc, #544	; 0x870
     64c:	eb00160e 	bl	0x5e8c
     650:	e1a00005 	mov	r0, r5
     654:	e28dd024 	add	sp, sp, #36	; 0x24
     658:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
     65c:	e59d000c 	ldr	r0, [sp, #12]
     660:	e3100c01 	tst	r0, #256	; 0x100
     664:	0a000002 	beq	0x674
     668:	e3540000 	cmp	r4, #0
     66c:	0a00000f 	beq	0x6b0
     670:	ea00000c 	b	0x6a8
     674:	e3a00001 	mov	r0, #1
     678:	eb000c6b 	bl	0x382c
     67c:	e59d000c 	ldr	r0, [sp, #12]
     680:	e1100007 	tst	r0, r7
     684:	0a000005 	beq	0x6a0
     688:	e59d200c 	ldr	r2, [sp, #12]
     68c:	e28f0c02 	add	r0, pc, #512	; 0x894
     690:	e5961030 	ldr	r1, [r6, #48]	; 0x30
     694:	eb0015fc 	bl	0x5e8c
     698:	e3e00011 	mvn	r0, #17
     69c:	eaffffec 	b	0x654
     6a0:	e2544001 	subs	r4, r4, #1
     6a4:	2affffe0 	bcs	0x62c
     6a8:	e3a00000 	mov	r0, #0
     6ac:	eaffffe8 	b	0x654
     6b0:	e5961030 	ldr	r1, [r6, #48]	; 0x30
     6b4:	e28f0f7f 	add	r0, pc, #508	; 0x8b8
     6b8:	eb0015f3 	bl	0x5e8c
     6bc:	e3e00012 	mvn	r0, #18
     6c0:	eaffffe3 	b	0x654
     6c4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
     6c8:	e24dd024 	sub	sp, sp, #36	; 0x24
     6cc:	e3a02010 	mov	r2, #16
     6d0:	e58d2000 	str	r2, [sp]
     6d4:	e3a02015 	mov	r2, #21
     6d8:	e58d1008 	str	r1, [sp, #8]
     6dc:	e3a01000 	mov	r1, #0
     6e0:	e58d2004 	str	r2, [sp, #4]
     6e4:	e1a02001 	mov	r2, r1
     6e8:	e58d101c 	str	r1, [sp, #28]
     6ec:	e1a0100d 	mov	r1, sp
     6f0:	ebffffbd 	bl	0x5ec
     6f4:	e28dd024 	add	sp, sp, #36	; 0x24
     6f8:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
     6fc:	e1a01000 	mov	r1, r0
     700:	e59f01dc 	ldr	r0, [pc, #476]	; 0x8e4
     704:	e92d4010 	push	{r4, lr}
     708:	e7900101 	ldr	r0, [r0, r1, lsl #2]
     70c:	e3500000 	cmp	r0, #0
     710:	18bd8010 	popne	{r4, pc}
     714:	e28f0f73 	add	r0, pc, #460	; 0x8e8
     718:	eb0015db 	bl	0x5e8c
     71c:	e3a00000 	mov	r0, #0
     720:	e8bd8010 	pop	{r4, pc}
     724:	e92d40f0 	push	{r4, r5, r6, r7, lr}
     728:	e24dd034 	sub	sp, sp, #52	; 0x34
     72c:	e1a04000 	mov	r4, r0
     730:	e3530001 	cmp	r3, #1
     734:	e1a05003 	mov	r5, r3
     738:	83a00012 	movhi	r0, #18
     73c:	93a00011 	movls	r0, #17
     740:	e58d0000 	str	r0, [sp]
     744:	e3a07000 	mov	r7, #0
     748:	e594003c 	ldr	r0, [r4, #60]	; 0x3c
     74c:	e30063e8 	movw	r6, #1000	; 0x3e8
     750:	e3500000 	cmp	r0, #0
     754:	05940084 	ldreq	r0, [r4, #132]	; 0x84
     758:	158d2008 	strne	r2, [sp, #8]
     75c:	e58d1020 	str	r1, [sp, #32]
     760:	e1a0100d 	mov	r1, sp
     764:	00000290 	muleq	r0, r0, r2
     768:	058d0008 	streq	r0, [sp, #8]
     76c:	e3a00015 	mov	r0, #21
     770:	e58d0004 	str	r0, [sp, #4]
     774:	e28d2020 	add	r2, sp, #32
     778:	e58d5028 	str	r5, [sp, #40]	; 0x28
     77c:	e58d701c 	str	r7, [sp, #28]
     780:	e5940084 	ldr	r0, [r4, #132]	; 0x84
     784:	e58d002c 	str	r0, [sp, #44]	; 0x2c
     788:	e3a00001 	mov	r0, #1
     78c:	e58d0024 	str	r0, [sp, #36]	; 0x24
     790:	e1a00004 	mov	r0, r4
     794:	ebffff94 	bl	0x5ec
     798:	e3500000 	cmp	r0, #0
     79c:	15941030 	ldrne	r1, [r4, #48]	; 0x30
     7a0:	128f0e16 	addne	r0, pc, #352	; 0x908
     7a4:	0a000003 	beq	0x7b8
     7a8:	eb0015b7 	bl	0x5e8c
     7ac:	e3a00000 	mov	r0, #0
     7b0:	e28dd034 	add	sp, sp, #52	; 0x34
     7b4:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
     7b8:	e3550001 	cmp	r5, #1
     7bc:	9a000010 	bls	0x804
     7c0:	e28d1004 	add	r1, sp, #4
     7c4:	e3a0000c 	mov	r0, #12
     7c8:	e58d0000 	str	r0, [sp]
     7cc:	e3a0001d 	mov	r0, #29
     7d0:	e3a02000 	mov	r2, #0
     7d4:	e8810081 	stm	r1, {r0, r7}
     7d8:	e1a0100d 	mov	r1, sp
     7dc:	e1a00004 	mov	r0, r4
     7e0:	e58d701c 	str	r7, [sp, #28]
     7e4:	ebffff80 	bl	0x5ec
     7e8:	e3500000 	cmp	r0, #0
     7ec:	15941030 	ldrne	r1, [r4, #48]	; 0x30
     7f0:	128f0f4d 	addne	r0, pc, #308	; 0x92c
     7f4:	1affffeb 	bne	0x7a8
     7f8:	e1a01006 	mov	r1, r6
     7fc:	e1a00004 	mov	r0, r4
     800:	ebffff7b 	bl	0x5f4
     804:	e1a00005 	mov	r0, r5
     808:	eaffffe8 	b	0x7b0
     80c:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
     810:	e1a07001 	mov	r7, r1
     814:	e1a08003 	mov	r8, r3
     818:	e1a06000 	mov	r6, r0
     81c:	e1a09002 	mov	r9, r2
     820:	e1a05002 	mov	r5, r2
     824:	ebffffb4 	bl	0x6fc
     828:	e3590000 	cmp	r9, #0
     82c:	e1a04000 	mov	r4, r0
     830:	05901030 	ldreq	r1, [r0, #48]	; 0x30
     834:	028f0f46 	addeq	r0, pc, #280	; 0x954
     838:	0a000064 	beq	0x9d0
     83c:	e3540000 	cmp	r4, #0
     840:	028f0f4d 	addeq	r0, pc, #308	; 0x97c
     844:	01a01006 	moveq	r1, r6
     848:	0a000060 	beq	0x9d0
     84c:	e59430a8 	ldr	r3, [r4, #168]	; 0xa8
     850:	e0872009 	add	r2, r7, r9
     854:	e1520003 	cmp	r2, r3
     858:	9a00005f 	bls	0x9dc
     85c:	e5901030 	ldr	r1, [r0, #48]	; 0x30
     860:	e28f0f4d 	add	r0, pc, #308	; 0x99c
     864:	eb001588 	bl	0x5e8c
     868:	ea000059 	b	0x9d4
     86c:	fdf94080 	ldc2l	0, cr4, [r9, #512]!	; 0x200
     870:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
     874:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
     878:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
     87c:	65532064 	ldrbvs	r2, [r3, #-100]	; 0x64
     880:	7320646e 	teqvc	r0, #1845493760	; 0x6e000000
     884:	75746174 	ldrbvc	r6, [r4, #-372]!	; 0x174
     888:	61662073 	smcvs	25091	; 0x6203
     88c:	64656c69 	strbtvs	r6, [r5], #-3177	; 0xc69
     890:	0000000a 	andeq	r0, r0, sl
     894:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
     898:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
     89c:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
     8a0:	74532064 	ldrbvc	r2, [r3], #-100	; 0x64
     8a4:	73757461 	cmnvc	r5, #1627389952	; 0x61000000
     8a8:	72724520 	rsbsvc	r4, r2, #32, 10	; 0x8000000
     8ac:	203a726f 	eorscs	r7, sl, pc, ror #4
     8b0:	30257830 	eorcc	r7, r5, r0, lsr r8
     8b4:	000a5838 	andeq	r5, sl, r8, lsr r8
     8b8:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
     8bc:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
     8c0:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
     8c4:	69542064 	ldmdbvs	r4, {r2, r5, r6, sp}^
     8c8:	756f656d 	strbvc	r6, [pc, #-1389]!	; 0x363
     8cc:	61772074 	cmnvs	r7, r4, ror r0
     8d0:	6e697469 	cdpvs	4, 6, cr7, cr9, cr9, {3}
     8d4:	61632067 	cmnvs	r3, r7, rrx
     8d8:	72206472 	eorvc	r6, r0, #1912602624	; 0x72000000
     8dc:	79646165 	stmdbvc	r4!, {r0, r2, r5, r6, r8, sp, lr}^
     8e0:	0000000a 	andeq	r0, r0, sl
     8e4:	00016c0c 	andeq	r6, r1, ip, lsl #24
     8e8:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
     8ec:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
     8f0:	4420434d 	strtmi	r4, [r0], #-845	; 0x34d
     8f4:	63697665 	cmnvs	r9, #105906176	; 0x6500000
     8f8:	64252065 	strtvs	r2, [r5], #-101	; 0x65
     8fc:	746f6e20 	strbtvc	r6, [pc], #-3616	; 0x904
     900:	756f6620 	strbvc	r6, [pc, #-1568]!	; 0x2e8
     904:	000a646e 	andeq	r6, sl, lr, ror #8
     908:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
     90c:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
     910:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
     914:	72202064 	eorvc	r2, r0, #100	; 0x64
     918:	20646165 	rsbcs	r6, r4, r5, ror #2
     91c:	6f636c62 	svcvs	0x00636c62
     920:	6166206b 	cmnvs	r6, fp, rrx
     924:	64656c69 	strbtvs	r6, [r5], #-3177	; 0xc69
     928:	0000000a 	andeq	r0, r0, sl
     92c:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
     930:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
     934:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
     938:	61662064 	cmnvs	r6, r4, rrx
     93c:	74206c69 	strtvc	r6, [r0], #-3177	; 0xc69
     940:	6573206f 	ldrbvs	r2, [r3, #-111]!	; 0x6f
     944:	7320646e 	teqvc	r0, #1845493760	; 0x6e000000
     948:	20706f74 	rsbscs	r6, r0, r4, ror pc
     94c:	0a646d63 	beq	0x191bee0
     950:	00000000 	andeq	r0, r0, r0
     954:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
     958:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
     95c:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
     960:	6c622064 	stclvs	0, cr2, [r2], #-400	; 0xfffffe70
     964:	746e636b 	strbtvc	r6, [lr], #-875	; 0x36b
     968:	6f687320 	svcvs	0x00687320
     96c:	20646c75 	rsbcs	r6, r4, r5, ror ip
     970:	20746f6e 	rsbscs	r6, r4, lr, ror #30
     974:	30206562 	eorcc	r6, r0, r2, ror #10
     978:	0000000a 	andeq	r0, r0, sl
     97c:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
     980:	43203a5d 	teqmi	r0, #380928	; 0x5d000
     984:	6e206e61 	cdpvs	14, 2, cr6, cr0, cr1, {3}
     988:	6620746f 	strtvs	r7, [r0], -pc, ror #8
     98c:	20646e69 	rsbcs	r6, r4, r9, ror #28
     990:	20636d6d 	rsbcs	r6, r3, sp, ror #26
     994:	20766564 	rsbscs	r6, r6, r4, ror #10
     998:	000a6425 	andeq	r6, sl, r5, lsr #8
     99c:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
     9a0:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
     9a4:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
     9a8:	62203a64 	eorvs	r3, r0, #100, 20	; 0x64000
     9ac:	6b636f6c 	blvs	0x18dc764
     9b0:	6d756e20 	ldclvs	14, cr6, [r5, #-128]!	; 0xffffff80
     9b4:	20726562 	rsbscs	r6, r2, r2, ror #10
     9b8:	78257830 	stmdavc	r5!, {r4, r5, fp, ip, sp, lr}
     9bc:	63786520 	cmnvs	r8, #32, 10	; 0x8000000
     9c0:	73646565 	cmnvc	r4, #423624704	; 0x19400000
     9c4:	78616d20 	stmdavc	r1!, {r5, r8, sl, fp, sp, lr}^
     9c8:	25783028 	ldrbcs	r3, [r8, #-40]!	; 0x28
     9cc:	000a2978 	andeq	r2, sl, r8, ror r9
     9d0:	eb00152d 	bl	0x5e8c
     9d4:	e3a00000 	mov	r0, #0
     9d8:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
     9dc:	e5941084 	ldr	r1, [r4, #132]	; 0x84
     9e0:	ebffff37 	bl	0x6c4
     9e4:	e3500000 	cmp	r0, #0
     9e8:	15941030 	ldrne	r1, [r4, #48]	; 0x30
     9ec:	128f0c02 	addne	r0, pc, #512	; 0xbf4
     9f0:	1afffff6 	bne	0x9d0
     9f4:	e59460a4 	ldr	r6, [r4, #164]	; 0xa4
     9f8:	e1a02007 	mov	r2, r7
     9fc:	e1a01008 	mov	r1, r8
     a00:	e1a00004 	mov	r0, r4
     a04:	e1560005 	cmp	r6, r5
     a08:	21a06005 	movcs	r6, r5
     a0c:	e1a03006 	mov	r3, r6
     a10:	ebffff43 	bl	0x724
     a14:	e1500006 	cmp	r0, r6
     a18:	15941030 	ldrne	r1, [r4, #48]	; 0x30
     a1c:	128f0f7d 	addne	r0, pc, #500	; 0xc18
     a20:	1affffea 	bne	0x9d0
     a24:	e5940084 	ldr	r0, [r4, #132]	; 0x84
     a28:	e0555006 	subs	r5, r5, r6
     a2c:	e0877006 	add	r7, r7, r6
     a30:	e0288096 	mla	r8, r6, r0, r8
     a34:	01a00009 	moveq	r0, r9
     a38:	1affffed 	bne	0x9f4
     a3c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
     a40:	e92d4030 	push	{r4, r5, lr}
     a44:	e24dd024 	sub	sp, sp, #36	; 0x24
     a48:	e1a05000 	mov	r5, r0
     a4c:	e3a00001 	mov	r0, #1
     a50:	eb000b75 	bl	0x382c
     a54:	e3a00000 	mov	r0, #0
     a58:	e58d0008 	str	r0, [sp, #8]
     a5c:	e1a02000 	mov	r2, r0
     a60:	e1a0100d 	mov	r1, sp
     a64:	e58d0000 	str	r0, [sp]
     a68:	e58d0004 	str	r0, [sp, #4]
     a6c:	e58d001c 	str	r0, [sp, #28]
     a70:	e1a00005 	mov	r0, r5
     a74:	ebfffedc 	bl	0x5ec
     a78:	e1b04000 	movs	r4, r0
     a7c:	0a000005 	beq	0xa98
     a80:	e5951030 	ldr	r1, [r5, #48]	; 0x30
     a84:	e28f0e1b 	add	r0, pc, #432	; 0xc3c
     a88:	eb0014ff 	bl	0x5e8c
     a8c:	e1a00004 	mov	r0, r4
     a90:	e28dd024 	add	sp, sp, #36	; 0x24
     a94:	e8bd8030 	pop	{r4, r5, pc}
     a98:	e3a00002 	mov	r0, #2
     a9c:	eb000b62 	bl	0x382c
     aa0:	e3a00000 	mov	r0, #0
     aa4:	eafffff9 	b	0xa90
     aa8:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
     aac:	e59f91a8 	ldr	r9, [pc, #424]	; 0xc5c
     ab0:	e24dd024 	sub	sp, sp, #36	; 0x24
     ab4:	e1a04000 	mov	r4, r0
     ab8:	e30053e8 	movw	r5, #1000	; 0x3e8
     abc:	e3a0a037 	mov	sl, #55	; 0x37
     ac0:	e3a0b015 	mov	fp, #21
     ac4:	e3a08001 	mov	r8, #1
     ac8:	e3a07000 	mov	r7, #0
     acc:	e58d7008 	str	r7, [sp, #8]
     ad0:	e3a02000 	mov	r2, #0
     ad4:	e1cda0f0 	strd	sl, [sp]
     ad8:	e1a0100d 	mov	r1, sp
     adc:	e1a00004 	mov	r0, r4
     ae0:	e58d701c 	str	r7, [sp, #28]
     ae4:	ebfffec0 	bl	0x5ec
     ae8:	e1b06000 	movs	r6, r0
     aec:	15941030 	ldrne	r1, [r4, #48]	; 0x30
     af0:	128f0f5a 	addne	r0, pc, #360	; 0xc60
     af4:	0a000003 	beq	0xb08
     af8:	eb0014e3 	bl	0x5e8c
     afc:	e1a00006 	mov	r0, r6
     b00:	e28dd024 	add	sp, sp, #36	; 0x24
     b04:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
     b08:	e3a00029 	mov	r0, #41	; 0x29
     b0c:	e3a02000 	mov	r2, #0
     b10:	e88d0101 	stm	sp, {r0, r8}
     b14:	e594004c 	ldr	r0, [r4, #76]	; 0x4c
     b18:	e3100b01 	tst	r0, #1024	; 0x400
     b1c:	05940024 	ldreq	r0, [r4, #36]	; 0x24
     b20:	13a00000 	movne	r0, #0
     b24:	059f1158 	ldreq	r1, [pc, #344]	; 0xc84
     b28:	00000001 	andeq	r0, r0, r1
     b2c:	e58d0008 	str	r0, [sp, #8]
     b30:	e5940028 	ldr	r0, [r4, #40]	; 0x28
     b34:	e1a0100d 	mov	r1, sp
     b38:	e1500009 	cmp	r0, r9
     b3c:	059d0008 	ldreq	r0, [sp, #8]
     b40:	03800101 	orreq	r0, r0, #1073741824	; 0x40000000
     b44:	058d0008 	streq	r0, [sp, #8]
     b48:	e1a00004 	mov	r0, r4
     b4c:	ebfffea6 	bl	0x5ec
     b50:	e1b06000 	movs	r6, r0
     b54:	15941030 	ldrne	r1, [r4, #48]	; 0x30
     b58:	128f0f4a 	addne	r0, pc, #296	; 0xc88
     b5c:	1affffe5 	bne	0xaf8
     b60:	e3a00001 	mov	r0, #1
     b64:	eb000b30 	bl	0x382c
     b68:	e59d000c 	ldr	r0, [sp, #12]
     b6c:	e3100102 	tst	r0, #-2147483648	; 0x80000000
     b70:	0a000006 	beq	0xb90
     b74:	e3550000 	cmp	r5, #0
     b78:	ca000007 	bgt	0xb9c
     b7c:	e5941030 	ldr	r1, [r4, #48]	; 0x30
     b80:	e28f0f49 	add	r0, pc, #292	; 0xcac
     b84:	eb0014c0 	bl	0x5e8c
     b88:	e3e00010 	mvn	r0, #16
     b8c:	eaffffdb 	b	0xb00
     b90:	e2555001 	subs	r5, r5, #1
     b94:	2affffcc 	bcs	0xacc
     b98:	eafffff7 	b	0xb7c
     b9c:	e5940028 	ldr	r0, [r4, #40]	; 0x28
     ba0:	e1500009 	cmp	r0, r9
     ba4:	159f0128 	ldrne	r0, [pc, #296]	; 0xcd4
     ba8:	15840028 	strne	r0, [r4, #40]	; 0x28
     bac:	e594004c 	ldr	r0, [r4, #76]	; 0x4c
     bb0:	e3100b01 	tst	r0, #1024	; 0x400
     bb4:	0a000050 	beq	0xcfc
     bb8:	e58d7008 	str	r7, [sp, #8]
     bbc:	e3a0003a 	mov	r0, #58	; 0x3a
     bc0:	e58d701c 	str	r7, [sp, #28]
     bc4:	e3a02000 	mov	r2, #0
     bc8:	e88d0101 	stm	sp, {r0, r8}
     bcc:	e1a0100d 	mov	r1, sp
     bd0:	e1a00004 	mov	r0, r4
     bd4:	ebfffe84 	bl	0x5ec
     bd8:	e1b05000 	movs	r5, r0
     bdc:	0a000046 	beq	0xcfc
     be0:	e5941030 	ldr	r1, [r4, #48]	; 0x30
     be4:	e28f00ec 	add	r0, pc, #236	; 0xcd8
     be8:	eb0014a7 	bl	0x5e8c
     bec:	e1a00005 	mov	r0, r5
     bf0:	eaffffc2 	b	0xb00
     bf4:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
     bf8:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
     bfc:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
     c00:	65532064 	ldrbvs	r2, [r3, #-100]	; 0x64
     c04:	6c622074 	stclvs	0, cr2, [r2], #-464	; 0xfffffe30
     c08:	206b636f 	rsbcs	r6, fp, pc, ror #6
     c0c:	206e656c 	rsbcs	r6, lr, ip, ror #10
     c10:	6c696166 	stfvse	f6, [r9], #-408	; 0xfffffe68
     c14:	000a6465 	andeq	r6, sl, r5, ror #8
     c18:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
     c1c:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
     c20:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
     c24:	6c622064 	stclvs	0, cr2, [r2], #-400	; 0xfffffe70
     c28:	206b636f 	rsbcs	r6, fp, pc, ror #6
     c2c:	64616572 	strbtvs	r6, [r1], #-1394	; 0x572
     c30:	69616620 	stmdbvs	r1!, {r5, r9, sl, sp, lr}^
     c34:	0a64656c 	beq	0x191a1ec
     c38:	00000000 	andeq	r0, r0, r0
     c3c:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
     c40:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
     c44:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
     c48:	6f672064 	svcvs	0x00672064
     c4c:	6c646920 	stclvs	9, cr6, [r4], #-128	; 0xffffff80
     c50:	61662065 	cmnvs	r6, r5, rrx
     c54:	64656c69 	strbtvs	r6, [r5], #-3177	; 0xc69
     c58:	0000000a 	andeq	r0, r0, sl
     c5c:	00020020 	andeq	r0, r2, r0, lsr #32
     c60:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
     c64:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
     c68:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
     c6c:	65732064 	ldrbvs	r2, [r3, #-100]!	; 0x64
     c70:	6120646e 	teqvs	r0, lr, ror #8
     c74:	63207070 	teqvs	r0, #112	; 0x70
     c78:	6620646d 	strtvs	r6, [r0], -sp, ror #8
     c7c:	656c6961 	strbvs	r6, [ip, #-2401]!	; 0x961
     c80:	00000a64 	andeq	r0, r0, r4, ror #20
     c84:	00ff8000 	rscseq	r8, pc, r0
     c88:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
     c8c:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
     c90:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
     c94:	65732064 	ldrbvs	r2, [r3, #-100]!	; 0x64
     c98:	6320646e 	teqvs	r0, #1845493760	; 0x6e000000
     c9c:	3134646d 	teqcc	r4, sp, ror #8
     ca0:	69616620 	stmdbvs	r1!, {r5, r9, sl, sp, lr}^
     ca4:	0a64656c 	beq	0x191a25c
     ca8:	00000000 	andeq	r0, r0, r0
     cac:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
     cb0:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
     cb4:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
     cb8:	61772064 	cmnvs	r7, r4, rrx
     cbc:	63207469 	teqvs	r0, #1761607680	; 0x69000000
     cc0:	20647261 	rsbcs	r7, r4, r1, ror #4
     cc4:	74696e69 	strbtvc	r6, [r9], #-3689	; 0xe69
     cc8:	69616620 	stmdbvs	r1!, {r5, r9, sl, sp, lr}^
     ccc:	0a64656c 	beq	0x191a284
     cd0:	00000000 	andeq	r0, r0, r0
     cd4:	00020010 	andeq	r0, r2, r0, lsl r0
     cd8:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
     cdc:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
     ce0:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
     ce4:	70732064 	rsbsvc	r2, r3, r4, rrx
     ce8:	65722069 	ldrbvs	r2, [r2, #-105]!	; 0x69
     cec:	6f206461 	svcvs	0x00206461
     cf0:	66207263 	strtvs	r7, [r0], -r3, ror #4
     cf4:	656c6961 	strbvs	r6, [ip, #-2401]!	; 0x961
     cf8:	00000a64 	andeq	r0, r0, r4, ror #20
     cfc:	e59d000c 	ldr	r0, [sp, #12]
     d00:	e5840050 	str	r0, [r4, #80]	; 0x50
     d04:	e7e00f50 	ubfx	r0, r0, #30, #1
     d08:	e584003c 	str	r0, [r4, #60]	; 0x3c
     d0c:	e3a00000 	mov	r0, #0
     d10:	e1c477bc 	strh	r7, [r4, #124]	; 0x7c
     d14:	eaffff79 	b	0xb00
     d18:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
     d1c:	e24dd024 	sub	sp, sp, #36	; 0x24
     d20:	e1a04000 	mov	r4, r0
     d24:	e3025710 	movw	r5, #10000	; 0x2710
     d28:	ebffff44 	bl	0xa40
     d2c:	e3a08000 	mov	r8, #0
     d30:	e59f02c0 	ldr	r0, [pc, #704]	; 0xff8
     d34:	e3a07001 	mov	r7, #1
     d38:	e58d801c 	str	r8, [sp, #28]
     d3c:	e1a02008 	mov	r2, r8
     d40:	e1a0100d 	mov	r1, sp
     d44:	e58d7000 	str	r7, [sp]
     d48:	e58d7004 	str	r7, [sp, #4]
     d4c:	e58d0008 	str	r0, [sp, #8]
     d50:	e1a00004 	mov	r0, r4
     d54:	ebfffe24 	bl	0x5ec
     d58:	e1b06000 	movs	r6, r0
     d5c:	1a00001b 	bne	0xdd0
     d60:	e3a00001 	mov	r0, #1
     d64:	eb000ab0 	bl	0x382c
     d68:	e59f928c 	ldr	r9, [pc, #652]	; 0xffc
     d6c:	e58d7000 	str	r7, [sp]
     d70:	e58d7004 	str	r7, [sp, #4]
     d74:	e594004c 	ldr	r0, [r4, #76]	; 0x4c
     d78:	e3100b01 	tst	r0, #1024	; 0x400
     d7c:	13a00000 	movne	r0, #0
     d80:	1a000005 	bne	0xd9c
     d84:	e5940024 	ldr	r0, [r4, #36]	; 0x24
     d88:	e59d100c 	ldr	r1, [sp, #12]
     d8c:	e0000001 	and	r0, r0, r1
     d90:	e0000009 	and	r0, r0, r9
     d94:	e2011206 	and	r1, r1, #1610612736	; 0x60000000
     d98:	e1800001 	orr	r0, r0, r1
     d9c:	e58d0008 	str	r0, [sp, #8]
     da0:	e594004c 	ldr	r0, [r4, #76]	; 0x4c
     da4:	e3a02000 	mov	r2, #0
     da8:	e1a0100d 	mov	r1, sp
     dac:	e3100b02 	tst	r0, #2048	; 0x800
     db0:	159d0008 	ldrne	r0, [sp, #8]
     db4:	13800101 	orrne	r0, r0, #1073741824	; 0x40000000
     db8:	158d0008 	strne	r0, [sp, #8]
     dbc:	e1a00004 	mov	r0, r4
     dc0:	e58d801c 	str	r8, [sp, #28]
     dc4:	ebfffe08 	bl	0x5ec
     dc8:	e1b06000 	movs	r6, r0
     dcc:	0a000005 	beq	0xde8
     dd0:	e5941030 	ldr	r1, [r4, #48]	; 0x30
     dd4:	e28f0f89 	add	r0, pc, #548	; 0x1000
     dd8:	eb00142b 	bl	0x5e8c
     ddc:	e1a00006 	mov	r0, r6
     de0:	e28dd024 	add	sp, sp, #36	; 0x24
     de4:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
     de8:	e3a00001 	mov	r0, #1
     dec:	eb000a8e 	bl	0x382c
     df0:	e59d000c 	ldr	r0, [sp, #12]
     df4:	e3100102 	tst	r0, #-2147483648	; 0x80000000
     df8:	0a000006 	beq	0xe18
     dfc:	e3550000 	cmp	r5, #0
     e00:	ca000007 	bgt	0xe24
     e04:	e5941030 	ldr	r1, [r4, #48]	; 0x30
     e08:	e28f0f85 	add	r0, pc, #532	; 0x1024
     e0c:	eb00141e 	bl	0x5e8c
     e10:	e3e00010 	mvn	r0, #16
     e14:	eafffff1 	b	0xde0
     e18:	e2555001 	subs	r5, r5, #1
     e1c:	2affffd2 	bcs	0xd6c
     e20:	eafffff7 	b	0xe04
     e24:	e594004c 	ldr	r0, [r4, #76]	; 0x4c
     e28:	e3100b01 	tst	r0, #1024	; 0x400
     e2c:	0a000008 	beq	0xe54
     e30:	e3a0003a 	mov	r0, #58	; 0x3a
     e34:	e3a02000 	mov	r2, #0
     e38:	e88d0181 	stm	sp, {r0, r7, r8}
     e3c:	e1a0100d 	mov	r1, sp
     e40:	e1a00004 	mov	r0, r4
     e44:	e58d801c 	str	r8, [sp, #28]
     e48:	ebfffde7 	bl	0x5ec
     e4c:	e3500000 	cmp	r0, #0
     e50:	1affffe2 	bne	0xde0
     e54:	e3a00801 	mov	r0, #65536	; 0x10000
     e58:	e5840028 	str	r0, [r4, #40]	; 0x28
     e5c:	e59d000c 	ldr	r0, [sp, #12]
     e60:	e5840050 	str	r0, [r4, #80]	; 0x50
     e64:	e7e00f50 	ubfx	r0, r0, #30, #1
     e68:	e584003c 	str	r0, [r4, #60]	; 0x3c
     e6c:	e3a00000 	mov	r0, #0
     e70:	e1c477bc 	strh	r7, [r4, #124]	; 0x7c
     e74:	eaffffd9 	b	0xde0
     e78:	e92d4030 	push	{r4, r5, lr}
     e7c:	e24dd034 	sub	sp, sp, #52	; 0x34
     e80:	e1a05000 	mov	r5, r0
     e84:	e3a00008 	mov	r0, #8
     e88:	e28d2020 	add	r2, sp, #32
     e8c:	e58d0000 	str	r0, [sp]
     e90:	e3a00015 	mov	r0, #21
     e94:	e58d0004 	str	r0, [sp, #4]
     e98:	e3a00000 	mov	r0, #0
     e9c:	e58d0008 	str	r0, [sp, #8]
     ea0:	e1cd01fc 	strd	r0, [sp, #28]
     ea4:	e3001200 	movw	r1, #512	; 0x200
     ea8:	e3a00001 	mov	r0, #1
     eac:	e58d0024 	str	r0, [sp, #36]	; 0x24
     eb0:	e1cd02f8 	strd	r0, [sp, #40]	; 0x28
     eb4:	e1a0100d 	mov	r1, sp
     eb8:	e1a00005 	mov	r0, r5
     ebc:	ebfffdca 	bl	0x5ec
     ec0:	e1b04000 	movs	r4, r0
     ec4:	15951030 	ldrne	r1, [r5, #48]	; 0x30
     ec8:	128f0f5f 	addne	r0, pc, #380	; 0x104c
     ecc:	1b0013ee 	blne	0x5e8c
     ed0:	e28dd034 	add	sp, sp, #52	; 0x34
     ed4:	e1a00004 	mov	r0, r4
     ed8:	e8bd8030 	pop	{r4, r5, pc}
     edc:	e92d4070 	push	{r4, r5, r6, lr}
     ee0:	e24dd020 	sub	sp, sp, #32
     ee4:	e1a05000 	mov	r5, r0
     ee8:	e3a00006 	mov	r0, #6
     eec:	e30063e8 	movw	r6, #1000	; 0x3e8
     ef0:	e1a0100d 	mov	r1, sp
     ef4:	e58d0000 	str	r0, [sp]
     ef8:	e3a0001d 	mov	r0, #29
     efc:	e58d0004 	str	r0, [sp, #4]
     f00:	e1a00802 	lsl	r0, r2, #16
     f04:	e1800403 	orr	r0, r0, r3, lsl #8
     f08:	e3800403 	orr	r0, r0, #50331648	; 0x3000000
     f0c:	e58d0008 	str	r0, [sp, #8]
     f10:	e3a00000 	mov	r0, #0
     f14:	e58d001c 	str	r0, [sp, #28]
     f18:	e1a02000 	mov	r2, r0
     f1c:	e1a00005 	mov	r0, r5
     f20:	ebfffdb1 	bl	0x5ec
     f24:	e1b04000 	movs	r4, r0
     f28:	15951030 	ldrne	r1, [r5, #48]	; 0x30
     f2c:	128f0f4f 	addne	r0, pc, #316	; 0x1070
     f30:	1b0013d5 	blne	0x5e8c
     f34:	e1a01006 	mov	r1, r6
     f38:	e1a00005 	mov	r0, r5
     f3c:	ebfffdac 	bl	0x5f4
     f40:	e28dd020 	add	sp, sp, #32
     f44:	e1a00004 	mov	r0, r4
     f48:	e8bd8070 	pop	{r4, r5, r6, pc}
     f4c:	e92d40f0 	push	{r4, r5, r6, r7, lr}
     f50:	e1a04000 	mov	r4, r0
     f54:	e3a00000 	mov	r0, #0
     f58:	e24ddf81 	sub	sp, sp, #516	; 0x204
     f5c:	e3a05005 	mov	r5, #5
     f60:	e5840048 	str	r0, [r4, #72]	; 0x48
     f64:	e594004c 	ldr	r0, [r4, #76]	; 0x4c
     f68:	e3100b01 	tst	r0, #1024	; 0x400
     f6c:	1a000074 	bne	0x1144
     f70:	e5940028 	ldr	r0, [r4, #40]	; 0x28
     f74:	e59f1114 	ldr	r1, [pc, #276]	; 0x1090
     f78:	e1510000 	cmp	r1, r0
     f7c:	8a000070 	bhi	0x1144
     f80:	e3000100 	movw	r0, #256	; 0x100
     f84:	e1a0100d 	mov	r1, sp
     f88:	e5840048 	str	r0, [r4, #72]	; 0x48
     f8c:	e1a00004 	mov	r0, r4
     f90:	ebffffb8 	bl	0xe78
     f94:	e1b06000 	movs	r6, r0
     f98:	05dd00c4 	ldrbeq	r0, [sp, #196]	; 0xc4
     f9c:	128f00f0 	addne	r0, pc, #240	; 0x1094
     fa0:	15941030 	ldrne	r1, [r4, #48]	; 0x30
     fa4:	0200700f 	andeq	r7, r0, #15
     fa8:	0a000003 	beq	0xfbc
     fac:	eb0013b6 	bl	0x5e8c
     fb0:	e1a00006 	mov	r0, r6
     fb4:	e28ddf81 	add	sp, sp, #516	; 0x204
     fb8:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
     fbc:	e3a03001 	mov	r3, #1
     fc0:	e3a020b9 	mov	r2, #185	; 0xb9
     fc4:	e1a01003 	mov	r1, r3
     fc8:	e1a00004 	mov	r0, r4
     fcc:	ebffffc2 	bl	0xedc
     fd0:	e1b06000 	movs	r6, r0
     fd4:	0a000048 	beq	0x10fc
     fd8:	e28f00d8 	add	r0, pc, #216	; 0x10b8
     fdc:	eb0013aa 	bl	0x5e8c
     fe0:	e2455001 	sub	r5, r5, #1
     fe4:	e3750001 	cmn	r5, #1
     fe8:	05941030 	ldreq	r1, [r4, #48]	; 0x30
     fec:	028f00e4 	addeq	r0, pc, #228	; 0x10d8
     ff0:	1afffff1 	bne	0xfbc
     ff4:	eaffffec 	b	0xfac
     ff8:	40ff8000 	rscsmi	r8, pc, r0
     ffc:	007fff80 	rsbseq	pc, pc, r0, lsl #31

    1000:	"[mmc]: mmc %d send op cond failed\n",0,0
    
    1024:	"[mmc]: mmc %d wait for mmc init failed\n",0
    104c:	"[mmc]: mmc %d send ext csd failed\n",0,0
    1070:	"[mmc]: mmc %d switch failed\n",0,0,0,0
    1090:	00010040 	andeq	r0, r1, r0, asr #32
    1094:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    1098:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    109c:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
    10a0:	65672064 	strbvs	r2, [r7, #-100]!	; 0x64
    10a4:	78652074 	stmdavc	r5!, {r2, r4, r5, r6, sp}^
    10a8:	73632074 	cmnvc	r3, #116	; 0x74
    10ac:	61662064 	cmnvs	r6, r4, rrx
    10b0:	64656c69 	strbtvs	r6, [r5], #-3177	; 0xc69
    10b4:	0000000a 	andeq	r0, r0, sl
    10b8:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    10bc:	72203a5d 	eorvc	r3, r0, #380928	; 0x5d000
    10c0:	79727465 	ldmdbvc	r2!, {r0, r2, r5, r6, sl, ip, sp, lr}^
    10c4:	636d6d20 	cmnvs	sp, #32, 26	; 0x800
    10c8:	69777320 	ldmdbvs	r7!, {r5, r8, r9, ip, sp, lr}^
    10cc:	28686374 	stmdacs	r8!, {r2, r4, r5, r6, r8, r9, sp, lr}^
    10d0:	36646d63 	strbtcc	r6, [r4], -r3, ror #26
    10d4:	00000a29 	andeq	r0, r0, r9, lsr #20
    10d8:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    10dc:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    10e0:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
    10e4:	68632064 	stmdavs	r3!, {r2, r5, r6, sp}^
    10e8:	65676e61 	strbvs	r6, [r7, #-3681]!	; 0xe61
    10ec:	206f7420 	rsbcs	r7, pc, r0, lsr #8
    10f0:	66207368 	strtvs	r7, [r0], -r8, ror #6
    10f4:	656c6961 	strbvs	r6, [ip, #-2401]!	; 0x961
    10f8:	00000a64 	andeq	r0, r0, r4, ror #20
    10fc:	e1a0100d 	mov	r1, sp
    1100:	e1a00004 	mov	r0, r4
    1104:	ebffff5b 	bl	0xe78
    1108:	e1b05000 	movs	r5, r0
    110c:	0a000004 	beq	0x1124
    1110:	e5941030 	ldr	r1, [r4, #48]	; 0x30
    1114:	e28f0fab 	add	r0, pc, #684	; 0x13c8
    1118:	eb00135b 	bl	0x5e8c
    111c:	e1a00005 	mov	r0, r5
    1120:	eaffffa3 	b	0xfb4
    1124:	e5dd00b9 	ldrb	r0, [sp, #185]	; 0xb9
    1128:	e3500000 	cmp	r0, #0
    112c:	0affffa0 	beq	0xfb4
    1130:	e5940048 	ldr	r0, [r4, #72]	; 0x48
    1134:	e3170002 	tst	r7, #2
    1138:	13800011 	orrne	r0, r0, #17
    113c:	03800001 	orreq	r0, r0, #1
    1140:	e5840048 	str	r0, [r4, #72]	; 0x48
    1144:	e3a00000 	mov	r0, #0
    1148:	eaffff99 	b	0xfb4
    114c:	e92d4010 	push	{r4, lr}
    1150:	e1a04001 	mov	r4, r1
    1154:	ebfffd68 	bl	0x6fc
    1158:	e3500000 	cmp	r0, #0
    115c:	03e00000 	mvneq	r0, #0
    1160:	08bd8010 	popeq	{r4, pc}
    1164:	e3a020b3 	mov	r2, #179	; 0xb3
    1168:	e3a01001 	mov	r1, #1
    116c:	e5d0307e 	ldrb	r3, [r0, #126]	; 0x7e
    1170:	e7c23014 	bfi	r3, r4, #0, #3
    1174:	e8bd4010 	pop	{r4, lr}
    1178:	eaffff57 	b	0xedc
    117c:	e92d4010 	push	{r4, lr}
    1180:	e24dd030 	sub	sp, sp, #48	; 0x30
    1184:	e3a04006 	mov	r4, #6
    1188:	e58d4000 	str	r4, [sp]
    118c:	e3a04015 	mov	r4, #21
    1190:	e58d4004 	str	r4, [sp, #4]
    1194:	e3e044ff 	mvn	r4, #-16777216	; 0xff000000
    1198:	e1844f81 	orr	r4, r4, r1, lsl #31
    119c:	e59dc038 	ldr	ip, [sp, #56]	; 0x38
    11a0:	e1a01102 	lsl	r1, r2, #2
    11a4:	e3a0200f 	mov	r2, #15
    11a8:	e1c42112 	bic	r2, r4, r2, lsl r1
    11ac:	e1821113 	orr	r1, r2, r3, lsl r1
    11b0:	e28d401c 	add	r4, sp, #28
    11b4:	e58d1008 	str	r1, [sp, #8]
    11b8:	e3a01000 	mov	r1, #0
    11bc:	e28d2020 	add	r2, sp, #32
    11c0:	e8841002 	stm	r4, {r1, ip}
    11c4:	e3a01040 	mov	r1, #64	; 0x40
    11c8:	e58d102c 	str	r1, [sp, #44]	; 0x2c
    11cc:	e3a01001 	mov	r1, #1
    11d0:	e58d1028 	str	r1, [sp, #40]	; 0x28
    11d4:	e58d1024 	str	r1, [sp, #36]	; 0x24
    11d8:	e1a0100d 	mov	r1, sp
    11dc:	ebfffd02 	bl	0x5ec
    11e0:	e28dd030 	add	sp, sp, #48	; 0x30
    11e4:	e8bd8010 	pop	{r4, pc}
    11e8:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
    11ec:	e24dd07c 	sub	sp, sp, #124	; 0x7c
    11f0:	e3a06000 	mov	r6, #0
    11f4:	e5806048 	str	r6, [r0, #72]	; 0x48
    11f8:	e1a04000 	mov	r4, r0
    11fc:	e590004c 	ldr	r0, [r0, #76]	; 0x4c
    1200:	e3100b01 	tst	r0, #1024	; 0x400
    1204:	1a00006d 	bne	0x13c0
    1208:	e28d1004 	add	r1, sp, #4
    120c:	e3a00037 	mov	r0, #55	; 0x37
    1210:	e3a07015 	mov	r7, #21
    1214:	e3a02000 	mov	r2, #0
    1218:	e8810081 	stm	r1, {r0, r7}
    121c:	e1d407bc 	ldrh	r0, [r4, #124]	; 0x7c
    1220:	e1a00800 	lsl	r0, r0, #16
    1224:	e58d000c 	str	r0, [sp, #12]
    1228:	e1a00004 	mov	r0, r4
    122c:	e58d6020 	str	r6, [sp, #32]
    1230:	ebfffced 	bl	0x5ec
    1234:	e1b05000 	movs	r5, r0
    1238:	15941030 	ldrne	r1, [r4, #48]	; 0x30
    123c:	128f0f6a 	addne	r0, pc, #424	; 0x13ec
    1240:	0a000003 	beq	0x1254
    1244:	eb001310 	bl	0x5e8c
    1248:	e1a00005 	mov	r0, r5
    124c:	e28dd07c 	add	sp, sp, #124	; 0x7c
    1250:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
    1254:	e28d1004 	add	r1, sp, #4
    1258:	e58d600c 	str	r6, [sp, #12]
    125c:	e3a00033 	mov	r0, #51	; 0x33
    1260:	e58d6020 	str	r6, [sp, #32]
    1264:	e28d8074 	add	r8, sp, #116	; 0x74
    1268:	e3a06003 	mov	r6, #3
    126c:	e8810081 	stm	r1, {r0, r7}
    1270:	e3a09008 	mov	r9, #8
    1274:	e3a07001 	mov	r7, #1
    1278:	e28d006c 	add	r0, sp, #108	; 0x6c
    127c:	e58d8064 	str	r8, [sp, #100]	; 0x64
    1280:	e28d2064 	add	r2, sp, #100	; 0x64
    1284:	e28d1004 	add	r1, sp, #4
    1288:	e8800280 	stm	r0, {r7, r9}
    128c:	e1a00004 	mov	r0, r4
    1290:	e58d7068 	str	r7, [sp, #104]	; 0x68
    1294:	ebfffcd4 	bl	0x5ec
    1298:	e1b05000 	movs	r5, r0
    129c:	0a000005 	beq	0x12b8
    12a0:	e2466001 	sub	r6, r6, #1
    12a4:	e3760001 	cmn	r6, #1
    12a8:	05941030 	ldreq	r1, [r4, #48]	; 0x30
    12ac:	028f0f57 	addeq	r0, pc, #348	; 0x1410
    12b0:	1afffff0 	bne	0x1278
    12b4:	eaffffe2 	b	0x1244
    12b8:	e59d0074 	ldr	r0, [sp, #116]	; 0x74
    12bc:	e51f25f0 	ldr	r2, [pc, #-1520]	; 0xcd4
    12c0:	e6bf0f30 	rev	r0, r0
    12c4:	e5840054 	str	r0, [r4, #84]	; 0x54
    12c8:	e59d1078 	ldr	r1, [sp, #120]	; 0x78
    12cc:	e6bf1f31 	rev	r1, r1
    12d0:	e5841058 	str	r1, [r4, #88]	; 0x58
    12d4:	e7e31c50 	ubfx	r1, r0, #24, #4
    12d8:	e3510000 	cmp	r1, #0
    12dc:	0a000005 	beq	0x12f8
    12e0:	e3510001 	cmp	r1, #1
    12e4:	0282100a 	addeq	r1, r2, #10
    12e8:	0a000004 	beq	0x1300
    12ec:	e3510002 	cmp	r1, #2
    12f0:	051f169c 	ldreq	r1, [pc, #-1692]	; 0xc5c
    12f4:	0a000001 	beq	0x1300
    12f8:	e5842028 	str	r2, [r4, #40]	; 0x28
    12fc:	ea000000 	b	0x1304
    1300:	e5841028 	str	r1, [r4, #40]	; 0x28
    1304:	e3100701 	tst	r0, #262144	; 0x40000
    1308:	15940048 	ldrne	r0, [r4, #72]	; 0x48
    130c:	13800c01 	orrne	r0, r0, #256	; 0x100
    1310:	15840048 	strne	r0, [r4, #72]	; 0x48
    1314:	e5940028 	ldr	r0, [r4, #40]	; 0x28
    1318:	e1500002 	cmp	r0, r2
    131c:	128d7024 	addne	r7, sp, #36	; 0x24
    1320:	13a06004 	movne	r6, #4
    1324:	0a000025 	beq	0x13c0
    1328:	ea00000d 	b	0x1364
    132c:	e3a02000 	mov	r2, #0
    1330:	e3a03001 	mov	r3, #1
    1334:	e1a01002 	mov	r1, r2
    1338:	e1a00004 	mov	r0, r4
    133c:	e58d7000 	str	r7, [sp]
    1340:	ebffff8d 	bl	0x117c
    1344:	e1b05000 	movs	r5, r0
    1348:	15941030 	ldrne	r1, [r4, #48]	; 0x30
    134c:	128f00dc 	addne	r0, pc, #220	; 0x1430
    1350:	1affffbb 	bne	0x1244
    1354:	e59d0040 	ldr	r0, [sp, #64]	; 0x40
    1358:	e6bf0f30 	rev	r0, r0
    135c:	e3100802 	tst	r0, #131072	; 0x20000
    1360:	0a000001 	beq	0x136c
    1364:	e2566001 	subs	r6, r6, #1
    1368:	2affffef 	bcs	0x132c
    136c:	e59d0030 	ldr	r0, [sp, #48]	; 0x30
    1370:	e6bf0f30 	rev	r0, r0
    1374:	e2100802 	ands	r0, r0, #131072	; 0x20000
    1378:	0affffb3 	beq	0x124c
    137c:	e3a03001 	mov	r3, #1
    1380:	e3a02000 	mov	r2, #0
    1384:	e1a01003 	mov	r1, r3
    1388:	e1a00004 	mov	r0, r4
    138c:	e58d7000 	str	r7, [sp]
    1390:	ebffff79 	bl	0x117c
    1394:	e1b05000 	movs	r5, r0
    1398:	15941030 	ldrne	r1, [r4, #48]	; 0x30
    139c:	128f00bc 	addne	r0, pc, #188	; 0x1460
    13a0:	1affffa7 	bne	0x1244
    13a4:	e59d0034 	ldr	r0, [sp, #52]	; 0x34
    13a8:	e6bf0f30 	rev	r0, r0
    13ac:	e200040f 	and	r0, r0, #251658240	; 0xf000000
    13b0:	e3500401 	cmp	r0, #16777216	; 0x1000000
    13b4:	05940048 	ldreq	r0, [r4, #72]	; 0x48
    13b8:	03800001 	orreq	r0, r0, #1
    13bc:	05840048 	streq	r0, [r4, #72]	; 0x48
    13c0:	e3a00000 	mov	r0, #0
    13c4:	eaffffa0 	b	0x124c
    13c8:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    13cc:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    13d0:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
    13d4:	65732064 	ldrbvs	r2, [r3, #-100]!	; 0x64
    13d8:	6520646e 	strvs	r6, [r0, #-1134]!	; 0x46e
    13dc:	63207478 	teqvs	r0, #120, 8	; 0x78000000
    13e0:	66206473 			; <UNDEFINED> instruction: 0x66206473
    13e4:	646c6961 	strbtvs	r6, [ip], #-2401	; 0x961
    13e8:	0000000a 	andeq	r0, r0, sl
    13ec:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    13f0:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    13f4:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
    13f8:	65532064 	ldrbvs	r2, [r3, #-100]	; 0x64
    13fc:	6120646e 	teqvs	r0, lr, ror #8
    1400:	63207070 	teqvs	r0, #112	; 0x70
    1404:	6620646d 	strtvs	r6, [r0], -sp, ror #8
    1408:	656c6961 	strbvs	r6, [ip, #-2401]!	; 0x961
    140c:	00000a64 	andeq	r0, r0, r4, ror #20
    1410:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    1414:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    1418:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
    141c:	65532064 	ldrbvs	r2, [r3, #-100]	; 0x64
    1420:	7320646e 	teqvc	r0, #1845493760	; 0x6e000000
    1424:	66207263 	strtvs	r7, [r0], -r3, ror #4
    1428:	656c6961 	strbvs	r6, [ip, #-2401]!	; 0x961
    142c:	00000a64 	andeq	r0, r0, r4, ror #20
    1430:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    1434:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    1438:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
    143c:	68432064 	stmdavs	r3, {r2, r5, r6, sp}^
    1440:	206b6365 	rsbcs	r6, fp, r5, ror #6
    1444:	68676968 	stmdavs	r7!, {r3, r5, r6, r8, fp, sp, lr}^
    1448:	65707320 	ldrbvs	r7, [r0, #-800]!	; 0x320
    144c:	73206465 	teqvc	r0, #1694498816	; 0x65000000
    1450:	75746174 	ldrbvc	r6, [r4, #-372]!	; 0x174
    1454:	61662073 	smcvs	25091	; 0x6203
    1458:	0a646c69 	beq	0x191c604
    145c:	00000000 	andeq	r0, r0, r0
    1460:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    1464:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    1468:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
    146c:	77732064 	ldrbvc	r2, [r3, -r4, rrx]!
    1470:	68637469 	stmdavs	r3!, {r0, r3, r5, r6, sl, ip, sp, lr}^
    1474:	206f7420 	rsbcs	r7, pc, r0, lsr #8
    1478:	68676968 	stmdavs	r7!, {r3, r5, r6, r8, fp, sp, lr}^
    147c:	65707320 	ldrbvs	r7, [r0, #-800]!	; 0x320
    1480:	66206465 	strtvs	r6, [r0], -r5, ror #8
    1484:	656c6961 	strbvs	r6, [ip, #-2401]!	; 0x961
    1488:	00000a64 	andeq	r0, r0, r4, ror #20
    148c:	e590109c 	ldr	r1, [r0, #156]	; 0x9c
    1490:	e12fff11 	bx	r1
    1494:	e5902038 	ldr	r2, [r0, #56]	; 0x38
    1498:	e1520001 	cmp	r2, r1
    149c:	31a01002 	movcc	r1, r2
    14a0:	e5902034 	ldr	r2, [r0, #52]	; 0x34
    14a4:	e1520001 	cmp	r2, r1
    14a8:	81a01002 	movhi	r1, r2
    14ac:	e5801044 	str	r1, [r0, #68]	; 0x44
    14b0:	e590109c 	ldr	r1, [r0, #156]	; 0x9c
    14b4:	e12fff11 	bx	r1
    14b8:	e5801040 	str	r1, [r0, #64]	; 0x40
    14bc:	e590109c 	ldr	r1, [r0, #156]	; 0x9c
    14c0:	e12fff11 	bx	r1
    14c4:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    14c8:	e24ddf8b 	sub	sp, sp, #556	; 0x22c
    14cc:	e1a04000 	mov	r4, r0
    14d0:	e590004c 	ldr	r0, [r0, #76]	; 0x4c
    14d4:	e28d1f82 	add	r1, sp, #520	; 0x208
    14d8:	e3a09000 	mov	r9, #0
    14dc:	e3a0b007 	mov	fp, #7
    14e0:	e3100b01 	tst	r0, #1024	; 0x400
    14e4:	e58d9210 	str	r9, [sp, #528]	; 0x210
    14e8:	13a0000a 	movne	r0, #10
    14ec:	03a00002 	moveq	r0, #2
    14f0:	e58d9224 	str	r9, [sp, #548]	; 0x224
    14f4:	e30063e8 	movw	r6, #1000	; 0x3e8
    14f8:	e8810801 	stm	r1, {r0, fp}
    14fc:	e1a02009 	mov	r2, r9
    1500:	e1a00004 	mov	r0, r4
    1504:	ebfffc38 	bl	0x5ec
    1508:	e1b05000 	movs	r5, r0
    150c:	15941030 	ldrne	r1, [r4, #48]	; 0x30
    1510:	128f0e2d 	addne	r0, pc, #720	; 0x17e8
    1514:	0a000001 	beq	0x1520
    1518:	eb00125b 	bl	0x5e8c
    151c:	ea000094 	b	0x1774
    1520:	e28d5f85 	add	r5, sp, #532	; 0x214
    1524:	e3a08015 	mov	r8, #21
    1528:	e895000f 	ldm	r5, {r0, r1, r2, r3}
    152c:	e284506c 	add	r5, r4, #108	; 0x6c
    1530:	e885000f 	stm	r5, {r0, r1, r2, r3}
    1534:	e594004c 	ldr	r0, [r4, #76]	; 0x4c
    1538:	e3100b01 	tst	r0, #1024	; 0x400
    153c:	1a000013 	bne	0x1590
    1540:	e3a00003 	mov	r0, #3
    1544:	e58d0208 	str	r0, [sp, #520]	; 0x208
    1548:	e1d407bc 	ldrh	r0, [r4, #124]	; 0x7c
    154c:	e28d1f82 	add	r1, sp, #520	; 0x208
    1550:	e3a02000 	mov	r2, #0
    1554:	e58d820c 	str	r8, [sp, #524]	; 0x20c
    1558:	e1a00800 	lsl	r0, r0, #16
    155c:	e58d0210 	str	r0, [sp, #528]	; 0x210
    1560:	e1a00004 	mov	r0, r4
    1564:	e58d9224 	str	r9, [sp, #548]	; 0x224
    1568:	ebfffc1f 	bl	0x5ec
    156c:	e1b05000 	movs	r5, r0
    1570:	15941030 	ldrne	r1, [r4, #48]	; 0x30
    1574:	128f0e2a 	addne	r0, pc, #672	; 0x181c
    1578:	1affffe6 	bne	0x1518
    157c:	e5940028 	ldr	r0, [r4, #40]	; 0x28
    1580:	e3100802 	tst	r0, #131072	; 0x20000
    1584:	159d0214 	ldrne	r0, [sp, #532]	; 0x214
    1588:	11a00820 	lsrne	r0, r0, #16
    158c:	11c407bc 	strhne	r0, [r4, #124]	; 0x7c
    1590:	e28d1f82 	add	r1, sp, #520	; 0x208
    1594:	e3a00009 	mov	r0, #9
    1598:	e3a02000 	mov	r2, #0
    159c:	e8810801 	stm	r1, {r0, fp}
    15a0:	e1d407bc 	ldrh	r0, [r4, #124]	; 0x7c
    15a4:	e1a00800 	lsl	r0, r0, #16
    15a8:	e58d0210 	str	r0, [sp, #528]	; 0x210
    15ac:	e1a00004 	mov	r0, r4
    15b0:	e58d9224 	str	r9, [sp, #548]	; 0x224
    15b4:	ebfffc0c 	bl	0x5ec
    15b8:	e1a05000 	mov	r5, r0
    15bc:	e1a01006 	mov	r1, r6
    15c0:	e1a00004 	mov	r0, r4
    15c4:	ebfffc0a 	bl	0x5f4
    15c8:	e3550000 	cmp	r5, #0
    15cc:	15941030 	ldrne	r1, [r4, #48]	; 0x30
    15d0:	128f0f99 	addne	r0, pc, #612	; 0x183c
    15d4:	1affffcf 	bne	0x1518
    15d8:	e59d0214 	ldr	r0, [sp, #532]	; 0x214
    15dc:	e584005c 	str	r0, [r4, #92]	; 0x5c
    15e0:	e59d1218 	ldr	r1, [sp, #536]	; 0x218
    15e4:	e5841060 	str	r1, [r4, #96]	; 0x60
    15e8:	e59d021c 	ldr	r0, [sp, #540]	; 0x21c
    15ec:	e5840064 	str	r0, [r4, #100]	; 0x64
    15f0:	e59d2220 	ldr	r2, [sp, #544]	; 0x220
    15f4:	e5842068 	str	r2, [r4, #104]	; 0x68
    15f8:	e5942028 	ldr	r2, [r4, #40]	; 0x28
    15fc:	e59f6258 	ldr	r6, [pc, #600]	; 0x185c
    1600:	e3520801 	cmp	r2, #65536	; 0x10000
    1604:	e286a01e 	add	sl, r6, #30
    1608:	1a000014 	bne	0x1660
    160c:	e59d2214 	ldr	r2, [sp, #532]	; 0x214
    1610:	e2463010 	sub	r3, r6, #16
    1614:	e7e32d52 	ubfx	r2, r2, #26, #4
    1618:	e3520005 	cmp	r2, #5
    161c:	308ff102 	addcc	pc, pc, r2, lsl #2
    1620:	ea000004 	b	0x1638
    1624:	ea000003 	b	0x1638
    1628:	ea000004 	b	0x1640
    162c:	ea000005 	b	0x1648
    1630:	ea000006 	b	0x1650
    1634:	ea000008 	b	0x165c
    1638:	e5843028 	str	r3, [r4, #40]	; 0x28
    163c:	ea000007 	b	0x1660
    1640:	e59f2218 	ldr	r2, [pc, #536]	; 0x1860
    1644:	ea000002 	b	0x1654
    1648:	e5846028 	str	r6, [r4, #40]	; 0x28
    164c:	ea000003 	b	0x1660
    1650:	e59f220c 	ldr	r2, [pc, #524]	; 0x1864
    1654:	e5842028 	str	r2, [r4, #40]	; 0x28
    1658:	ea000000 	b	0x1660
    165c:	e584a028 	str	sl, [r4, #40]	; 0x28
    1660:	e3a07001 	mov	r7, #1
    1664:	e59d2214 	ldr	r2, [sp, #532]	; 0x214
    1668:	e59f31f8 	ldr	r3, [pc, #504]	; 0x1868
    166c:	e2022007 	and	r2, r2, #7
    1670:	e59f51f4 	ldr	r5, [pc, #500]	; 0x186c
    1674:	e7933102 	ldr	r3, [r3, r2, lsl #2]
    1678:	e59d2214 	ldr	r2, [sp, #532]	; 0x214
    167c:	e7e321d2 	ubfx	r2, r2, #3, #4
    1680:	e7952102 	ldr	r2, [r5, r2, lsl #2]
    1684:	e0020293 	mul	r2, r3, r2
    1688:	e5842080 	str	r2, [r4, #128]	; 0x80
    168c:	e59d2218 	ldr	r2, [sp, #536]	; 0x218
    1690:	e7e32852 	ubfx	r2, r2, #16, #4
    1694:	e1a05217 	lsl	r5, r7, r2
    1698:	e5845084 	str	r5, [r4, #132]	; 0x84
    169c:	e5942028 	ldr	r2, [r4, #40]	; 0x28
    16a0:	e3120802 	tst	r2, #131072	; 0x20000
    16a4:	15845088 	strne	r5, [r4, #136]	; 0x88
    16a8:	1a000003 	bne	0x16bc
    16ac:	e59d2220 	ldr	r2, [sp, #544]	; 0x220
    16b0:	e7e32b52 	ubfx	r2, r2, #22, #4
    16b4:	e1a02217 	lsl	r2, r7, r2
    16b8:	e5842088 	str	r2, [r4, #136]	; 0x88
    16bc:	e594203c 	ldr	r2, [r4, #60]	; 0x3c
    16c0:	e3520000 	cmp	r2, #0
    16c4:	e3a02000 	mov	r2, #0
    16c8:	11a01d01 	lslne	r1, r1, #26
    16cc:	11a01521 	lsrne	r1, r1, #10
    16d0:	11811820 	orrne	r1, r1, r0, lsr #16
    16d4:	07df151f 	bfceq	r1, #10, #22
    16d8:	01a01101 	lsleq	r1, r1, #2
    16dc:	01811f20 	orreq	r1, r1, r0, lsr #30
    16e0:	13a00008 	movne	r0, #8
    16e4:	07e207d0 	ubfxeq	r0, r0, #15, #3
    16e8:	e2913001 	adds	r3, r1, #1
    16ec:	e2a21000 	adc	r1, r2, #0
    16f0:	e2902002 	adds	r2, r0, #2
    16f4:	e1a00003 	mov	r0, r3
    16f8:	fa001451 	blx	0x6844
    16fc:	e08c3590 	umull	r3, ip, r0, r5
    1700:	e021c591 	mla	r1, r1, r5, ip
    1704:	e3a02000 	mov	r2, #0
    1708:	e3550c02 	cmp	r5, #512	; 0x200
    170c:	e0201290 	mla	r0, r0, r2, r1
    1710:	e5840094 	str	r0, [r4, #148]	; 0x94
    1714:	e3000200 	movw	r0, #512	; 0x200
    1718:	e5843090 	str	r3, [r4, #144]	; 0x90
    171c:	85840084 	strhi	r0, [r4, #132]	; 0x84
    1720:	e5941088 	ldr	r1, [r4, #136]	; 0x88
    1724:	e3510c02 	cmp	r1, #512	; 0x200
    1728:	85840088 	strhi	r0, [r4, #136]	; 0x88
    172c:	e594004c 	ldr	r0, [r4, #76]	; 0x4c
    1730:	e3100b01 	tst	r0, #1024	; 0x400
    1734:	1a000011 	bne	0x1780
    1738:	e3a0001d 	mov	r0, #29
    173c:	e58d020c 	str	r0, [sp, #524]	; 0x20c
    1740:	e58db208 	str	fp, [sp, #520]	; 0x208
    1744:	e28d1f82 	add	r1, sp, #520	; 0x208
    1748:	e1d407bc 	ldrh	r0, [r4, #124]	; 0x7c
    174c:	e3a02000 	mov	r2, #0
    1750:	e1a00800 	lsl	r0, r0, #16
    1754:	e58d0210 	str	r0, [sp, #528]	; 0x210
    1758:	e1a00004 	mov	r0, r4
    175c:	e58d9224 	str	r9, [sp, #548]	; 0x224
    1760:	ebfffba1 	bl	0x5ec
    1764:	e1b05000 	movs	r5, r0
    1768:	0a000004 	beq	0x1780
    176c:	e28f00fc 	add	r0, pc, #252	; 0x1870
    1770:	eb0011c5 	bl	0x5e8c
    1774:	e1a00005 	mov	r0, r5
    1778:	e28ddf8b 	add	sp, sp, #556	; 0x22c
    177c:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    1780:	e584708c 	str	r7, [r4, #140]	; 0x8c
    1784:	e3a000ff 	mov	r0, #255	; 0xff
    1788:	e5c4007e 	strb	r0, [r4, #126]	; 0x7e
    178c:	e5940028 	ldr	r0, [r4, #40]	; 0x28
    1790:	e59f70f8 	ldr	r7, [pc, #248]	; 0x1890
    1794:	e3100802 	tst	r0, #131072	; 0x20000
    1798:	1a00006e 	bne	0x1958
    179c:	e15a0000 	cmp	sl, r0
    17a0:	8a00006c 	bhi	0x1958
    17a4:	e28d1008 	add	r1, sp, #8
    17a8:	e1a00004 	mov	r0, r4
    17ac:	ebfffdb1 	bl	0xe78
    17b0:	e3500000 	cmp	r0, #0
    17b4:	1a000057 	bne	0x1918
    17b8:	e5dd10c8 	ldrb	r1, [sp, #200]	; 0xc8
    17bc:	e3510008 	cmp	r1, #8
    17c0:	308ff101 	addcc	pc, pc, r1, lsl #2
    17c4:	ea000041 	b	0x18d0
    17c8:	ea000031 	b	0x1894
    17cc:	ea000032 	b	0x189c
    17d0:	ea000033 	b	0x18a4
    17d4:	ea000034 	b	0x18ac
    17d8:	ea00003c 	b	0x18d0
    17dc:	ea000035 	b	0x18b8
    17e0:	ea000036 	b	0x18c0
    17e4:	ea000037 	b	0x18c8
    17e8:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    17ec:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    17f0:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
    17f4:	75502064 	ldrbvc	r2, [r0, #-100]	; 0x64
    17f8:	68742074 	ldmdavs	r4!, {r2, r4, r5, r6, sp}^
    17fc:	61432065 	cmpvs	r3, r5, rrx
    1800:	69206472 	stmdbvs	r0!, {r1, r4, r5, r6, sl, sp, lr}
    1804:	6449206e 	strbvs	r2, [r9], #-110	; 0x6e
    1808:	69746e65 	ldmdbvs	r4!, {r0, r2, r5, r6, r9, sl, fp, sp, lr}^
    180c:	4d207966 	stcmi	9, cr7, [r0, #-408]!	; 0xfffffe68
    1810:	2065646f 	rsbcs	r6, r5, pc, ror #8
    1814:	6c696166 	stfvse	f6, [r9], #-408	; 0xfffffe68
    1818:	000a6465 	andeq	r6, sl, r5, ror #8
    181c:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    1820:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    1824:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
    1828:	65732064 	ldrbvs	r2, [r3, #-100]!	; 0x64
    182c:	7220646e 	eorvc	r6, r0, #1845493760	; 0x6e000000
    1830:	66206163 	strtvs	r6, [r0], -r3, ror #2
    1834:	656c6961 	strbvs	r6, [ip, #-2401]!	; 0x961
    1838:	00000a64 	andeq	r0, r0, r4, ror #20
    183c:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    1840:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    1844:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
    1848:	65672064 	strbvs	r2, [r7, #-100]!	; 0x64
    184c:	73632074 	cmnvc	r3, #116	; 0x74
    1850:	61662064 	cmnvs	r6, r4, rrx
    1854:	64656c69 	strbtvs	r6, [r5], #-3177	; 0xc69
    1858:	0000000a 	andeq	r0, r0, sl
    185c:	00010022 	andeq	r0, r1, r2, lsr #32
    1860:	00010014 	andeq	r0, r1, r4, lsl r0
    1864:	00010030 	andeq	r0, r1, r0, lsr r0
    1868:	00016b50 	andeq	r6, r1, r0, asr fp
    186c:	00016b60 	andeq	r6, r1, r0, ror #22
    1870:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    1874:	53203a5d 	teqpl	r0, #380928	; 0x5d000
    1878:	63656c65 	cmnvs	r5, #25856	; 0x6500
    187c:	68742074 	ldmdavs	r4!, {r2, r4, r5, r6, sp}^
    1880:	61632065 	cmnvs	r3, r5, rrx
    1884:	66206472 			; <UNDEFINED> instruction: 0x66206472
    1888:	656c6961 	strbvs	r6, [ip, #-2401]!	; 0x961
    188c:	00000a64 	andeq	r0, r0, r4, ror #20
    1890:	00010041 	andeq	r0, r1, r1, asr #32
    1894:	e584a028 	str	sl, [r4, #40]	; 0x28
    1898:	ea00000e 	b	0x18d8
    189c:	e5847028 	str	r7, [r4, #40]	; 0x28
    18a0:	ea00000c 	b	0x18d8
    18a4:	e59f029c 	ldr	r0, [pc, #668]	; 0x1b48
    18a8:	ea000000 	b	0x18b0
    18ac:	e59f0298 	ldr	r0, [pc, #664]	; 0x1b4c
    18b0:	e5840028 	str	r0, [r4, #40]	; 0x28
    18b4:	ea000007 	b	0x18d8
    18b8:	e59f0290 	ldr	r0, [pc, #656]	; 0x1b50
    18bc:	eafffffb 	b	0x18b0
    18c0:	e59f028c 	ldr	r0, [pc, #652]	; 0x1b54
    18c4:	eafffff9 	b	0x18b0
    18c8:	e59f0288 	ldr	r0, [pc, #648]	; 0x1b58
    18cc:	eafffff7 	b	0x18b0
    18d0:	e3500000 	cmp	r0, #0
    18d4:	1a00000f 	bne	0x1918
    18d8:	e5dd00c8 	ldrb	r0, [sp, #200]	; 0xc8
    18dc:	e3500002 	cmp	r0, #2
    18e0:	3a00000c 	bcc	0x1918
    18e4:	e5dd10df 	ldrb	r1, [sp, #223]	; 0xdf
    18e8:	e59d00dc 	ldr	r0, [sp, #220]	; 0xdc
    18ec:	e7df0c11 	bfi	r0, r1, #24, #8
    18f0:	e1a01fc0 	asr	r1, r0, #31
    18f4:	e1a01481 	lsl	r1, r1, #9
    18f8:	e1811ba0 	orr	r1, r1, r0, lsr #23
    18fc:	e1a00480 	lsl	r0, r0, #9
    1900:	e1a03a20 	lsr	r3, r0, #20
    1904:	e1832601 	orr	r2, r3, r1, lsl #12
    1908:	e2722b02 	rsbs	r2, r2, #2048	; 0x800
    190c:	e1a03a21 	lsr	r3, r1, #20
    1910:	e2f32000 	rscs	r2, r3, #0
    1914:	31c409f0 	strdcc	r0, [r4, #144]	; 0x90
    1918:	e5dd00b7 	ldrb	r0, [sp, #183]	; 0xb7
    191c:	e3500000 	cmp	r0, #0
    1920:	15dd00e8 	ldrbne	r0, [sp, #232]	; 0xe8
    1924:	11a00980 	lslne	r0, r0, #19
    1928:	1a000005 	bne	0x1944
    192c:	e5940064 	ldr	r0, [r4, #100]	; 0x64
    1930:	e7e41550 	ubfx	r1, r0, #10, #5
    1934:	e7e402d0 	ubfx	r0, r0, #5, #5
    1938:	e2811001 	add	r1, r1, #1
    193c:	e2800001 	add	r0, r0, #1
    1940:	e1600081 	smulbb	r0, r1, r0
    1944:	e584008c 	str	r0, [r4, #140]	; 0x8c
    1948:	e5dd00a8 	ldrb	r0, [sp, #168]	; 0xa8
    194c:	e3100001 	tst	r0, #1
    1950:	15dd00bb 	ldrbne	r0, [sp, #187]	; 0xbb
    1954:	15c4007e 	strbne	r0, [r4, #126]	; 0x7e
    1958:	e1a00004 	mov	r0, r4
    195c:	e59fa1f8 	ldr	sl, [pc, #504]	; 0x1b5c
    1960:	e1a0100a 	mov	r1, sl
    1964:	ebfffeca 	bl	0x1494
    1968:	e5940028 	ldr	r0, [r4, #40]	; 0x28
    196c:	e3100802 	tst	r0, #131072	; 0x20000
    1970:	e1a00004 	mov	r0, r4
    1974:	0a000001 	beq	0x1980
    1978:	ebfffe1a 	bl	0x11e8
    197c:	ea000000 	b	0x1984
    1980:	ebfffd71 	bl	0xf4c
    1984:	e1b05000 	movs	r5, r0
    1988:	15941030 	ldrne	r1, [r4, #48]	; 0x30
    198c:	128f0f73 	addne	r0, pc, #460	; 0x1b60
    1990:	1afffee0 	bne	0x1518
    1994:	e1c404d8 	ldrd	r0, [r4, #72]	; 0x48
    1998:	e0000001 	and	r0, r0, r1
    199c:	e5840048 	str	r0, [r4, #72]	; 0x48
    19a0:	e5941028 	ldr	r1, [r4, #40]	; 0x28
    19a4:	e3110802 	tst	r1, #131072	; 0x20000
    19a8:	0a00002f 	beq	0x1a6c
    19ac:	e3100c01 	tst	r0, #256	; 0x100
    19b0:	0a00001d 	beq	0x1a2c
    19b4:	e28d1f82 	add	r1, sp, #520	; 0x208
    19b8:	e3a00037 	mov	r0, #55	; 0x37
    19bc:	e3a02000 	mov	r2, #0
    19c0:	e8810101 	stm	r1, {r0, r8}
    19c4:	e1d407bc 	ldrh	r0, [r4, #124]	; 0x7c
    19c8:	e1a00800 	lsl	r0, r0, #16
    19cc:	e58d0210 	str	r0, [sp, #528]	; 0x210
    19d0:	e1a00004 	mov	r0, r4
    19d4:	e58d9224 	str	r9, [sp, #548]	; 0x224
    19d8:	ebfffb03 	bl	0x5ec
    19dc:	e1b05000 	movs	r5, r0
    19e0:	159f01a0 	ldrne	r0, [pc, #416]	; 0x1b88
    19e4:	15941030 	ldrne	r1, [r4, #48]	; 0x30
    19e8:	1afffeca 	bne	0x1518
    19ec:	e28d1f82 	add	r1, sp, #520	; 0x208
    19f0:	e3a00006 	mov	r0, #6
    19f4:	e3a02000 	mov	r2, #0
    19f8:	e8810101 	stm	r1, {r0, r8}
    19fc:	e3a00002 	mov	r0, #2
    1a00:	e58d0210 	str	r0, [sp, #528]	; 0x210
    1a04:	e1a00004 	mov	r0, r4
    1a08:	e58d9224 	str	r9, [sp, #548]	; 0x224
    1a0c:	ebfffaf6 	bl	0x5ec
    1a10:	e1b05000 	movs	r5, r0
    1a14:	15941030 	ldrne	r1, [r4, #48]	; 0x30
    1a18:	128f0f5b 	addne	r0, pc, #364	; 0x1b8c
    1a1c:	1afffebd 	bne	0x1518
    1a20:	e3a01004 	mov	r1, #4
    1a24:	e1a00004 	mov	r0, r4
    1a28:	ebfffea2 	bl	0x14b8
    1a2c:	e5940048 	ldr	r0, [r4, #72]	; 0x48
    1a30:	e3100001 	tst	r0, #1
    1a34:	159f1178 	ldrne	r1, [pc, #376]	; 0x1bb4
    1a38:	01a0100a 	moveq	r1, sl
    1a3c:	e1a00004 	mov	r0, r4
    1a40:	ebfffe93 	bl	0x1494
    1a44:	e5942084 	ldr	r2, [r4, #132]	; 0x84
    1a48:	e3a03000 	mov	r3, #0
    1a4c:	e58420ac 	str	r2, [r4, #172]	; 0xac
    1a50:	e1c409d0 	ldrd	r0, [r4, #144]	; 0x90
    1a54:	eb0012ae 	bl	0x6514
    1a58:	e58400a8 	str	r0, [r4, #168]	; 0xa8
    1a5c:	e5940028 	ldr	r0, [r4, #40]	; 0x28
    1a60:	e3100802 	tst	r0, #131072	; 0x20000
    1a64:	0a000023 	beq	0x1af8
    1a68:	ea000097 	b	0x1ccc
    1a6c:	e3100c01 	tst	r0, #256	; 0x100
    1a70:	0a000013 	beq	0x1ac4
    1a74:	e3a03001 	mov	r3, #1
    1a78:	e3a020b7 	mov	r2, #183	; 0xb7
    1a7c:	e1a01003 	mov	r1, r3
    1a80:	e1a00004 	mov	r0, r4
    1a84:	ebfffd14 	bl	0xedc
    1a88:	e1b05000 	movs	r5, r0
    1a8c:	15941030 	ldrne	r1, [r4, #48]	; 0x30
    1a90:	128f0e12 	addne	r0, pc, #288	; 0x1bb8
    1a94:	03a01004 	moveq	r1, #4
    1a98:	1afffe9e 	bne	0x1518
    1a9c:	e1a00004 	mov	r0, r4
    1aa0:	ebfffe84 	bl	0x14b8
    1aa4:	e5940048 	ldr	r0, [r4, #72]	; 0x48
    1aa8:	e3100001 	tst	r0, #1
    1aac:	059f112c 	ldreq	r1, [pc, #300]	; 0x1be0
    1ab0:	0affffe1 	beq	0x1a3c
    1ab4:	e3100010 	tst	r0, #16
    1ab8:	159f1124 	ldrne	r1, [pc, #292]	; 0x1be4
    1abc:	059f1124 	ldreq	r1, [pc, #292]	; 0x1be8
    1ac0:	eaffffdd 	b	0x1a3c
    1ac4:	e3100c02 	tst	r0, #512	; 0x200
    1ac8:	0afffff5 	beq	0x1aa4
    1acc:	e3a03002 	mov	r3, #2
    1ad0:	e3a020b7 	mov	r2, #183	; 0xb7
    1ad4:	e3a01001 	mov	r1, #1
    1ad8:	e1a00004 	mov	r0, r4
    1adc:	ebfffcfe 	bl	0xedc
    1ae0:	e1b05000 	movs	r5, r0
    1ae4:	15941030 	ldrne	r1, [r4, #48]	; 0x30
    1ae8:	128f00fc 	addne	r0, pc, #252	; 0x1bec
    1aec:	03a01008 	moveq	r1, #8
    1af0:	1afffe88 	bne	0x1518
    1af4:	eaffffe8 	b	0x1a9c
    1af8:	e2401801 	sub	r1, r0, #65536	; 0x10000
    1afc:	e1500007 	cmp	r0, r7
    1b00:	e2411041 	sub	r1, r1, #65	; 0x41
    1b04:	028f0f42 	addeq	r0, pc, #264	; 0x1c14
    1b08:	0a00006e 	beq	0x1cc8
    1b0c:	ca00005b 	bgt	0x1c80
    1b10:	e2401801 	sub	r1, r0, #65536	; 0x10000
    1b14:	e1500006 	cmp	r0, r6
    1b18:	e2411022 	sub	r1, r1, #34	; 0x22
    1b1c:	028f0f41 	addeq	r0, pc, #260	; 0x1c28
    1b20:	0a000068 	beq	0x1cc8
    1b24:	ca00004e 	bgt	0x1c64
    1b28:	e2400801 	sub	r0, r0, #65536	; 0x10000
    1b2c:	e2500012 	subs	r0, r0, #18
    1b30:	028f0f41 	addeq	r0, pc, #260	; 0x1c3c
    1b34:	0a000063 	beq	0x1cc8
    1b38:	e3500002 	cmp	r0, #2
    1b3c:	028f0f43 	addeq	r0, pc, #268	; 0x1c50
    1b40:	0a000060 	beq	0x1cc8
    1b44:	ea00005e 	b	0x1cc4
    1b48:	00010042 	andeq	r0, r1, r2, asr #32
    1b4c:	00010043 	andeq	r0, r1, r3, asr #32
    1b50:	00010044 	andeq	r0, r1, r4, asr #32
    1b54:	00010045 	andeq	r0, r1, r5, asr #32
    1b58:	00010050 	andeq	r0, r1, r0, asr r0
    1b5c:	017d7840 	cmneq	sp, r0, asr #16
    1b60:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    1b64:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    1b68:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
    1b6c:	68432064 	stmdavs	r3, {r2, r5, r6, sp}^
    1b70:	65676e61 	strbvs	r6, [r7, #-3681]!	; 0xe61
    1b74:	65707320 	ldrbvs	r7, [r0, #-800]!	; 0x320
    1b78:	6d206465 	cfstrsvs	mvf6, [r0, #-404]!	; 0xfffffe6c
    1b7c:	2065646f 	rsbcs	r6, r5, pc, ror #8
    1b80:	6c696166 	stfvse	f6, [r9], #-408	; 0xfffffe68
    1b84:	000a6465 	andeq	r6, sl, r5, ror #8
    1b88:	00010c60 	andeq	r0, r1, r0, ror #24
    1b8c:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    1b90:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    1b94:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
    1b98:	64732064 	ldrbtvs	r2, [r3], #-100	; 0x64
    1b9c:	74657320 	strbtvc	r7, [r5], #-800	; 0x320
    1ba0:	73756220 	cmnvc	r5, #32, 4
    1ba4:	64697720 	strbtvs	r7, [r9], #-1824	; 0x720
    1ba8:	66206874 			; <UNDEFINED> instruction: 0x66206874
    1bac:	656c6961 	strbvs	r6, [ip, #-2401]!	; 0x961
    1bb0:	00000a64 	andeq	r0, r0, r4, ror #20
    1bb4:	02faf080 	rscseq	pc, sl, #128	; 0x80
    1bb8:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    1bbc:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    1bc0:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
    1bc4:	77732064 	ldrbvc	r2, [r3, -r4, rrx]!
    1bc8:	68637469 	stmdavs	r3!, {r0, r3, r5, r6, sl, ip, sp, lr}^
    1bcc:	73756220 	cmnvc	r5, #32, 4
    1bd0:	64697720 	strbtvs	r7, [r9], #-1824	; 0x720
    1bd4:	66206874 			; <UNDEFINED> instruction: 0x66206874
    1bd8:	656c6961 	strbvs	r6, [ip, #-2401]!	; 0x961
    1bdc:	00000a64 	andeq	r0, r0, r4, ror #20
    1be0:	01312d00 	teqeq	r1, r0, lsl #26
    1be4:	03197500 	tsteq	r9, #0, 10
    1be8:	018cba80 	orreq	fp, ip, r0, lsl #21
    1bec:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    1bf0:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    1bf4:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
    1bf8:	77732064 	ldrbvc	r2, [r3, -r4, rrx]!
    1bfc:	68637469 	stmdavs	r3!, {r0, r3, r5, r6, sl, ip, sp, lr}^
    1c00:	73756220 	cmnvc	r5, #32, 4
    1c04:	64697720 	strbtvs	r7, [r9], #-1824	; 0x720
    1c08:	20386874 	eorscs	r6, r8, r4, ror r8
    1c0c:	6c696166 	stfvse	f6, [r9], #-408	; 0xfffffe68
    1c10:	000a6465 	andeq	r6, sl, r5, ror #8
    1c14:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    1c18:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
    1c1c:	7620434d 	strtvc	r4, [r0], -sp, asr #6
    1c20:	34207265 	strtcc	r7, [r0], #-613	; 0x265
    1c24:	000a312e 	andeq	r3, sl, lr, lsr #2
    1c28:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    1c2c:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
    1c30:	7620434d 	strtvc	r4, [r0], -sp, asr #6
    1c34:	32207265 	eorcc	r7, r0, #1342177286	; 0x50000006
    1c38:	000a322e 	andeq	r3, sl, lr, lsr #4
    1c3c:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    1c40:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
    1c44:	7620434d 	strtvc	r4, [r0], -sp, asr #6
    1c48:	31207265 	teqcc	r0, r5, ror #4
    1c4c:	000a322e 	andeq	r3, sl, lr, lsr #4
    1c50:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    1c54:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
    1c58:	7620434d 	strtvc	r4, [r0], -sp, asr #6
    1c5c:	31207265 	teqcc	r0, r5, ror #4
    1c60:	000a342e 	andeq	r3, sl, lr, lsr #8
    1c64:	e351000e 	cmp	r1, #14
    1c68:	028f00e0 	addeq	r0, pc, #224	; 0x1d50
    1c6c:	0a000015 	beq	0x1cc8
    1c70:	e351001e 	cmp	r1, #30
    1c74:	028f00e8 	addeq	r0, pc, #232	; 0x1d64
    1c78:	0a000012 	beq	0x1cc8
    1c7c:	ea000010 	b	0x1cc4
    1c80:	e3510003 	cmp	r1, #3
    1c84:	028f00ec 	addeq	r0, pc, #236	; 0x1d78
    1c88:	0a00000e 	beq	0x1cc8
    1c8c:	ca000006 	bgt	0x1cac
    1c90:	e3510001 	cmp	r1, #1
    1c94:	028f00f4 	addeq	r0, pc, #244	; 0x1d90
    1c98:	0a00000a 	beq	0x1cc8
    1c9c:	e3510002 	cmp	r1, #2
    1ca0:	028f00fc 	addeq	r0, pc, #252	; 0x1da4
    1ca4:	0a000007 	beq	0x1cc8
    1ca8:	ea000005 	b	0x1cc4
    1cac:	e3510004 	cmp	r1, #4
    1cb0:	028f0c01 	addeq	r0, pc, #256	; 0x1db8
    1cb4:	0a000003 	beq	0x1cc8
    1cb8:	e351000f 	cmp	r1, #15
    1cbc:	028f0f42 	addeq	r0, pc, #264	; 0x1dcc
    1cc0:	0a000000 	beq	0x1cc8
    1cc4:	e28f0f45 	add	r0, pc, #276	; 0x1de0
    1cc8:	eb00106f 	bl	0x5e8c
    1ccc:	e59400a8 	ldr	r0, [r4, #168]	; 0xa8
    1cd0:	e1a025a0 	lsr	r2, r0, #11
    1cd4:	e5940048 	ldr	r0, [r4, #72]	; 0x48
    1cd8:	e3100c01 	tst	r0, #256	; 0x100
    1cdc:	e28f0f45 	add	r0, pc, #276	; 0x1df8
    1ce0:	13a01004 	movne	r1, #4
    1ce4:	03a01001 	moveq	r1, #1
    1ce8:	eb001067 	bl	0x5e8c
    1cec:	e5940074 	ldr	r0, [r4, #116]	; 0x74
    1cf0:	e5941078 	ldr	r1, [r4, #120]	; 0x78
    1cf4:	e1a00400 	lsl	r0, r0, #8
    1cf8:	e1802c21 	orr	r2, r0, r1, lsr #24
    1cfc:	e594006c 	ldr	r0, [r4, #108]	; 0x6c
    1d00:	e1a01420 	lsr	r1, r0, #8
    1d04:	e28f0f46 	add	r0, pc, #280	; 0x1e24
    1d08:	eb00105f 	bl	0x5e8c
    1d0c:	e5940070 	ldr	r0, [r4, #112]	; 0x70
    1d10:	e20020ff 	and	r2, r0, #255	; 0xff
    1d14:	e7e71450 	ubfx	r1, r0, #8, #8
    1d18:	e88d0006 	stm	sp, {r1, r2}
    1d1c:	e1a02c20 	lsr	r2, r0, #24
    1d20:	e7e73850 	ubfx	r3, r0, #16, #8
    1d24:	e594006c 	ldr	r0, [r4, #108]	; 0x6c
    1d28:	e20010ff 	and	r1, r0, #255	; 0xff
    1d2c:	e28f0e11 	add	r0, pc, #272	; 0x1e44
    1d30:	eb001055 	bl	0x5e8c
    1d34:	e5940074 	ldr	r0, [r4, #116]	; 0x74
    1d38:	e1a01e20 	lsr	r1, r0, #28
    1d3c:	e7e32c50 	ubfx	r2, r0, #24, #4
    1d40:	e28f0f46 	add	r0, pc, #280	; 0x1e60
    1d44:	eb001050 	bl	0x5e8c
    1d48:	e3a00000 	mov	r0, #0
    1d4c:	eafffe89 	b	0x1778
    1d50:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    1d54:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
    1d58:	7620434d 	strtvc	r4, [r0], -sp, asr #6
    1d5c:	33207265 	teqcc	r0, #1342177286	; 0x50000006
    1d60:	000a302e 	andeq	r3, sl, lr, lsr #32
    1d64:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    1d68:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
    1d6c:	7620434d 	strtvc	r4, [r0], -sp, asr #6
    1d70:	34207265 	strtcc	r7, [r0], #-613	; 0x265
    1d74:	000a302e 	andeq	r3, sl, lr, lsr #32
    1d78:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    1d7c:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
    1d80:	7620434d 	strtvc	r4, [r0], -sp, asr #6
    1d84:	34207265 	strtcc	r7, [r0], #-613	; 0x265
    1d88:	0a31342e 	beq	0xc4ee48
    1d8c:	00000000 	andeq	r0, r0, r0
    1d90:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    1d94:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
    1d98:	7620434d 	strtvc	r4, [r0], -sp, asr #6
    1d9c:	34207265 	strtcc	r7, [r0], #-613	; 0x265
    1da0:	000a322e 	andeq	r3, sl, lr, lsr #4
    1da4:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    1da8:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
    1dac:	7620434d 	strtvc	r4, [r0], -sp, asr #6
    1db0:	34207265 	strtcc	r7, [r0], #-613	; 0x265
    1db4:	000a332e 	andeq	r3, sl, lr, lsr #6
    1db8:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    1dbc:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
    1dc0:	7620434d 	strtvc	r4, [r0], -sp, asr #6
    1dc4:	34207265 	strtcc	r7, [r0], #-613	; 0x265
    1dc8:	000a352e 	andeq	r3, sl, lr, lsr #10
    1dcc:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    1dd0:	4d203a5d 	vstmdbmi	r0!, {s6-s98}
    1dd4:	7620434d 	strtvc	r4, [r0], -sp, asr #6
    1dd8:	35207265 	strcc	r7, [r0, #-613]!	; 0x265
    1ddc:	000a302e 	andeq	r3, sl, lr, lsr #32
    1de0:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    1de4:	55203a5d 	strpl	r3, [r0, #-2653]!	; 0xa5d
    1de8:	6f6e6b6e 	svcvs	0x006e6b6e
    1dec:	4d4d2077 	stclmi	0, cr2, [sp, #-476]	; 0xfffffe24
    1df0:	65762043 	ldrbvs	r2, [r6, #-67]!	; 0x43
    1df4:	00000a72 	andeq	r0, r0, r2, ror sl
    1df8:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    1dfc:	53203a5d 	teqpl	r0, #380928	; 0x5d000
    1e00:	4d4d2f44 	stclmi	15, cr2, [sp, #-272]	; 0xfffffef0
    1e04:	61432043 	cmpvs	r3, r3, asr #32
    1e08:	203a6472 	eorscs	r6, sl, r2, ror r4
    1e0c:	69626425 	stmdbvs	r2!, {r0, r2, r5, sl, sp, lr}^
    1e10:	63202c74 	teqvs	r0, #116, 24	; 0x7400
    1e14:	63617061 	cmnvs	r1, #97	; 0x61
    1e18:	3a797469 	bcc	0x1e5efc4
    1e1c:	4d642520 	cfstr64mi	mvdx2, [r4, #-128]!	; 0xffffff80
    1e20:	00000a42 	andeq	r0, r0, r2, asr #20
    1e24:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    1e28:	76203a5d 			; <UNDEFINED> instruction: 0x76203a5d
    1e2c:	6f646e65 	svcvs	0x00646e65
    1e30:	4d203a72 	vstmdbmi	r0!, {s6-s119}
    1e34:	25206e61 	strcs	r6, [r0, #-3681]!	; 0xe61
    1e38:	6e532078 	mrcvs	0, 2, r2, cr3, cr8, {3}
    1e3c:	78252072 	stmdavc	r5!, {r1, r4, r5, r6, sp}
    1e40:	0000000a 	andeq	r0, r0, sl
    1e44:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    1e48:	70203a5d 	eorvc	r3, r0, sp, asr sl
    1e4c:	75646f72 	strbvc	r6, [r4, #-3954]!	; 0xf72
    1e50:	203a7463 	eorscs	r7, sl, r3, ror #8
    1e54:	63256325 	teqvs	r5, #-1811939328	; 0x94000000
    1e58:	63256325 	teqvs	r5, #-1811939328	; 0x94000000
    1e5c:	000a6325 	andeq	r6, sl, r5, lsr #6
    1e60:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    1e64:	72203a5d 	eorvc	r3, r0, #380928	; 0x5d000
    1e68:	73697665 	cmnvc	r9, #105906176	; 0x6500000
    1e6c:	3a6e6f69 	bcc	0x1b9dc18
    1e70:	2e642520 	cdpcs	5, 6, cr2, cr4, cr0, {1}
    1e74:	000a6425 	andeq	r6, sl, r5, lsr #8
    1e78:	e92d4030 	push	{r4, r5, lr}
    1e7c:	e24dd024 	sub	sp, sp, #36	; 0x24
    1e80:	e1a04000 	mov	r4, r0
    1e84:	e3a00008 	mov	r0, #8
    1e88:	e59f115c 	ldr	r1, [pc, #348]	; 0x1fec
    1e8c:	e58d0000 	str	r0, [sp]
    1e90:	e5940024 	ldr	r0, [r4, #36]	; 0x24
    1e94:	e0100001 	ands	r0, r0, r1
    1e98:	e3a010aa 	mov	r1, #170	; 0xaa
    1e9c:	13a00001 	movne	r0, #1
    1ea0:	e1810400 	orr	r0, r1, r0, lsl #8
    1ea4:	e58d0008 	str	r0, [sp, #8]
    1ea8:	e3a00015 	mov	r0, #21
    1eac:	e58d0004 	str	r0, [sp, #4]
    1eb0:	e3a00000 	mov	r0, #0
    1eb4:	e1a0100d 	mov	r1, sp
    1eb8:	e1a02000 	mov	r2, r0
    1ebc:	e58d001c 	str	r0, [sp, #28]
    1ec0:	e1a00004 	mov	r0, r4
    1ec4:	ebfff9c8 	bl	0x5ec
    1ec8:	e1b05000 	movs	r5, r0
    1ecc:	0a000005 	beq	0x1ee8
    1ed0:	e5941030 	ldr	r1, [r4, #48]	; 0x30
    1ed4:	e28f0f45 	add	r0, pc, #276	; 0x1ff0
    1ed8:	eb000feb 	bl	0x5e8c
    1edc:	e1a00005 	mov	r0, r5
    1ee0:	e28dd024 	add	sp, sp, #36	; 0x24
    1ee4:	e8bd8030 	pop	{r4, r5, pc}
    1ee8:	e59d000c 	ldr	r0, [sp, #12]
    1eec:	e20000ff 	and	r0, r0, #255	; 0xff
    1ef0:	e35000aa 	cmp	r0, #170	; 0xaa
    1ef4:	059f0118 	ldreq	r0, [pc, #280]	; 0x2014
    1ef8:	13e00010 	mvnne	r0, #16
    1efc:	05840028 	streq	r0, [r4, #40]	; 0x28
    1f00:	03a00000 	moveq	r0, #0
    1f04:	eafffff5 	b	0x1ee0
    1f08:	e92d4070 	push	{r4, r5, r6, lr}
    1f0c:	e1a04000 	mov	r4, r0
    1f10:	e590002c 	ldr	r0, [r0, #44]	; 0x2c
    1f14:	e3500000 	cmp	r0, #0
    1f18:	0a000004 	beq	0x1f30
    1f1c:	e5941030 	ldr	r1, [r4, #48]	; 0x30
    1f20:	e28f00f0 	add	r0, pc, #240	; 0x2018
    1f24:	eb000fd8 	bl	0x5e8c
    1f28:	e3a00000 	mov	r0, #0
    1f2c:	e8bd8070 	pop	{r4, r5, r6, pc}
    1f30:	e59410a0 	ldr	r1, [r4, #160]	; 0xa0
    1f34:	e1a00004 	mov	r0, r4
    1f38:	e12fff31 	blx	r1
    1f3c:	e1b05000 	movs	r5, r0
    1f40:	15941030 	ldrne	r1, [r4, #48]	; 0x30
    1f44:	128f00e4 	addne	r0, pc, #228	; 0x2030
    1f48:	1a00000b 	bne	0x1f7c
    1f4c:	e3a01001 	mov	r1, #1
    1f50:	e1a00004 	mov	r0, r4
    1f54:	ebfffd57 	bl	0x14b8
    1f58:	e3a01001 	mov	r1, #1
    1f5c:	e1a00004 	mov	r0, r4
    1f60:	ebfffd4b 	bl	0x1494
    1f64:	e1a00004 	mov	r0, r4
    1f68:	ebfffab4 	bl	0xa40
    1f6c:	e1b05000 	movs	r5, r0
    1f70:	15941030 	ldrne	r1, [r4, #48]	; 0x30
    1f74:	128f00d4 	addne	r0, pc, #212	; 0x2050
    1f78:	0a000001 	beq	0x1f84
    1f7c:	eb000fc2 	bl	0x5e8c
    1f80:	ea00006b 	b	0x2134
    1f84:	e3a06000 	mov	r6, #0
    1f88:	e5c4607f 	strb	r6, [r4, #127]	; 0x7f
    1f8c:	e5941030 	ldr	r1, [r4, #48]	; 0x30
    1f90:	e28f00dc 	add	r0, pc, #220	; 0x2074
    1f94:	eb000fbc 	bl	0x5e8c
    1f98:	e1a00004 	mov	r0, r4
    1f9c:	ebffffb5 	bl	0x1e78
    1fa0:	e1a00004 	mov	r0, r4
    1fa4:	ebfffabf 	bl	0xaa8
    1fa8:	e3500000 	cmp	r0, #0
    1fac:	0a000058 	beq	0x2114
    1fb0:	e5941030 	ldr	r1, [r4, #48]	; 0x30
    1fb4:	e28f00d8 	add	r0, pc, #216	; 0x2094
    1fb8:	eb000fb3 	bl	0x5e8c
    1fbc:	e1a00004 	mov	r0, r4
    1fc0:	ebfffb54 	bl	0xd18
    1fc4:	e3500000 	cmp	r0, #0
    1fc8:	0a000051 	beq	0x2114
    1fcc:	e5941030 	ldr	r1, [r4, #48]	; 0x30
    1fd0:	e28f00dc 	add	r0, pc, #220	; 0x20b4
    1fd4:	eb000fac 	bl	0x5e8c
    1fd8:	e5941030 	ldr	r1, [r4, #48]	; 0x30
    1fdc:	e28f0f42 	add	r0, pc, #264	; 0x20ec
    1fe0:	eb000fa9 	bl	0x5e8c
    1fe4:	e3e00010 	mvn	r0, #16
    1fe8:	e8bd8070 	pop	{r4, r5, r6, pc}
    1fec:	00ff8000 	rscseq	r8, pc, r0
    1ff0:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    1ff4:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    1ff8:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
    1ffc:	65732064 	ldrbvs	r2, [r3, #-100]!	; 0x64
    2000:	6920646e 	stmdbvs	r0!, {r1, r2, r3, r5, r6, sl, sp, lr}
    2004:	6f632066 	svcvs	0x00632066
    2008:	6620646e 	strtvs	r6, [r0], -lr, ror #8
    200c:	656c6961 	strbvs	r6, [ip, #-2401]!	; 0x961
    2010:	00000a64 	andeq	r0, r0, r4, ror #20
    2014:	00020020 	andeq	r0, r2, r0, lsr #32
    2018:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    201c:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    2020:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
    2024:	61482064 	cmpvs	r8, r4, rrx
    2028:	6e692073 	mcrvs	0, 3, r2, cr9, cr3, {3}
    202c:	000a7469 	andeq	r7, sl, r9, ror #8
    2030:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    2034:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    2038:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
    203c:	6f682064 	svcvs	0x00682064
    2040:	69207473 	stmdbvs	r0!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}
    2044:	2074696e 	rsbscs	r6, r4, lr, ror #18
    2048:	6c696166 	stfvse	f6, [r9], #-408	; 0xfffffe68
    204c:	000a6465 	andeq	r6, sl, r5, ror #8
    2050:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    2054:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    2058:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
    205c:	65722064 	ldrbvs	r2, [r2, #-100]!	; 0x64
    2060:	20746573 	rsbscs	r6, r4, r3, ror r5
    2064:	64726163 	ldrbtvs	r6, [r2], #-355	; 0x163
    2068:	69616620 	stmdbvs	r1!, {r5, r9, sl, sp, lr}^
    206c:	0a64656c 	beq	0x191b624
    2070:	00000000 	andeq	r0, r0, r0
    2074:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    2078:	2a203a5d 	bcs	0x8109f4
    207c:	72542a2a 	subsvc	r2, r4, #172032	; 0x2a000
    2080:	44532079 	ldrbmi	r2, [r3], #-121	; 0x79
    2084:	72616320 	rsbvc	r6, r1, #32, 6	; 0x80000000
    2088:	64252064 	strtvs	r2, [r5], #-100	; 0x64
    208c:	0a2a2a2a 	beq	0xa8c93c
    2090:	00000000 	andeq	r0, r0, r0
    2094:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    2098:	2a203a5d 	bcs	0x810a14
    209c:	72542a2a 	subsvc	r2, r4, #172032	; 0x2a000
    20a0:	4d4d2079 	stclmi	0, cr2, [sp, #-484]	; 0xfffffe1c
    20a4:	61632043 	cmnvs	r3, r3, asr #32
    20a8:	25206472 	strcs	r6, [r0, #-1138]!	; 0x472
    20ac:	2a2a2a64 	bcs	0xa8ca44
    20b0:	0000000a 	andeq	r0, r0, sl
    20b4:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    20b8:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    20bc:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
    20c0:	61432064 	cmpvs	r3, r4, rrx
    20c4:	64206472 	strtvs	r6, [r0], #-1138	; 0x472
    20c8:	6e206469 	cdpvs	4, 2, cr6, cr0, cr9, {3}
    20cc:	7220746f 	eorvc	r7, r0, #1862270976	; 0x6f000000
    20d0:	6f707365 	svcvs	0x00707365
    20d4:	7420646e 	strtvc	r6, [r0], #-1134	; 0x46e
    20d8:	6f76206f 	svcvs	0x0076206f
    20dc:	6761746c 	strbvs	r7, [r1, -ip, ror #8]!
    20e0:	65732065 	ldrbvs	r2, [r3, #-101]!	; 0x65
    20e4:	7463656c 	strbtvc	r6, [r3], #-1388	; 0x56c
    20e8:	00000a21 	andeq	r0, r0, r1, lsr #20
    20ec:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    20f0:	2a203a5d 	bcs	0x810a6c
    20f4:	44532a2a 	ldrbmi	r2, [r3], #-2602	; 0xa2a
    20f8:	434d4d2f 	movtmi	r4, #56623	; 0xdd2f
    20fc:	20642520 	rsbcs	r2, r4, r0, lsr #10
    2100:	74696e69 	strbtvc	r6, [r9], #-3689	; 0xe69
    2104:	72726520 	rsbsvc	r6, r2, #32, 10	; 0x8000000
    2108:	2121726f 	teqcs	r1, pc, ror #4
    210c:	2a2a2a21 	bcs	0xa8c998
    2110:	0000000a 	andeq	r0, r0, sl
    2114:	e1a00004 	mov	r0, r4
    2118:	ebfffce9 	bl	0x14c4
    211c:	e1b05000 	movs	r5, r0
    2120:	0a000005 	beq	0x213c
    2124:	e5941030 	ldr	r1, [r4, #48]	; 0x30
    2128:	e24f0044 	sub	r0, pc, #68	; 0x2174
    212c:	eb000f56 	bl	0x5e8c
    2130:	e584602c 	str	r6, [r4, #44]	; 0x2c
    2134:	e1a00005 	mov	r0, r5
    2138:	e8bd8070 	pop	{r4, r5, r6, pc}
    213c:	e3a00001 	mov	r0, #1
    2140:	e584002c 	str	r0, [r4, #44]	; 0x2c
    2144:	e5941030 	ldr	r1, [r4, #48]	; 0x30
    2148:	e28f0038 	add	r0, pc, #56	; 0x2188
    214c:	eaffff8a 	b	0x1f7c
    2150:	e1a02000 	mov	r2, r0
    2154:	e1a00001 	mov	r0, r1
    2158:	e59f104c 	ldr	r1, [pc, #76]	; 0x21ac
    215c:	e7810102 	str	r0, [r1, r2, lsl #2]
    2160:	e59010a4 	ldr	r1, [r0, #164]	; 0xa4
    2164:	e3510000 	cmp	r1, #0
    2168:	030f1fff 	movweq	r1, #65535	; 0xffff
    216c:	058010a4 	streq	r1, [r0, #164]	; 0xa4
    2170:	eaffff64 	b	0x1f08
    2174:	e59f2030 	ldr	r2, [pc, #48]	; 0x21ac
    2178:	e3a01000 	mov	r1, #0
    217c:	e7821100 	str	r1, [r2, r0, lsl #2]
    2180:	e1a00001 	mov	r0, r1
    2184:	e12fff1e 	bx	lr
    2188:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    218c:	2a203a5d 	bcs	0x810b08
    2190:	44532a2a 	ldrbmi	r2, [r3], #-2602	; 0xa2a
    2194:	434d4d2f 	movtmi	r4, #56623	; 0xdd2f
    2198:	20642520 	rsbcs	r2, r4, r0, lsr #10
    219c:	74696e69 	strbtvc	r6, [r9], #-3689	; 0xe69
    21a0:	214b4f20 	cmpcs	fp, r0, lsr #30
    21a4:	2a2a2121 	bcs	0xa8a630
    21a8:	00000a2a 	andeq	r0, r0, sl, lsr #20
    21ac:	00016c0c 	andeq	r6, r1, ip, lsl #24
    21b0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    21b4:	e59f230c 	ldr	r2, [pc, #780]	; 0x24c8
    21b8:	e0801100 	add	r1, r0, r0, lsl #2
    21bc:	e59f7308 	ldr	r7, [pc, #776]	; 0x24cc
    21c0:	e3500000 	cmp	r0, #0
    21c4:	e0824181 	add	r4, r2, r1, lsl #3
    21c8:	13a02001 	movne	r2, #1
    21cc:	12870f5e 	addne	r0, r7, #376	; 0x178
    21d0:	13a01008 	movne	r1, #8
    21d4:	0a000013 	beq	0x2228
    21d8:	eb001010 	bl	0x6220
    21dc:	e5940010 	ldr	r0, [r4, #16]
    21e0:	e5901000 	ldr	r1, [r0]
    21e4:	e3811c01 	orr	r1, r1, #256	; 0x100
    21e8:	e5801000 	str	r1, [r0]
    21ec:	e594000c 	ldr	r0, [r4, #12]
    21f0:	e5901000 	ldr	r1, [r0]
    21f4:	e3811c01 	orr	r1, r1, #256	; 0x100
    21f8:	e5801000 	str	r1, [r0]
    21fc:	e594001c 	ldr	r0, [r4, #28]
    2200:	e5901000 	ldr	r1, [r0]
    2204:	e3811805 	orr	r1, r1, #327680	; 0x50000
    2208:	e5801000 	str	r1, [r0]
    220c:	e5941014 	ldr	r1, [r4, #20]
    2210:	e3a00102 	mov	r0, #-2147483648	; 0x80000000
    2214:	e5810000 	str	r0, [r1]
    2218:	e59f02b0 	ldr	r0, [pc, #688]	; 0x24d0
    221c:	e5840008 	str	r0, [r4, #8]
    2220:	e3a00000 	mov	r0, #0
    2224:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    2228:	e59f12a8 	ldr	r1, [pc, #680]	; 0x24d8
    222c:	e59f02a0 	ldr	r0, [pc, #672]	; 0x24d4
    2230:	e5810000 	str	r0, [r1]
    2234:	e281101c 	add	r1, r1, #28
    2238:	e3000555 	movw	r0, #1365	; 0x555
    223c:	e5810000 	str	r0, [r1]
    2240:	e241500c 	sub	r5, r1, #12
    2244:	e3a0603f 	mov	r6, #63	; 0x3f
    2248:	e5856000 	str	r6, [r5]
    224c:	e3a00005 	mov	r0, #5
    2250:	eb000575 	bl	0x382c
    2254:	e3a00000 	mov	r0, #0
    2258:	e5850000 	str	r0, [r5]
    225c:	e3a00005 	mov	r0, #5
    2260:	eb000571 	bl	0x382c
    2264:	e5856000 	str	r6, [r5]
    2268:	e3a00005 	mov	r0, #5
    226c:	eb00056e 	bl	0x382c
    2270:	e2851e25 	add	r1, r5, #592	; 0x250
    2274:	e3a0000a 	mov	r0, #10
    2278:	e5810000 	str	r0, [r1]
    227c:	e28700f8 	add	r0, r7, #248	; 0xf8
    2280:	e3a02001 	mov	r2, #1
    2284:	e3a01008 	mov	r1, #8
    2288:	eaffffd2 	b	0x21d8
    228c:	e92d4010 	push	{r4, lr}
    2290:	e5902020 	ldr	r2, [r0, #32]
    2294:	e59f0240 	ldr	r0, [pc, #576]	; 0x24dc
    2298:	e59f1240 	ldr	r1, [pc, #576]	; 0x24e0
    229c:	e5923000 	ldr	r3, [r2]
    22a0:	e5831018 	str	r1, [r3, #24]
    22a4:	e5921000 	ldr	r1, [r2]
    22a8:	e5913018 	ldr	r3, [r1, #24]
    22ac:	e3130102 	tst	r3, #-2147483648	; 0x80000000
    22b0:	0a000002 	beq	0x22c0
    22b4:	e2500001 	subs	r0, r0, #1
    22b8:	2afffffa 	bcs	0x22a8
    22bc:	ea000004 	b	0x22d4
    22c0:	e3500000 	cmp	r0, #0
    22c4:	a5910038 	ldrge	r0, [r1, #56]	; 0x38
    22c8:	a5810038 	strge	r0, [r1, #56]	; 0x38
    22cc:	a3a00000 	movge	r0, #0
    22d0:	a8bd8010 	popge	{r4, pc}
    22d4:	e5921004 	ldr	r1, [r2, #4]
    22d8:	e28f0f81 	add	r0, pc, #516	; 0x24e4
    22dc:	eb000eea 	bl	0x5e8c
    22e0:	e3e00000 	mvn	r0, #0
    22e4:	e8bd8010 	pop	{r4, pc}
    22e8:	e92d4070 	push	{r4, r5, r6, lr}
    22ec:	e5901044 	ldr	r1, [r0, #68]	; 0x44
    22f0:	e1a05000 	mov	r5, r0
    22f4:	e5904020 	ldr	r4, [r0, #32]
    22f8:	e3a06001 	mov	r6, #1
    22fc:	e3510000 	cmp	r1, #0
    2300:	0a000006 	beq	0x2320
    2304:	eb000201 	bl	0x2b10
    2308:	e3500000 	cmp	r0, #0
    230c:	0a000003 	beq	0x2320
    2310:	e28f0e1f 	add	r0, pc, #496	; 0x2508
    2314:	eb000edc 	bl	0x5e8c
    2318:	e5846020 	str	r6, [r4, #32]
    231c:	e8bd8070 	pop	{r4, r5, r6, pc}
    2320:	e5950040 	ldr	r0, [r5, #64]	; 0x40
    2324:	e3500008 	cmp	r0, #8
    2328:	03a00002 	moveq	r0, #2
    232c:	0a000004 	beq	0x2344
    2330:	e3500004 	cmp	r0, #4
    2334:	05940000 	ldreq	r0, [r4]
    2338:	0580600c 	streq	r6, [r0, #12]
    233c:	13a00000 	movne	r0, #0
    2340:	08bd8070 	popeq	{r4, r5, r6, pc}
    2344:	e5941000 	ldr	r1, [r4]
    2348:	e581000c 	str	r0, [r1, #12]
    234c:	e8bd8070 	pop	{r4, r5, r6, pc}
    2350:	e92d4070 	push	{r4, r5, r6, lr}
    2354:	e5904020 	ldr	r4, [r0, #32]
    2358:	e3a00007 	mov	r0, #7
    235c:	e5941000 	ldr	r1, [r4]
    2360:	e5810000 	str	r0, [r1]
    2364:	e5940000 	ldr	r0, [r4]
    2368:	e5901000 	ldr	r1, [r0]
    236c:	e3110007 	tst	r1, #7
    2370:	1afffffc 	bne	0x2368
    2374:	e3a05001 	mov	r5, #1
    2378:	e5805078 	str	r5, [r0, #120]	; 0x78
    237c:	e5941000 	ldr	r1, [r4]
    2380:	e3a00000 	mov	r0, #0
    2384:	e5810078 	str	r0, [r1, #120]	; 0x78
    2388:	e1a00005 	mov	r0, r5
    238c:	eb000526 	bl	0x382c
    2390:	e5940000 	ldr	r0, [r4]
    2394:	e5805078 	str	r5, [r0, #120]	; 0x78
    2398:	e3a00000 	mov	r0, #0
    239c:	e8bd8070 	pop	{r4, r5, r6, pc}
    23a0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    23a4:	e2812008 	add	r2, r1, #8
    23a8:	e5907020 	ldr	r7, [r0, #32]
    23ac:	e591e000 	ldr	lr, [r1]
    23b0:	e8920005 	ldm	r2, {r0, r2}
    23b4:	e5973024 	ldr	r3, [r7, #36]	; 0x24
    23b8:	e00c0092 	mul	ip, r2, r0
    23bc:	e3a02000 	mov	r2, #0
    23c0:	e3a00000 	mov	r0, #0
    23c4:	e1a06002 	mov	r6, r2
    23c8:	e1a057ac 	lsr	r5, ip, #15
    23cc:	e7dfc79f 	bfc	ip, #15, #17
    23d0:	e35c0000 	cmp	ip, #0
    23d4:	12855001 	addne	r5, r5, #1
    23d8:	0308c000 	movweq	ip, #32768	; 0x8000
    23dc:	ea00001e 	b	0x245c
    23e0:	e0834200 	add	r4, r3, r0, lsl #4
    23e4:	e3a0814a 	mov	r8, #-2147483630	; 0x80000012
    23e8:	e3550001 	cmp	r5, #1
    23ec:	e5846000 	str	r6, [r4]
    23f0:	e5846004 	str	r6, [r4, #4]
    23f4:	e5846008 	str	r6, [r4, #8]
    23f8:	e584600c 	str	r6, [r4, #12]
    23fc:	e7838200 	str	r8, [r3, r0, lsl #4]
    2400:	9a000004 	bls	0x2418
    2404:	e2458001 	sub	r8, r5, #1
    2408:	e1520008 	cmp	r2, r8
    240c:	13088000 	movwne	r8, #32768	; 0x8000
    2410:	11c480b4 	strhne	r8, [r4, #4]
    2414:	1a000000 	bne	0x241c
    2418:	e1c4c0b4 	strh	ip, [r4, #4]
    241c:	e3520000 	cmp	r2, #0
    2420:	e08e8782 	add	r8, lr, r2, lsl #15
    2424:	e5848008 	str	r8, [r4, #8]
    2428:	03a0816a 	moveq	r8, #-2147483622	; 0x8000001a
    242c:	07838200 	streq	r8, [r3, r0, lsl #4]
    2430:	e2458001 	sub	r8, r5, #1
    2434:	e1520008 	cmp	r2, r8
    2438:	12848010 	addne	r8, r4, #16
    243c:	1584800c 	strne	r8, [r4, #12]
    2440:	1a000003 	bne	0x2454
    2444:	e7934200 	ldr	r4, [r3, r0, lsl #4]
    2448:	e3c44002 	bic	r4, r4, #2
    244c:	e3844024 	orr	r4, r4, #36	; 0x24
    2450:	e7834200 	str	r4, [r3, r0, lsl #4]
    2454:	e2822001 	add	r2, r2, #1
    2458:	e2800001 	add	r0, r0, #1
    245c:	e1550002 	cmp	r5, r2
    2460:	8affffde 	bhi	0x23e0
    2464:	e5970000 	ldr	r0, [r7]
    2468:	e5902000 	ldr	r2, [r0]
    246c:	e3822024 	orr	r2, r2, #36	; 0x24
    2470:	e5802000 	str	r2, [r0]
    2474:	e5972000 	ldr	r2, [r7]
    2478:	e3a00001 	mov	r0, #1
    247c:	e5820080 	str	r0, [r2, #128]	; 0x80
    2480:	e3a00082 	mov	r0, #130	; 0x82
    2484:	e5972000 	ldr	r2, [r7]
    2488:	e5820080 	str	r0, [r2, #128]	; 0x80
    248c:	e5972000 	ldr	r2, [r7]
    2490:	e592008c 	ldr	r0, [r2, #140]	; 0x8c
    2494:	e5911004 	ldr	r1, [r1, #4]
    2498:	e3c00003 	bic	r0, r0, #3
    249c:	e3110002 	tst	r1, #2
    24a0:	13800001 	orrne	r0, r0, #1
    24a4:	03800002 	orreq	r0, r0, #2
    24a8:	e582008c 	str	r0, [r2, #140]	; 0x8c
    24ac:	e5970000 	ldr	r0, [r7]
    24b0:	e5803084 	str	r3, [r0, #132]	; 0x84
    24b4:	e5971000 	ldr	r1, [r7]
    24b8:	e59f0068 	ldr	r0, [pc, #104]	; 0x2528
    24bc:	e5810040 	str	r0, [r1, #64]	; 0x40
    24c0:	e3a00000 	mov	r0, #0
    24c4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    24c8:	00016ee0 	andeq	r6, r1, r0, ror #29
    24cc:	00010000 	andeq	r0, r1, r0
    24d0:	016e3600 	cmneq	lr, r0, lsl #12
    24d4:	00111111 	andseq	r1, r1, r1, lsl r1
    24d8:	060008b4 			; <UNDEFINED> instruction: 0x060008b4
    24dc:	000fffff 	strdeq	pc, [pc], -pc	; <UNPREDICTABLE>
    24e0:	80202000 	eorhi	r2, r0, r0
    24e4:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    24e8:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    24ec:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
    24f0:	70752064 	rsbsvc	r2, r5, r4, rrx
    24f4:	65746164 	ldrbvs	r6, [r4, #-356]!	; 0x164
    24f8:	6b6c6320 	blvs	0x1b1b180
    24fc:	69616620 	stmdbvs	r1!, {r5, r9, sl, sp, lr}^
    2500:	0a64656c 	beq	0x191bab8
    2504:	00000000 	andeq	r0, r0, r0
    2508:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    250c:	2a203a5d 	bcs	0x810e88
    2510:	75202a2a 	strvc	r2, [r0, #-2602]!	; 0xa2a
    2514:	74616470 	strbtvc	r6, [r1], #-1136	; 0x470
    2518:	6c632065 	stclvs	0, cr2, [r3], #-404	; 0xfffffe6c
    251c:	206b636f 	rsbcs	r6, fp, pc, ror #6
    2520:	6c696166 	stfvse	f6, [r9], #-408	; 0xfffffe68
    2524:	000a6465 	andeq	r6, sl, r5, ror #8
    2528:	20070008 	andcs	r0, r7, r8
    252c:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    2530:	e3a06000 	mov	r6, #0
    2534:	e1a07001 	mov	r7, r1
    2538:	e3a05102 	mov	r5, #-2147483648	; 0x80000000
    253c:	e1a08002 	mov	r8, r2
    2540:	e59d0000 	ldr	r0, [sp]
    2544:	e1a09006 	mov	r9, r6
    2548:	e1a0a006 	mov	sl, r6
    254c:	e5904020 	ldr	r4, [r0, #32]
    2550:	e5940020 	ldr	r0, [r4, #32]
    2554:	e3500000 	cmp	r0, #0
    2558:	0a000003 	beq	0x256c
    255c:	e5941004 	ldr	r1, [r4, #4]
    2560:	e28f0fc2 	add	r0, pc, #776	; 0x2870
    2564:	eb000e48 	bl	0x5e8c
    2568:	ea0000be 	b	0x2868
    256c:	e5970000 	ldr	r0, [r7]
    2570:	e350000c 	cmp	r0, #12
    2574:	0a0000fe 	beq	0x2974
    2578:	e3500000 	cmp	r0, #0
    257c:	e5970004 	ldr	r0, [r7, #4]
    2580:	059f5318 	ldreq	r5, [pc, #792]	; 0x28a0
    2584:	e3100001 	tst	r0, #1
    2588:	13855040 	orrne	r5, r5, #64	; 0x40
    258c:	e3100002 	tst	r0, #2
    2590:	13855080 	orrne	r5, r5, #128	; 0x80
    2594:	e3100004 	tst	r0, #4
    2598:	13855c01 	orrne	r5, r5, #256	; 0x100
    259c:	e3580000 	cmp	r8, #0
    25a0:	0a000015 	beq	0x25fc
    25a4:	e5980000 	ldr	r0, [r8]
    25a8:	e3100003 	tst	r0, #3
    25ac:	0a000004 	beq	0x25c4
    25b0:	e5941004 	ldr	r1, [r4, #4]
    25b4:	e28f0fba 	add	r0, pc, #744	; 0x28a4
    25b8:	eb000e33 	bl	0x5e8c
    25bc:	e3e06000 	mvn	r6, #0
    25c0:	ea000095 	b	0x281c
    25c4:	e5980004 	ldr	r0, [r8, #4]
    25c8:	e3855c22 	orr	r5, r5, #8704	; 0x2200
    25cc:	e5941000 	ldr	r1, [r4]
    25d0:	e3100002 	tst	r0, #2
    25d4:	e5980008 	ldr	r0, [r8, #8]
    25d8:	13855b01 	orrne	r5, r5, #1024	; 0x400
    25dc:	e3500001 	cmp	r0, #1
    25e0:	e598000c 	ldr	r0, [r8, #12]
    25e4:	83855a01 	orrhi	r5, r5, #4096	; 0x1000
    25e8:	e5810010 	str	r0, [r1, #16]
    25ec:	e1c800d8 	ldrd	r0, [r8, #8]
    25f0:	e0000190 	mul	r0, r0, r1
    25f4:	e5941000 	ldr	r1, [r4]
    25f8:	e5810014 	str	r0, [r1, #20]
    25fc:	e5941000 	ldr	r1, [r4]
    2600:	e5970008 	ldr	r0, [r7, #8]
    2604:	e581001c 	str	r0, [r1, #28]
    2608:	e3580000 	cmp	r8, #0
    260c:	e30bbbc2 	movw	fp, #48066	; 0xbbc2
    2610:	0a000010 	beq	0x2658
    2614:	e1c800d8 	ldrd	r0, [r8, #8]
    2618:	e00a0091 	mul	sl, r1, r0
    261c:	e35a0c02 	cmp	sl, #512	; 0x200
    2620:	9a000011 	bls	0x266c
    2624:	e5940000 	ldr	r0, [r4]
    2628:	e3a09001 	mov	r9, #1
    262c:	e5901000 	ldr	r1, [r0]
    2630:	e3c11102 	bic	r1, r1, #-2147483648	; 0x80000000
    2634:	e5801000 	str	r1, [r0]
    2638:	e59d0000 	ldr	r0, [sp]
    263c:	e1a01002 	mov	r1, r2
    2640:	ebffff56 	bl	0x23a0
    2644:	e5942000 	ldr	r2, [r4]
    2648:	e5971000 	ldr	r1, [r7]
    264c:	e1811005 	orr	r1, r1, r5
    2650:	e5821018 	str	r1, [r2, #24]
    2654:	ea00000f 	b	0x2698
    2658:	e5941000 	ldr	r1, [r4]
    265c:	e5970000 	ldr	r0, [r7]
    2660:	e1800005 	orr	r0, r0, r5
    2664:	e5810018 	str	r0, [r1, #24]
    2668:	ea000014 	b	0x26c0
    266c:	e5940000 	ldr	r0, [r4]
    2670:	e5901000 	ldr	r1, [r0]
    2674:	e3811102 	orr	r1, r1, #-2147483648	; 0x80000000
    2678:	e5801000 	str	r1, [r0]
    267c:	e5941000 	ldr	r1, [r4]
    2680:	e5970000 	ldr	r0, [r7]
    2684:	e1800005 	orr	r0, r0, r5
    2688:	e5810018 	str	r0, [r1, #24]
    268c:	e1a01002 	mov	r1, r2
    2690:	e59d0000 	ldr	r0, [sp]
    2694:	eb0001a2 	bl	0x2d24
    2698:	e3500000 	cmp	r0, #0
    269c:	0a000007 	beq	0x26c0
    26a0:	e5941004 	ldr	r1, [r4, #4]
    26a4:	e28f0e22 	add	r0, pc, #544	; 0x28cc
    26a8:	eb000df7 	bl	0x5e8c
    26ac:	e5940000 	ldr	r0, [r4]
    26b0:	e5900038 	ldr	r0, [r0, #56]	; 0x38
    26b4:	e010600b 	ands	r6, r0, fp
    26b8:	03e06000 	mvneq	r6, #0
    26bc:	ea000046 	b	0x27dc
    26c0:	e5940000 	ldr	r0, [r4]
    26c4:	e3e024ff 	mvn	r2, #-16777216	; 0xff000000
    26c8:	e5901038 	ldr	r1, [r0, #56]	; 0x38
    26cc:	e2522001 	subs	r2, r2, #1
    26d0:	3a000001 	bcc	0x26dc
    26d4:	e111000b 	tst	r1, fp
    26d8:	0a000007 	beq	0x26fc
    26dc:	e011600b 	ands	r6, r1, fp
    26e0:	e5972000 	ldr	r2, [r7]
    26e4:	03e06000 	mvneq	r6, #0
    26e8:	e5941004 	ldr	r1, [r4, #4]
    26ec:	e28f0f7e 	add	r0, pc, #504	; 0x28ec
    26f0:	e1a03006 	mov	r3, r6
    26f4:	eb000de4 	bl	0x5e8c
    26f8:	ea000035 	b	0x27d4
    26fc:	e3110004 	tst	r1, #4
    2700:	0afffff0 	beq	0x26c8
    2704:	e3580000 	cmp	r8, #0
    2708:	0a000014 	beq	0x2760
    270c:	e3590000 	cmp	r9, #0
    2710:	106a280a 	rsbne	r2, sl, sl, lsl #16
    2714:	030f2fff 	movweq	r2, #65535	; 0xffff
    2718:	e5901038 	ldr	r1, [r0, #56]	; 0x38
    271c:	e2522001 	subs	r2, r2, #1
    2720:	3a000001 	bcc	0x272c
    2724:	e111000b 	tst	r1, fp
    2728:	0a000006 	beq	0x2748
    272c:	e011600b 	ands	r6, r1, fp
    2730:	e5941004 	ldr	r1, [r4, #4]
    2734:	03e06000 	mvneq	r6, #0
    2738:	e28f0f75 	add	r0, pc, #468	; 0x2914
    273c:	e1a02006 	mov	r2, r6
    2740:	eb000dd1 	bl	0x5e8c
    2744:	ea000022 	b	0x27d4
    2748:	e5983008 	ldr	r3, [r8, #8]
    274c:	e3530001 	cmp	r3, #1
    2750:	82011901 	andhi	r1, r1, #16384	; 0x4000
    2754:	92011008 	andls	r1, r1, #8
    2758:	e3510000 	cmp	r1, #0
    275c:	0affffed 	beq	0x2718
    2760:	e5973004 	ldr	r3, [r7, #4]
    2764:	e3130008 	tst	r3, #8
    2768:	13e014fb 	mvnne	r1, #-83886080	; 0xfb000000
    276c:	0a000004 	beq	0x2784
    2770:	e590203c 	ldr	r2, [r0, #60]	; 0x3c
    2774:	e2511001 	subs	r1, r1, #1
    2778:	3a000011 	bcc	0x27c4
    277c:	e3120c02 	tst	r2, #512	; 0x200
    2780:	1afffffa 	bne	0x2770
    2784:	e3130002 	tst	r3, #2
    2788:	05900020 	ldreq	r0, [r0, #32]
    278c:	0587000c 	streq	r0, [r7, #12]
    2790:	0a00000f 	beq	0x27d4
    2794:	e590002c 	ldr	r0, [r0, #44]	; 0x2c
    2798:	e587000c 	str	r0, [r7, #12]
    279c:	e5940000 	ldr	r0, [r4]
    27a0:	e5900028 	ldr	r0, [r0, #40]	; 0x28
    27a4:	e5870010 	str	r0, [r7, #16]
    27a8:	e5940000 	ldr	r0, [r4]
    27ac:	e5900024 	ldr	r0, [r0, #36]	; 0x24
    27b0:	e5870014 	str	r0, [r7, #20]
    27b4:	e5940000 	ldr	r0, [r4]
    27b8:	e5900020 	ldr	r0, [r0, #32]
    27bc:	e5870018 	str	r0, [r7, #24]
    27c0:	ea000003 	b	0x27d4
    27c4:	e5941004 	ldr	r1, [r4, #4]
    27c8:	e3e06000 	mvn	r6, #0
    27cc:	e28f0f59 	add	r0, pc, #356	; 0x2938
    27d0:	eb000dad 	bl	0x5e8c
    27d4:	e3580000 	cmp	r8, #0
    27d8:	0a00000d 	beq	0x2814
    27dc:	e3590000 	cmp	r9, #0
    27e0:	0a00000b 	beq	0x2814
    27e4:	e5940000 	ldr	r0, [r4]
    27e8:	e5901088 	ldr	r1, [r0, #136]	; 0x88
    27ec:	e5801088 	str	r1, [r0, #136]	; 0x88
    27f0:	e3a00000 	mov	r0, #0
    27f4:	e5941000 	ldr	r1, [r4]
    27f8:	e581008c 	str	r0, [r1, #140]	; 0x8c
    27fc:	e5941000 	ldr	r1, [r4]
    2800:	e5810080 	str	r0, [r1, #128]	; 0x80
    2804:	e5940000 	ldr	r0, [r4]
    2808:	e5901000 	ldr	r1, [r0]
    280c:	e3c11020 	bic	r1, r1, #32
    2810:	e5801000 	str	r1, [r0]
    2814:	e3560000 	cmp	r6, #0
    2818:	0a00000d 	beq	0x2854
    281c:	e5941000 	ldr	r1, [r4]
    2820:	e3a00007 	mov	r0, #7
    2824:	e5810000 	str	r0, [r1]
    2828:	e5940000 	ldr	r0, [r4]
    282c:	e5901000 	ldr	r1, [r0]
    2830:	e3110007 	tst	r1, #7
    2834:	1afffffc 	bne	0x282c
    2838:	e59d0000 	ldr	r0, [sp]
    283c:	ebfffe92 	bl	0x228c
    2840:	e5972000 	ldr	r2, [r7]
    2844:	e28f0f42 	add	r0, pc, #264	; 0x2954
    2848:	e5941004 	ldr	r1, [r4, #4]
    284c:	e1a03006 	mov	r3, r6
    2850:	eb000d8d 	bl	0x5e8c
    2854:	e5941000 	ldr	r1, [r4]
    2858:	e3e00000 	mvn	r0, #0
    285c:	e5810038 	str	r0, [r1, #56]	; 0x38
    2860:	e3560000 	cmp	r6, #0
    2864:	0a000042 	beq	0x2974
    2868:	e3e00000 	mvn	r0, #0
    286c:	e8bd8ffe 	pop	{r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    2870:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    2874:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    2878:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
    287c:	6f462064 	svcvs	0x00462064
    2880:	20646e75 	rsbcs	r6, r4, r5, ror lr
    2884:	61746166 	cmnvs	r4, r6, ror #2
    2888:	7265206c 	rsbvc	r2, r5, #108	; 0x6c
    288c:	6f732c72 	svcvs	0x00732c72
    2890:	206f6e20 	rsbcs	r6, pc, r0, lsr #28
    2894:	646e6573 	strbtvs	r6, [lr], #-1395	; 0x573
    2898:	646d6320 	strbtvs	r6, [sp], #-800	; 0x320
    289c:	0000000a 	andeq	r0, r0, sl
    28a0:	80008000 	andhi	r8, r0, r0
    28a4:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    28a8:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    28ac:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
    28b0:	65642064 	strbvs	r2, [r4, #-100]!	; 0x64
    28b4:	69207473 	stmdbvs	r0!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}
    28b8:	6f6e2073 	svcvs	0x006e2073
    28bc:	20342074 	eorscs	r2, r4, r4, ror r0
    28c0:	65747962 	ldrbvs	r7, [r4, #-2402]!	; 0x962
    28c4:	696c6120 	stmdbvs	ip!, {r5, r8, sp, lr}^
    28c8:	000a6e67 	andeq	r6, sl, r7, ror #28
    28cc:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    28d0:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    28d4:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
    28d8:	72542064 	subsvc	r2, r4, #100	; 0x64
    28dc:	66736e61 	ldrbtvs	r6, [r3], -r1, ror #28
    28e0:	66207265 	strtvs	r7, [r0], -r5, ror #4
    28e4:	656c6961 	strbvs	r6, [ip, #-2401]!	; 0x961
    28e8:	00000a64 	andeq	r0, r0, r4, ror #20
    28ec:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    28f0:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    28f4:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
    28f8:	6d632064 	stclvs	0, cr2, [r3, #-400]!	; 0xfffffe70
    28fc:	64252064 	strtvs	r2, [r5], #-100	; 0x64
    2900:	6d697420 	cfstrdvs	mvd7, [r9, #-128]!	; 0xffffff80
    2904:	74756f65 	ldrbtvc	r6, [r5], #-3941	; 0xf65
    2908:	7265202c 	rsbvc	r2, r5, #44	; 0x2c
    290c:	78252072 	stmdavc	r5!, {r1, r4, r5, r6, sp}
    2910:	0000000a 	andeq	r0, r0, sl
    2914:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    2918:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    291c:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
    2920:	61642064 	cmnvs	r4, r4, rrx
    2924:	74206174 	strtvc	r6, [r0], #-372	; 0x174
    2928:	6f656d69 	svcvs	0x00656d69
    292c:	202c7475 	eorcs	r7, ip, r5, ror r4
    2930:	20727265 	rsbscs	r7, r2, r5, ror #4
    2934:	000a7825 	andeq	r7, sl, r5, lsr #16
    2938:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    293c:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    2940:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
    2944:	75622064 	strbvc	r2, [r2, #-100]!	; 0x64
    2948:	74207973 	strtvc	r7, [r0], #-2419	; 0x973
    294c:	6f656d69 	svcvs	0x00656d69
    2950:	000a7475 	andeq	r7, sl, r5, ror r4
    2954:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    2958:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    295c:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
    2960:	6d632064 	stclvs	0, cr2, [r3, #-400]!	; 0xfffffe70
    2964:	64252064 	strtvs	r2, [r5], #-100	; 0x64
    2968:	72726520 	rsbsvc	r6, r2, #32, 10	; 0x8000000
    296c:	0a782520 	beq	0x1e0bdf4
    2970:	00000000 	andeq	r0, r0, r0
    2974:	e3a00000 	mov	r0, #0
    2978:	e8bd8ffe 	pop	{r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    297c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    2980:	e1a06000 	mov	r6, r0
    2984:	e1a07001 	mov	r7, r1
    2988:	e28f1f93 	add	r1, pc, #588	; 0x2bdc
    298c:	e28f0f97 	add	r0, pc, #604	; 0x2bf0
    2990:	eb000d3d 	bl	0x5e8c
    2994:	e0860086 	add	r0, r6, r6, lsl #1
    2998:	e0801186 	add	r1, r0, r6, lsl #3
    299c:	e59f0268 	ldr	r0, [pc, #616]	; 0x2c0c
    29a0:	e0804201 	add	r4, r0, r1, lsl #4
    29a4:	e3a010b0 	mov	r1, #176	; 0xb0
    29a8:	e1a00004 	mov	r0, r4
    29ac:	fa001036 	blx	0x6a8c
    29b0:	e51f04f0 	ldr	r0, [pc, #-1264]	; 0x24c8
    29b4:	e0861106 	add	r1, r6, r6, lsl #2
    29b8:	e0805181 	add	r5, r0, r1, lsl #3
    29bc:	e3a01028 	mov	r1, #40	; 0x28
    29c0:	e1a00005 	mov	r0, r5
    29c4:	fa001030 	blx	0x6a8c
    29c8:	e28f1d09 	add	r1, pc, #576	; 0x2c10
    29cc:	e1a00004 	mov	r0, r4
    29d0:	fb000fa4 	blx	0x686a
    29d4:	e59f0244 	ldr	r0, [pc, #580]	; 0x2c20
    29d8:	e3570004 	cmp	r7, #4
    29dc:	e5840098 	str	r0, [r4, #152]	; 0x98
    29e0:	e59f023c 	ldr	r0, [pc, #572]	; 0x2c24
    29e4:	e584009c 	str	r0, [r4, #156]	; 0x9c
    29e8:	e59f0238 	ldr	r0, [pc, #568]	; 0x2c28
    29ec:	e58400a0 	str	r0, [r4, #160]	; 0xa0
    29f0:	e3a008fe 	mov	r0, #16646144	; 0xfe0000
    29f4:	e5840024 	str	r0, [r4, #36]	; 0x24
    29f8:	e3000811 	movw	r0, #2065	; 0x811
    29fc:	e584004c 	str	r0, [r4, #76]	; 0x4c
    2a00:	03000911 	movweq	r0, #2321	; 0x911
    2a04:	e5845020 	str	r5, [r4, #32]
    2a08:	0584004c 	streq	r0, [r4, #76]	; 0x4c
    2a0c:	e1b01006 	movs	r1, r6
    2a10:	e59f0214 	ldr	r0, [pc, #532]	; 0x2c2c
    2a14:	e5840034 	str	r0, [r4, #52]	; 0x34
    2a18:	e59f0210 	ldr	r0, [pc, #528]	; 0x2c30
    2a1c:	e5840038 	str	r0, [r4, #56]	; 0x38
    2a20:	e3a00442 	mov	r0, #1107296256	; 0x42000000
    2a24:	e5846030 	str	r6, [r4, #48]	; 0x30
    2a28:	e5850024 	str	r0, [r5, #36]	; 0x24
    2a2c:	e59f0200 	ldr	r0, [pc, #512]	; 0x2c34
    2a30:	e0800601 	add	r0, r0, r1, lsl #12
    2a34:	e5850000 	str	r0, [r5]
    2a38:	e2800c02 	add	r0, r0, #512	; 0x200
    2a3c:	e5850018 	str	r0, [r5, #24]
    2a40:	e59f01f0 	ldr	r0, [pc, #496]	; 0x2c38
    2a44:	e0800101 	add	r0, r0, r1, lsl #2
    2a48:	e585001c 	str	r0, [r5, #28]
    2a4c:	e59f01e8 	ldr	r0, [pc, #488]	; 0x2c3c
    2a50:	e5850010 	str	r0, [r5, #16]
    2a54:	e2800020 	add	r0, r0, #32
    2a58:	e585000c 	str	r0, [r5, #12]
    2a5c:	02400e19 	subeq	r0, r0, #400	; 0x190
    2a60:	0a000009 	beq	0x2a8c
    2a64:	e3510002 	cmp	r1, #2
    2a68:	059f01d0 	ldreq	r0, [pc, #464]	; 0x2c40
    2a6c:	0a000006 	beq	0x2a8c
    2a70:	e28f0f73 	add	r0, pc, #460	; 0x2c44
    2a74:	eb000d04 	bl	0x5e8c
    2a78:	e28f0e1e 	add	r0, pc, #480	; 0x2c60
    2a7c:	e1a01006 	mov	r1, r6
    2a80:	eb000d01 	bl	0x5e8c
    2a84:	e3e00000 	mvn	r0, #0
    2a88:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    2a8c:	e5a56004 	str	r6, [r5, #4]!
    2a90:	e3a01001 	mov	r1, #1
    2a94:	e5850010 	str	r0, [r5, #16]
    2a98:	e1a00006 	mov	r0, r6
    2a9c:	ebfffdc3 	bl	0x21b0
    2aa0:	e1a01004 	mov	r1, r4
    2aa4:	e1a00006 	mov	r0, r6
    2aa8:	ebfffda8 	bl	0x2150
    2aac:	e3500000 	cmp	r0, #0
    2ab0:	a59400a8 	ldrge	r0, [r4, #168]	; 0xa8
    2ab4:	b28f0f72 	addlt	r0, pc, #456	; 0x2c84
    2ab8:	b1a01006 	movlt	r1, r6
    2abc:	baffffef 	blt	0x2a80
    2ac0:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    2ac4:	e92d4010 	push	{r4, lr}
    2ac8:	e1a04000 	mov	r4, r0
    2acc:	e3a01000 	mov	r1, #0
    2ad0:	ebfffdb6 	bl	0x21b0
    2ad4:	e1a00004 	mov	r0, r4
    2ad8:	ebfffda5 	bl	0x2174
    2adc:	e0840084 	add	r0, r4, r4, lsl #1
    2ae0:	e59f1124 	ldr	r1, [pc, #292]	; 0x2c0c
    2ae4:	e0800184 	add	r0, r0, r4, lsl #3
    2ae8:	e0810200 	add	r0, r1, r0, lsl #4
    2aec:	e3a010b0 	mov	r1, #176	; 0xb0
    2af0:	fa000fe5 	blx	0x6a8c
    2af4:	e51f1634 	ldr	r1, [pc, #-1588]	; 0x24c8
    2af8:	e0840104 	add	r0, r4, r4, lsl #2
    2afc:	e0810180 	add	r0, r1, r0, lsl #3
    2b00:	e3a01028 	mov	r1, #40	; 0x28
    2b04:	fa000fe0 	blx	0x6a8c
    2b08:	e3a00000 	mov	r0, #0
    2b0c:	e8bd8010 	pop	{r4, pc}
    2b10:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    2b14:	e5904020 	ldr	r4, [r0, #32]
    2b18:	e1a07000 	mov	r7, r0
    2b1c:	e1a06001 	mov	r6, r1
    2b20:	e5940000 	ldr	r0, [r4]
    2b24:	e5901004 	ldr	r1, [r0, #4]
    2b28:	e3c15801 	bic	r5, r1, #65536	; 0x10000
    2b2c:	e5805004 	str	r5, [r0, #4]
    2b30:	e1a00007 	mov	r0, r7
    2b34:	ebfffdd4 	bl	0x228c
    2b38:	e3500000 	cmp	r0, #0
    2b3c:	15941004 	ldrne	r1, [r4, #4]
    2b40:	128f0f57 	addne	r0, pc, #348	; 0x2ca4
    2b44:	0a000002 	beq	0x2b54
    2b48:	eb000ccf 	bl	0x5e8c
    2b4c:	e3e00000 	mvn	r0, #0
    2b50:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    2b54:	e5941014 	ldr	r1, [r4, #20]
    2b58:	e3a00000 	mov	r0, #0
    2b5c:	e5810000 	str	r0, [r1]
    2b60:	e59f00c4 	ldr	r0, [pc, #196]	; 0x2c2c
    2b64:	e1560000 	cmp	r6, r0
    2b68:	859f0158 	ldrhi	r0, [pc, #344]	; 0x2cc8
    2b6c:	e5840008 	str	r0, [r4, #8]
    2b70:	83a00001 	movhi	r0, #1
    2b74:	e5941014 	ldr	r1, [r4, #20]
    2b78:	959f014c 	ldrls	r0, [pc, #332]	; 0x2ccc
    2b7c:	e5810000 	str	r0, [r1]
    2b80:	e5940014 	ldr	r0, [r4, #20]
    2b84:	e5901000 	ldr	r1, [r0]
    2b88:	e3811102 	orr	r1, r1, #-2147483648	; 0x80000000
    2b8c:	e5801000 	str	r1, [r0]
    2b90:	e5940000 	ldr	r0, [r4]
    2b94:	e3c550ff 	bic	r5, r5, #255	; 0xff
    2b98:	e5805004 	str	r5, [r0, #4]
    2b9c:	e1a00007 	mov	r0, r7
    2ba0:	ebfffdb9 	bl	0x228c
    2ba4:	e3500000 	cmp	r0, #0
    2ba8:	15941004 	ldrne	r1, [r4, #4]
    2bac:	128f0f47 	addne	r0, pc, #284	; 0x2cd0
    2bb0:	1affffe4 	bne	0x2b48
    2bb4:	e5941000 	ldr	r1, [r4]
    2bb8:	e3850803 	orr	r0, r5, #196608	; 0x30000
    2bbc:	e5810004 	str	r0, [r1, #4]
    2bc0:	e1a00007 	mov	r0, r7
    2bc4:	ebfffdb0 	bl	0x228c
    2bc8:	e3500000 	cmp	r0, #0
    2bcc:	15941004 	ldrne	r1, [r4, #4]
    2bd0:	128f0f49 	addne	r0, pc, #292	; 0x2cfc
    2bd4:	1affffdb 	bne	0x2b48
    2bd8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    2bdc:	34313032 	ldrtcc	r3, [r1], #-50	; 0x32
    2be0:	2d36302d 	ldccs	0, cr3, [r6, #-180]!	; 0xffffff4c
    2be4:	31203530 	teqcc	r0, r0, lsr r5
    2be8:	38313a34 	ldmdacc	r1!, {r2, r4, r5, r9, fp, ip, sp}
    2bec:	00000000 	andeq	r0, r0, r0
    2bf0:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    2bf4:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    2bf8:	6420636d 	strtvs	r6, [r0], #-877	; 0x36d
    2bfc:	65766972 	ldrbvs	r6, [r6, #-2418]!	; 0x972
    2c00:	65762072 	ldrbvs	r2, [r6, #-114]!	; 0x72
    2c04:	73252072 	teqvc	r5, #114	; 0x72
    2c08:	0000000a 	andeq	r0, r0, sl
    2c0c:	00016c20 	andeq	r6, r1, r0, lsr #24
    2c10:	584e5553 	stmdapl	lr, {r0, r1, r4, r6, r8, sl, ip, lr}^
    2c14:	44532049 	ldrbmi	r2, [r3], #-73	; 0x49
    2c18:	434d4d2f 	movtmi	r4, #56623	; 0xdd2f
    2c1c:	00000000 	andeq	r0, r0, r0
    2c20:	0001252c 	andeq	r2, r1, ip, lsr #10
    2c24:	000122e8 	andeq	r2, r1, r8, ror #5
    2c28:	00012350 	andeq	r2, r1, r0, asr r3
    2c2c:	00061a80 	andeq	r1, r6, r0, lsl #21
    2c30:	017d7840 	cmneq	sp, r0, asr #16
    2c34:	01c0f000 	biceq	pc, r0, r0
    2c38:	01c13000 	biceq	r3, r1, r0
    2c3c:	06000580 	streq	r0, [r0], -r0, lsl #11
    2c40:	06000418 			; <UNDEFINED> instruction: 0x06000418
    2c44:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    2c48:	57203a5d 			; <UNDEFINED> instruction: 0x57203a5d
    2c4c:	676e6f72 			; <UNDEFINED> instruction: 0x676e6f72
    2c50:	636d6d20 	cmnvs	sp, #32, 26	; 0x800
    2c54:	2e4f4e20 	cdpcs	14, 4, cr4, cr15, cr0, {1}
    2c58:	6425203a 	strtvs	r2, [r5], #-58	; 0x3a
    2c5c:	0000000a 	andeq	r0, r0, sl
    2c60:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    2c64:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    2c68:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
    2c6c:	65722064 	ldrbvs	r2, [r2, #-100]!	; 0x64
    2c70:	72756f73 	rsbsvc	r6, r5, #460	; 0x1cc
    2c74:	69206563 	stmdbvs	r0!, {r0, r1, r5, r6, r8, sl, sp, lr}
    2c78:	2074696e 	rsbscs	r6, r4, lr, ror #18
    2c7c:	6c696166 	stfvse	f6, [r9], #-408	; 0xfffffe68
    2c80:	000a6465 	andeq	r6, sl, r5, ror #8
    2c84:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    2c88:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    2c8c:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
    2c90:	65722064 	ldrbvs	r2, [r2, #-100]!	; 0x64
    2c94:	74736967 	ldrbtvc	r6, [r3], #-2407	; 0x967
    2c98:	66207265 	strtvs	r7, [r0], -r5, ror #4
    2c9c:	656c6961 	strbvs	r6, [ip, #-2401]!	; 0x961
    2ca0:	00000a64 	andeq	r0, r0, r4, ror #20
    2ca4:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    2ca8:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    2cac:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
    2cb0:	69642064 	stmdbvs	r4!, {r2, r5, r6, sp}^
    2cb4:	6c626173 	stfvse	f6, [r2], #-460	; 0xfffffe34
    2cb8:	6c632065 	stclvs	0, cr2, [r3], #-404	; 0xfffffe6c
    2cbc:	206b636f 	rsbcs	r6, fp, pc, ror #6
    2cc0:	6c696166 	stfvse	f6, [r9], #-408	; 0xfffffe68
    2cc4:	000a6465 	andeq	r6, sl, r5, ror #8
    2cc8:	00b71b00 	adcseq	r1, r7, r0, lsl #22
    2ccc:	0002000f 	andeq	r0, r2, pc
    2cd0:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    2cd4:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    2cd8:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
    2cdc:	68432064 	stmdavs	r3, {r2, r5, r6, sp}^
    2ce0:	65676e61 	strbvs	r6, [r7, #-3681]!	; 0xe61
    2ce4:	76694420 	strbtvc	r4, [r9], -r0, lsr #8
    2ce8:	72656469 	rsbvc	r6, r5, #1761607680	; 0x69000000
    2cec:	63614620 	cmnvs	r1, #32, 12	; 0x2000000
    2cf0:	20726f74 	rsbscs	r6, r2, r4, ror pc
    2cf4:	6c696166 	stfvse	f6, [r9], #-408	; 0xfffffe68
    2cf8:	000a6465 	andeq	r6, sl, r5, ror #8
    2cfc:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    2d00:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    2d04:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
    2d08:	65722064 	ldrbvs	r2, [r2, #-100]!	; 0x64
    2d0c:	616e652d 	cmnvs	lr, sp, lsr #10
    2d10:	20656c62 	rsbcs	r6, r5, r2, ror #24
    2d14:	636f6c63 	cmnvs	pc, #25344	; 0x901c
    2d18:	6166206b 	cmnvs	r6, fp, rrx
    2d1c:	64656c69 	strbtvs	r6, [r5], #-3177	; 0xc69
    2d20:	0000000a 	andeq	r0, r0, sl
    2d24:	e2813008 	add	r3, r1, #8
    2d28:	e92d4010 	push	{r4, lr}
    2d2c:	e5902020 	ldr	r2, [r0, #32]
    2d30:	e8930009 	ldm	r3, {r0, r3}
    2d34:	e591c000 	ldr	ip, [r1]
    2d38:	e0040093 	mul	r4, r3, r0
    2d3c:	e5913004 	ldr	r3, [r1, #4]
    2d40:	e3e004ff 	mvn	r0, #-16777216	; 0xff000000
    2d44:	e3a01000 	mov	r1, #0
    2d48:	e3130001 	tst	r3, #1
    2d4c:	1a00000b 	bne	0x2d80
    2d50:	ea000018 	b	0x2db8
    2d54:	e2500001 	subs	r0, r0, #1
    2d58:	0a00001a 	beq	0x2dc8
    2d5c:	e5923000 	ldr	r3, [r2]
    2d60:	e593303c 	ldr	r3, [r3, #60]	; 0x3c
    2d64:	e3130004 	tst	r3, #4
    2d68:	1afffff9 	bne	0x2d54
    2d6c:	e5920018 	ldr	r0, [r2, #24]
    2d70:	e5900000 	ldr	r0, [r0]
    2d74:	e78c0101 	str	r0, [ip, r1, lsl #2]
    2d78:	e3e004ff 	mvn	r0, #-16777216	; 0xff000000
    2d7c:	e2811001 	add	r1, r1, #1
    2d80:	e1510124 	cmp	r1, r4, lsr #2
    2d84:	3afffff2 	bcc	0x2d54
    2d88:	ea00000c 	b	0x2dc0
    2d8c:	e2500001 	subs	r0, r0, #1
    2d90:	0a00000c 	beq	0x2dc8
    2d94:	e5923000 	ldr	r3, [r2]
    2d98:	e593303c 	ldr	r3, [r3, #60]	; 0x3c
    2d9c:	e3130008 	tst	r3, #8
    2da0:	1afffff9 	bne	0x2d8c
    2da4:	e5923018 	ldr	r3, [r2, #24]
    2da8:	e79c0101 	ldr	r0, [ip, r1, lsl #2]
    2dac:	e5830000 	str	r0, [r3]
    2db0:	e3e004ff 	mvn	r0, #-16777216	; 0xff000000
    2db4:	e2811001 	add	r1, r1, #1
    2db8:	e1510124 	cmp	r1, r4, lsr #2
    2dbc:	3afffff2 	bcc	0x2d8c
    2dc0:	e3a00000 	mov	r0, #0
    2dc4:	e8bd8010 	pop	{r4, pc}
    2dc8:	e5921004 	ldr	r1, [r2, #4]
    2dcc:	e28f0008 	add	r0, pc, #8
    2dd0:	eb000c2d 	bl	0x5e8c
    2dd4:	e3e00000 	mvn	r0, #0
    2dd8:	e8bd8010 	pop	{r4, pc}
    2ddc:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    2de0:	6d203a5d 	vstmdbvs	r0!, {s6-s98}
    2de4:	2520636d 	strcs	r6, [r0, #-877]!	; 0x36d
    2de8:	72742064 	rsbsvc	r2, r4, #100	; 0x64
    2dec:	66736e61 	ldrbtvs	r6, [r3], -r1, ror #28
    2df0:	62207265 	eorvs	r7, r0, #1342177286	; 0x50000006
    2df4:	70632079 	rsbvc	r2, r3, r9, ror r0
    2df8:	61662075 	smcvs	25093	; 0x6205
    2dfc:	64656c69 	strbtvs	r6, [r5], #-3177	; 0xc69
    2e00:	0000000a 	andeq	r0, r0, sl
    2e04:	e92d4010 	push	{r4, lr}
    2e08:	ebfffedb 	bl	0x297c
    2e0c:	e3500000 	cmp	r0, #0
    2e10:	d3e00000 	mvnle	r0, #0
    2e14:	e8bd8010 	pop	{r4, pc}
    2e18:	e92d4010 	push	{r4, lr}
    2e1c:	ebffff28 	bl	0x2ac4
    2e20:	e3a00000 	mov	r0, #0
    2e24:	e8bd8010 	pop	{r4, pc}
    2e28:	e1a0c000 	mov	ip, r0
    2e2c:	e1a00003 	mov	r0, r3
    2e30:	e1a03002 	mov	r3, r2
    2e34:	e1a02001 	mov	r2, r1
    2e38:	e1a0100c 	mov	r1, ip
    2e3c:	eafff672 	b	0x80c
    2e40:	e59f10dc 	ldr	r1, [pc, #220]	; 0x2f24
    2e44:	e28f00dc 	add	r0, pc, #220	; 0x2f28
    2e48:	e92d4010 	push	{r4, lr}
    2e4c:	eb000c0e 	bl	0x5e8c
    2e50:	e3e00000 	mvn	r0, #0
    2e54:	e8bd8010 	pop	{r4, pc}
    2e58:	e92d4010 	push	{r4, lr}
    2e5c:	ebfff626 	bl	0x6fc
    2e60:	e59000a8 	ldr	r0, [r0, #168]	; 0xa8
    2e64:	e8bd8010 	pop	{r4, pc}
    2e68:	e59f10dc 	ldr	r1, [pc, #220]	; 0x2f4c
    2e6c:	e28f00b4 	add	r0, pc, #180	; 0x2f28
    2e70:	e92d4010 	push	{r4, lr}
    2e74:	eb000c04 	bl	0x5e8c
    2e78:	e3e00000 	mvn	r0, #0
    2e7c:	e8bd8010 	pop	{r4, pc}
    2e80:	e59f30c8 	ldr	r3, [pc, #200]	; 0x2f50
    2e84:	e5831000 	str	r1, [r3]
    2e88:	e1a01002 	mov	r1, r2
    2e8c:	eaffffdc 	b	0x2e04
    2e90:	e59f10b8 	ldr	r1, [pc, #184]	; 0x2f50
    2e94:	e92d4010 	push	{r4, lr}
    2e98:	e3a04000 	mov	r4, #0
    2e9c:	e5814000 	str	r4, [r1]
    2ea0:	ebffff07 	bl	0x2ac4
    2ea4:	e1a00004 	mov	r0, r4
    2ea8:	e8bd8010 	pop	{r4, pc}
    2eac:	e92d0030 	push	{r4, r5}
    2eb0:	e1a04001 	mov	r4, r1
    2eb4:	e59f1094 	ldr	r1, [pc, #148]	; 0x2f50
    2eb8:	e1a0c003 	mov	ip, r3
    2ebc:	e1a03002 	mov	r3, r2
    2ec0:	e1a02004 	mov	r2, r4
    2ec4:	e5911000 	ldr	r1, [r1]
    2ec8:	e8bd0030 	pop	{r4, r5}
    2ecc:	e0811000 	add	r1, r1, r0
    2ed0:	e1a0000c 	mov	r0, ip
    2ed4:	eafff64c 	b	0x80c
    2ed8:	e59f1074 	ldr	r1, [pc, #116]	; 0x2f54
    2edc:	e28f0044 	add	r0, pc, #68	; 0x2f28
    2ee0:	e92d4010 	push	{r4, lr}
    2ee4:	eb000be8 	bl	0x5e8c
    2ee8:	e3e00000 	mvn	r0, #0
    2eec:	e8bd8010 	pop	{r4, pc}
    2ef0:	e92d4010 	push	{r4, lr}
    2ef4:	ebffffd7 	bl	0x2e58
    2ef8:	e59f1050 	ldr	r1, [pc, #80]	; 0x2f50
    2efc:	e5911000 	ldr	r1, [r1]
    2f00:	e0400001 	sub	r0, r0, r1
    2f04:	e8bd8010 	pop	{r4, pc}
    2f08:	e59f1048 	ldr	r1, [pc, #72]	; 0x2f58
    2f0c:	e28f0014 	add	r0, pc, #20
    2f10:	e92d4010 	push	{r4, lr}
    2f14:	eb000bdc 	bl	0x5e8c
    2f18:	e3e00000 	mvn	r0, #0
    2f1c:	e8bd8010 	pop	{r4, pc}
    2f20:	e12fff1e 	bx	lr
    2f24:	00016ba0 	andeq	r6, r1, r0, lsr #23
    2f28:	636d6d5b 	cmnvs	sp, #5824	; 0x16c0
    2f2c:	44203a5d 	strtmi	r3, [r0], #-2653	; 0xa5d
    2f30:	74276e6f 	strtvc	r6, [r7], #-3695	; 0xe6f
    2f34:	706d6920 	rsbvc	r6, sp, r0, lsr #18
    2f38:	656d656c 	strbvs	r6, [sp, #-1388]!	; 0x56c
    2f3c:	2520746e 	strcs	r7, [r0, #-1134]!	; 0x46e
    2f40:	6f662073 	svcvs	0x00662073
    2f44:	34322072 	ldrtcc	r2, [r2], #-114	; 0x72
    2f48:	000a216b 	andeq	r2, sl, fp, ror #2
    2f4c:	00016baf 	andeq	r6, r1, pc, lsr #23
    2f50:	00016be4 	andeq	r6, r1, r4, ror #23
    2f54:	00016bbe 			; <UNDEFINED> instruction: 0x00016bbe
    2f58:	00016bd1 	ldrdeq	r6, [r1], -r1

    2f5c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    2f60:	e59f1180 	ldr	r1, [pc, #384]	; 0x30e8
    2f64:	e59f0180 	ldr	r0, [pc, #384]	; 0x30ec
    2f68:	fa000ec7 	blx	0x6a8c
    2f6c:	eb000242 	bl	0x387c
    2f70:	e59f7178 	ldr	r7, [pc, #376]	; 0x30f0
    2f74:	e59f2178 	ldr	r2, [pc, #376]	; 0x30f4
    2f78:	e28710bc 	add	r1, r7, #188	; 0xbc
    2f7c:	e59700b8 	ldr	r0, [r7, #184]	; 0xb8
    2f80:	eb000c58 	bl	0x60e8
    2f84:	e59700cc 	ldr	r0, [r7, #204]	; 0xcc
    2f88:	e3500000 	cmp	r0, #0
    2f8c:	128700d0 	addne	r0, r7, #208	; 0xd0
    2f90:	1b00008b 	blne	0x31c4
    2f94:	e28f0f57 	add	r0, pc, #348	; 0x30f8 "HELLO! BOOT0 is starting!.\n"
    2f98:	eb000bbb 	bl	0x5e8c
    2f9c:	e287102a 	add	r1, r7, #42	; 0x2a
    2fa0:	e28f0f5b 	add	r0, pc, #364	; 0x3114 "boot0 version : %s\n"
    2fa4:	eb000bb8 	bl	0x5e8c
    2fa8:	e59f4178 	ldr	r4, [pc, #376]	; 0x3128
    2fac:	e3a08801 	mov	r8, #65536	; 0x10000
    2fb0:	e5848000 	str	r8, [r4]
    2fb4:	e5940000 	ldr	r0, [r4]
    2fb8:	e3a05001 	mov	r5, #1
    2fbc:	e20060ff 	and	r6, r0, #255	; 0xff
    2fc0:	e1a00805 	lsl	r0, r5, #16
    2fc4:	e5840000 	str	r0, [r4]
    2fc8:	e5942000 	ldr	r2, [r4]
    2fcc:	e28f0f56 	add	r0, pc, #344	; 0x312c "rtc %d value %x\n"
    2fd0:	e1a01005 	mov	r1, r5
    2fd4:	eb000bac 	bl	0x5e8c
    2fd8:	e2855001 	add	r5, r5, #1
    2fdc:	e3550003 	cmp	r5, #3
    2fe0:	dafffff6 	ble	0x2fc0
    2fe4:	e356005a 	cmp	r6, #90	; 0x5a
    2fe8:	059f5150 	ldreq	r5, [pc, #336]	; 0x3140
    2fec:	1a00000e 	bne	0x302c
    2ff0:	e5848000 	str	r8, [r4]
    2ff4:	e5845000 	str	r5, [r4]
    2ff8:	e3a0000a 	mov	r0, #10
    2ffc:	eb000159 	bl	0x3568
    3000:	e5848000 	str	r8, [r4]
    3004:	e5940000 	ldr	r0, [r4]
    3008:	e31000ff 	tst	r0, #255	; 0xff
    300c:	1afffff7 	bne	0x2ff0
    3010:	e28f0f4b 	add	r0, pc, #300	; 0x3144 "eraly jump fel\n"
    3014:	eb000b9c 	bl	0x5e8c
    3018:	eb0001ed 	bl	0x37d4
    301c:	e3a0000a 	mov	r0, #10
    3020:	eb000201 	bl	0x382c
    3024:	e3a00020 	mov	r0, #32
    3028:	eb000eba 	bl	0x6b18
    302c:	e3a02802 	mov	r2, #131072	; 0x20000
    3030:	e3001400 	movw	r1, #1024	; 0x400
    3034:	e3a00202 	mov	r0, #536870912	; 0x20000000
    3038:	eb00010d 	bl	0x3474
    303c:	eb000126 	bl	0x34dc
    3040:	e2871038 	add	r1, r7, #56	; 0x38
    3044:	e3a00000 	mov	r0, #0
    3048:	eb000a4a 	bl	0x5978
    304c:	e1b04000 	movs	r4, r0
    3050:	0a000003 	beq	0x3064
    3054:	e1a01000 	mov	r1, r0
    3058:	e28f00f4 	add	r0, pc, #244	; 0x3154 "dram size =%d\n"
    305c:	eb000b8a 	bl	0x5e8c
    3060:	ea000005 	b	0x307c
    3064:	e28f00f8 	add	r0, pc, #248	; 0x3164 "initializing SDRAM Fail.\n"
    3068:	eb000b87 	bl	0x5e8c
    306c:	eb000121 	bl	0x34f8
    3070:	eb0001d7 	bl	0x37d4
    3074:	e3a00020 	mov	r0, #32
    3078:	eb000ea6 	bl	0x6b18
    307c:	e3a00064 	mov	r0, #100	; 0x64
    3080:	eb0001e9 	bl	0x382c
    3084:	e2871038 	add	r1, r7, #56	; 0x38
    3088:	e3a02080 	mov	r2, #128	; 0x80
    308c:	e3a00582 	mov	r0, #545259520	; 0x20800000
    3090:	eb000e64 	bl	0x6a28
    3094:	e2870f7e 	add	r0, r7, #504	; 0x1f8
    3098:	ebfff4a6 	bl	0x338
    309c:	e1a05000 	mov	r5, r0
    30a0:	e28f00d8 	add	r0, pc, #216	; 0x3180 "Ready to disable icache.\n"
    30a4:	eb000b78 	bl	0x5e8c
    30a8:	eb000112 	bl	0x34f8
    30ac:	e3550000 	cmp	r5, #0
    30b0:	0a000005 	beq	0x30cc
    30b4:	eb0001c6 	bl	0x37d4
    30b8:	e28f00dc 	add	r0, pc, #220	; 0x319c "Jump to Fel.\n"
    30bc:	eb000b72 	bl	0x5e8c
    30c0:	e3a00020 	mov	r0, #32
    30c4:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
    30c8:	ea000e92 	b	0x6b18
    30cc:	e2870038 	add	r0, r7, #56	; 0x38
    30d0:	e1a01004 	mov	r1, r4
    30d4:	eb0000d4 	bl	0x342c
    30d8:	e28f00cc 	add	r0, pc, #204	; 0x31ac
    30dc:	eb000b6a 	bl	0x5e8c
    30e0:	e3a0042a 	mov	r0, #704643072	; 0x2a000000
    30e4:	eafffff6 	b	0x30c4
    30e8:	00000374 	
    30ec:	00016c0c 	
    30f0:	00010000 	
    30f4:	016e3600 	

    30f8:	"HELLO! BOOT0 is starting!.\n",0,0
    3114:	"boot0 version : %s\n",0
    3128:	080015f0 	
    312c:	"rtc %d value %x\n",0,0,0,0
    3140:	80010000 	
    3144:	"eraly jump fel\n",0
    3154:	"dram size =%d\n",0,0
    3164:	"initializing SDRAM Fail.\n",0,0,0
    3180:	"Ready to disable icache.\n",0,0,0
    319c:	"Jump to Fel.\n",0,0,0
    31ac:	"Jump to secend Boot.\n",0,0,0

    31c4:	e3a02001 	mov	r2, #1
    31c8:	e3a01006 	mov	r1, #6
    31cc:	ea000c13 	b	0x6220
    31d0:	e3510000 	cmp	r1, #0
    31d4:	e3a03000 	mov	r3, #0
    31d8:	05823000 	streq	r3, [r2]
    31dc:	0a000008 	beq	0x3204
    31e0:	e3510001 	cmp	r1, #1
    31e4:	05820000 	streq	r0, [r2]
    31e8:	0a000005 	beq	0x3204
    31ec:	e1510000 	cmp	r1, r0
    31f0:	e5823000 	str	r3, [r2]
    31f4:	90400001 	subls	r0, r0, r1
    31f8:	92833001 	addls	r3, r3, #1
    31fc:	9afffffa 	bls	0x31ec
    3200:	e12fff1e 	bx	lr
    3204:	e3a00000 	mov	r0, #0
    3208:	e12fff1e 	bx	lr

    320c:	e92d40f0 	push	{r4, r5, r6, r7, lr}
    3210:	e5d02000 	ldrb	r2, [r0]
    3214:	e3520030 	cmp	r2, #48	; 0x30
    3218:	0a000007 	beq	0x323c
    321c:	e352002d 	cmp	r2, #45	; 0x2d
    3220:	e3a05000 	mov	r5, #0
    3224:	03a05001 	moveq	r5, #1
    3228:	e3a06001 	mov	r6, #1
    322c:	03a06000 	moveq	r6, #0
    3230:	e3a03000 	mov	r3, #0
    3234:	e1a02005 	mov	r2, r5
    3238:	ea000031 	b	0x3304
    323c:	e5d02001 	ldrb	r2, [r0, #1]
    3240:	e3520078 	cmp	r2, #120	; 0x78
    3244:	13520058 	cmpne	r2, #88	; 0x58
    3248:	13a03000 	movne	r3, #0
    324c:	03a0c000 	moveq	ip, #0
    3250:	03a03002 	moveq	r3, #2
    3254:	11a02003 	movne	r2, r3
    3258:	0a00000d 	beq	0x3294
    325c:	e7d04002 	ldrb	r4, [r0, r2]
    3260:	e2445030 	sub	r5, r4, #48	; 0x30
    3264:	e3550007 	cmp	r5, #7
    3268:	90843183 	addls	r3, r4, r3, lsl #3
    326c:	92433030 	subls	r3, r3, #48	; 0x30
    3270:	92822001 	addls	r2, r2, #1
    3274:	9afffff8 	bls	0x325c
    3278:	e3510000 	cmp	r1, #0
    327c:	10800002 	addne	r0, r0, r2
    3280:	15810000 	strne	r0, [r1]
    3284:	e1a00003 	mov	r0, r3
    3288:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
    328c:	e082c20c 	add	ip, r2, ip, lsl #4
    3290:	e2833001 	add	r3, r3, #1
    3294:	e7d02003 	ldrb	r2, [r0, r3]
    3298:	e2424030 	sub	r4, r2, #48	; 0x30
    329c:	e3540009 	cmp	r4, #9
    32a0:	92422030 	subls	r2, r2, #48	; 0x30
    32a4:	9afffff8 	bls	0x328c
    32a8:	e2424061 	sub	r4, r2, #97	; 0x61
    32ac:	e3540005 	cmp	r4, #5
    32b0:	92422057 	subls	r2, r2, #87	; 0x57
    32b4:	9afffff4 	bls	0x328c
    32b8:	e2424041 	sub	r4, r2, #65	; 0x41
    32bc:	e3540005 	cmp	r4, #5
    32c0:	92422037 	subls	r2, r2, #55	; 0x37
    32c4:	9afffff0 	bls	0x328c
    32c8:	e3530002 	cmp	r3, #2
    32cc:	0a000004 	beq	0x32e4
    32d0:	e3510000 	cmp	r1, #0
    32d4:	10800003 	addne	r0, r0, r3
    32d8:	15810000 	strne	r0, [r1]
    32dc:	e1a0000c 	mov	r0, ip
    32e0:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
    32e4:	e3510000 	cmp	r1, #0
    32e8:	15810000 	strne	r0, [r1]
    32ec:	e3a00000 	mov	r0, #0
    32f0:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
    32f4:	e0833103 	add	r3, r3, r3, lsl #2
    32f8:	e2822001 	add	r2, r2, #1
    32fc:	e0843083 	add	r3, r4, r3, lsl #1
    3300:	e2433030 	sub	r3, r3, #48	; 0x30
    3304:	e7d04002 	ldrb	r4, [r0, r2]
    3308:	e2447030 	sub	r7, r4, #48	; 0x30
    330c:	e3570009 	cmp	r7, #9
    3310:	9afffff7 	bls	0x32f4
    3314:	e1520005 	cmp	r2, r5
    3318:	0afffff1 	beq	0x32e4
    331c:	e3560000 	cmp	r6, #0
    3320:	02633000 	rsbeq	r3, r3, #0
    3324:	eaffffd3 	b	0x3278
    3328:	e2800004 	add	r0, r0, #4
    332c:	e3a02008 	mov	r2, #8
    3330:	e92d4010 	push	{r4, lr}
    3334:	eb000d5d 	bl	0x68b0
    3338:	e3500000 	cmp	r0, #0
    333c:	13a00001 	movne	r0, #1
    3340:	e8bd8010 	pop	{r4, pc}
    3344:	e92d4070 	push	{r4, r5, r6, lr}
    3348:	e590500c 	ldr	r5, [r0, #12]
    334c:	e1a01121 	lsr	r1, r1, #2
    3350:	e59f30ac 	ldr	r3, [pc, #172]	; 0x3404
    3354:	e1a02000 	mov	r2, r0
    3358:	e3a04000 	mov	r4, #0
    335c:	e580300c 	str	r3, [r0, #12]
    3360:	e4903004 	ldr	r3, [r0], #4
    3364:	e2411004 	sub	r1, r1, #4
    3368:	e0833004 	add	r3, r3, r4
    336c:	e4904004 	ldr	r4, [r0], #4
    3370:	e3510003 	cmp	r1, #3
    3374:	e0833004 	add	r3, r3, r4
    3378:	e4904004 	ldr	r4, [r0], #4
    337c:	e0833004 	add	r3, r3, r4
    3380:	e4904004 	ldr	r4, [r0], #4
    3384:	e0844003 	add	r4, r4, r3
    3388:	8afffff4 	bhi	0x3360
    338c:	e2411001 	sub	r1, r1, #1
    3390:	e3710001 	cmn	r1, #1
    3394:	14903004 	ldrne	r3, [r0], #4
    3398:	10844003 	addne	r4, r4, r3
    339c:	1afffffa 	bne	0x338c
    33a0:	e28f0060 	add	r0, pc, #96	; 0x3408
    33a4:	e1a01004 	mov	r1, r4
    33a8:	e582500c 	str	r5, [r2, #12]
    33ac:	eb000ab6 	bl	0x5e8c
    33b0:	e28f0058 	add	r0, pc, #88	; 0x3410
    33b4:	e1a01005 	mov	r1, r5
    33b8:	eb000ab3 	bl	0x5e8c
    33bc:	e1540005 	cmp	r4, r5
    33c0:	03a00000 	moveq	r0, #0
    33c4:	13a00001 	movne	r0, #1
    33c8:	e8bd8070 	pop	{r4, r5, r6, pc}
    33cc:	e92d4070 	push	{r4, r5, r6, lr}
    33d0:	e1a05001 	mov	r5, r1
    33d4:	e1a01002 	mov	r1, r2
    33d8:	e1a04000 	mov	r4, r0
    33dc:	ebffffd1 	bl	0x3328
    33e0:	e3500000 	cmp	r0, #0
    33e4:	1a000004 	bne	0x33fc
    33e8:	e1a01005 	mov	r1, r5
    33ec:	e1a00004 	mov	r0, r4
    33f0:	ebffffd3 	bl	0x3344
    33f4:	e3500000 	cmp	r0, #0
    33f8:	08bd8070 	popeq	{r4, r5, r6, pc}
    33fc:	e3a00001 	mov	r0, #1
    3400:	e8bd8070 	pop	{r4, r5, r6, pc}
    3404:	5f0a6c39 	svcpl	0x000a6c39
    3408:	3d6d7573 	cfstr64cc	mvdx7, [sp, #-460]!	; 0xfffffe34
    340c:	000a7825 	andeq	r7, sl, r5, lsr #16
    3410:	5f637273 	svcpl	0x00637273
    3414:	3d6d7573 	cfstr64cc	mvdx7, [sp, #-460]!	; 0xfffffe34
    3418:	000a7825 	andeq	r7, sl, r5, lsr #16
    341c:	e3a00001 	mov	r0, #1
    3420:	e12fff1e 	bx	lr
    3424:	e59f003c 	ldr	r0, [pc, #60]	; 0x3468
    3428:	e12fff1e 	bx	lr
    342c:	e5902010 	ldr	r2, [r0, #16]
    3430:	e6ff1071 	uxth	r1, r1
    3434:	e7cf201f 	bfc	r2, #0, #16
    3438:	e1811002 	orr	r1, r1, r2
    343c:	e5801010 	str	r1, [r0, #16]
    3440:	e3a02080 	mov	r2, #128	; 0x80
    3444:	e1a01000 	mov	r1, r0
    3448:	e59f001c 	ldr	r0, [pc, #28]	; 0x346c
    344c:	ea000d53 	b	0x69a0
    3450:	e59f1018 	ldr	r1, [pc, #24]	; 0x3470
    3454:	e3a020ac 	mov	r2, #172	; 0xac
    3458:	e92d4010 	push	{r4, lr}
    345c:	eb000d71 	bl	0x6a28
    3460:	e3a00000 	mov	r0, #0
    3464:	e8bd8010 	pop	{r4, pc}
    3468:	20100000 	andscs	r0, r0, r0
    346c:	2a000030 	bcs	0x3534
    3470:	000101f8 	strdeq	r0, [r1], -r8
    3474:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    3478:	e1a04002 	mov	r4, r2
    347c:	e3a02000 	mov	r2, #0
    3480:	e3003de2 	movw	r3, #3554	; 0xde2
    3484:	e1836a02 	orr	r6, r3, r2, lsl #20
    3488:	e7846102 	str	r6, [r4, r2, lsl #2]
    348c:	e2822001 	add	r2, r2, #1
    3490:	e3520a01 	cmp	r2, #4096	; 0x1000
    3494:	23005dea 	movwcs	r5, #3562	; 0xdea
    3498:	23a02000 	movcs	r2, #0
    349c:	25845000 	strcs	r5, [r4]
    34a0:	3afffff7 	bcc	0x3484
    34a4:	ea000004 	b	0x34bc
    34a8:	e0803a02 	add	r3, r0, r2, lsl #20
    34ac:	e0827a20 	add	r7, r2, r0, lsr #20
    34b0:	e1836005 	orr	r6, r3, r5
    34b4:	e2822001 	add	r2, r2, #1
    34b8:	e7846107 	str	r6, [r4, r7, lsl #2]
    34bc:	e1520001 	cmp	r2, r1
    34c0:	3afffff8 	bcc	0x34a8
    34c4:	eb000d9a 	bl	0x6b34
    34c8:	ee024f10 	mcr	15, 0, r4, cr2, cr0, {0}
    34cc:	ee024f30 	mcr	15, 0, r4, cr2, cr0, {1}
    34d0:	eb000d8d 	bl	0x6b0c
    34d4:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
    34d8:	ea000d91 	b	0x6b24
    34dc:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
    34e0:	e3011007 	movw	r1, #4103	; 0x1007
    34e4:	e1c00001 	bic	r0, r0, r1
    34e8:	e3011001 	movw	r1, #4097	; 0x1001
    34ec:	e1800001 	orr	r0, r0, r1
    34f0:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
    34f4:	e12fff1e 	bx	lr
    34f8:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
    34fc:	e3011007 	movw	r1, #4103	; 0x1007
    3500:	e1c00001 	bic	r0, r0, r1
    3504:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
    3508:	e12fff1e 	bx	lr
    350c:	e59f1388 	ldr	r1, [pc, #904]	; 0x389c
    3510:	e3a00000 	mov	r0, #0
    3514:	e7912100 	ldr	r2, [r1, r0, lsl #2]
    3518:	e3c2281f 	bic	r2, r2, #2031616	; 0x1f0000
    351c:	e3822701 	orr	r2, r2, #262144	; 0x40000
    3520:	e7812100 	str	r2, [r1, r0, lsl #2]
    3524:	e2800001 	add	r0, r0, #1
    3528:	e350000c 	cmp	r0, #12
    352c:	3afffff8 	bcc	0x3514
    3530:	e12fff1e 	bx	lr
    3534:	e59f0364 	ldr	r0, [pc, #868]	; 0x38a0
    3538:	e3001ff0 	movw	r1, #4080	; 0xff0
    353c:	e5801104 	str	r1, [r0, #260]	; 0x104
    3540:	e3e01103 	mvn	r1, #-1073741824	; 0xc0000000
    3544:	e5801010 	str	r1, [r0, #16]
    3548:	e5801014 	str	r1, [r0, #20]
    354c:	e5801018 	str	r1, [r0, #24]
    3550:	e580101c 	str	r1, [r0, #28]
    3554:	e5801020 	str	r1, [r0, #32]
    3558:	e5801024 	str	r1, [r0, #36]	; 0x24
    355c:	e5801028 	str	r1, [r0, #40]	; 0x28
    3560:	e580102c 	str	r1, [r0, #44]	; 0x2c
    3564:	e12fff1e 	bx	lr
    3568:	e59f1334 	ldr	r1, [pc, #820]	; 0x38a4
    356c:	e5912000 	ldr	r2, [r1]
    3570:	e0822000 	add	r2, r2, r0
    3574:	e5910000 	ldr	r0, [r1]
    3578:	e1520000 	cmp	r2, r0
    357c:	2afffffc 	bcs	0x3574
    3580:	e12fff1e 	bx	lr

    3584:	e3a03406 	mov	r3, #100663296	; 0x6000000
    3588:	e92d4070 	push	{r4, r5, r6, lr}
    358c:	e5930050 	ldr	r0, [r3, #80]	; 0x50
    3590:	e3c00001 	bic	r0, r0, #1
    3594:	e5830050 	str	r0, [r3, #80]	; 0x50
    3598:	e3a0000a 	mov	r0, #10
    359c:	ebfffff1 	bl	0x3568
    35a0:	f57ff05f 	dmb	sy
    35a4:	f57ff06f 	isb	sy
    35a8:	e593002c 	ldr	r0, [r3, #44]	; 0x2c
    35ac:	e3100102 	tst	r0, #-2147483648	; 0x80000000
    35b0:	03030200 	movweq	r0, #12800	; 0x3200
    35b4:	0583002c 	streq	r0, [r3, #44]	; 0x2c
    35b8:	0a000016 	beq	0x3618
    35bc:	e59f42e4 	ldr	r4, [pc, #740]	; 0x38a8
    35c0:	e5834000 	str	r4, [r3]
    35c4:	e3a0000a 	mov	r0, #10
    35c8:	ebffffe6 	bl	0x3568
    35cc:	e5930000 	ldr	r0, [r3]
    35d0:	e1500004 	cmp	r0, r4
    35d4:	059f52d0 	ldreq	r5, [pc, #720]	; 0x38ac
    35d8:	05835000 	streq	r5, [r3]
    35dc:	05834004 	streq	r4, [r3, #4]
    35e0:	1afffff7 	bne	0x35c4
    35e4:	e3a0000a 	mov	r0, #10
    35e8:	ebffffde 	bl	0x3568
    35ec:	e5930004 	ldr	r0, [r3, #4]
    35f0:	e1500004 	cmp	r0, r4
    35f4:	1afffffa 	bne	0x35e4
    35f8:	e5835004 	str	r5, [r3, #4]
    35fc:	e593000c 	ldr	r0, [r3, #12]
    3600:	e59f42a8 	ldr	r4, [pc, #680]	; 0x38b0
    3604:	e3100102 	tst	r0, #-2147483648	; 0x80000000
    3608:	03020800 	movweq	r0, #10240	; 0x2800
    360c:	0583000c 	streq	r0, [r3, #12]
    3610:	1a00000d 	bne	0x364c
    3614:	ea000007 	b	0x3638
    3618:	e3a0000a 	mov	r0, #10
    361c:	ebffffd1 	bl	0x3568
    3620:	e593002c 	ldr	r0, [r3, #44]	; 0x2c
    3624:	e3500c32 	cmp	r0, #12800	; 0x3200
    3628:	059f0284 	ldreq	r0, [pc, #644]	; 0x38b4
    362c:	0583002c 	streq	r0, [r3, #44]	; 0x2c
    3630:	1afffff8 	bne	0x3618
    3634:	eaffffe0 	b	0x35bc
    3638:	e3a0000a 	mov	r0, #10
    363c:	ebffffc9 	bl	0x3568
    3640:	e593000c 	ldr	r0, [r3, #12]
    3644:	e3500b0a 	cmp	r0, #10240	; 0x2800
    3648:	1afffffa 	bne	0x3638
    364c:	e583400c 	str	r4, [r3, #12]
    3650:	e3010388 	movw	r0, #5000	; 0x1388
    3654:	ebffffc3 	bl	0x3568
    3658:	f57ff05f 	dmb	sy
    365c:	f57ff06f 	isb	sy
    3660:	e3000101 	movw	r0, #257	; 0x101
    3664:	e5830054 	str	r0, [r3, #84]	; 0x54
    3668:	e3a00032 	mov	r0, #50	; 0x32
    366c:	ebffffbd 	bl	0x3568
    3670:	f57ff05f 	dmb	sy
    3674:	f57ff06f 	isb	sy
    3678:	e3a04003 	mov	r4, #3
    367c:	e5834060 	str	r4, [r3, #96]	; 0x60
    3680:	e3a0000a 	mov	r0, #10
    3684:	ebffffb7 	bl	0x3568
    3688:	e5930060 	ldr	r0, [r3, #96]	; 0x60
    368c:	e3500003 	cmp	r0, #3
    3690:	1afffffa 	bne	0x3680
    3694:	e59f521c 	ldr	r5, [pc, #540]	; 0x38b8
    3698:	e5835060 	str	r5, [r3, #96]	; 0x60
    369c:	e3a06002 	mov	r6, #2
    36a0:	e5836064 	str	r6, [r3, #100]	; 0x64
    36a4:	e3a0000a 	mov	r0, #10
    36a8:	ebffffae 	bl	0x3568
    36ac:	e5930064 	ldr	r0, [r3, #100]	; 0x64
    36b0:	e3500002 	cmp	r0, #2
    36b4:	059f0200 	ldreq	r0, [pc, #512]	; 0x38bc
    36b8:	05830064 	streq	r0, [r3, #100]	; 0x64
    36bc:	05834068 	streq	r4, [r3, #104]	; 0x68
    36c0:	1afffff7 	bne	0x36a4
    36c4:	e3a0000a 	mov	r0, #10
    36c8:	ebffffa6 	bl	0x3568
    36cc:	e5930068 	ldr	r0, [r3, #104]	; 0x68
    36d0:	e3500003 	cmp	r0, #3
    36d4:	05835068 	streq	r5, [r3, #104]	; 0x68
    36d8:	05834070 	streq	r4, [r3, #112]	; 0x70
    36dc:	1afffff8 	bne	0x36c4
    36e0:	e3a0000a 	mov	r0, #10
    36e4:	ebffff9f 	bl	0x3568
    36e8:	e5930070 	ldr	r0, [r3, #112]	; 0x70
    36ec:	e3500003 	cmp	r0, #3
    36f0:	05835070 	streq	r5, [r3, #112]	; 0x70
    36f4:	0583605c 	streq	r6, [r3, #92]	; 0x5c
    36f8:	1afffff8 	bne	0x36e0
    36fc:	e3a0000a 	mov	r0, #10
    3700:	ebffff98 	bl	0x3568
    3704:	e593005c 	ldr	r0, [r3, #92]	; 0x5c
    3708:	e3500002 	cmp	r0, #2
    370c:	1afffffa 	bne	0x36fc
    3710:	e59f01a8 	ldr	r0, [pc, #424]	; 0x38c0
    3714:	e583005c 	str	r0, [r3, #92]	; 0x5c
    3718:	e3a00064 	mov	r0, #100	; 0x64
    371c:	ebffff91 	bl	0x3568
    3720:	f57ff05f 	dmb	sy
    3724:	f57ff06f 	isb	sy
    3728:	e5930078 	ldr	r0, [r3, #120]	; 0x78
    372c:	e3a04001 	mov	r4, #1
    3730:	e3100403 	tst	r0, #50331648	; 0x3000000
    3734:	15834078 	strne	r4, [r3, #120]	; 0x78
    3738:	13a00032 	movne	r0, #50	; 0x32
    373c:	1bffff89 	blne	0x3568
    3740:	e59f017c 	ldr	r0, [pc, #380]	; 0x38c4
    3744:	e5830078 	str	r0, [r3, #120]	; 0x78
    3748:	e3a00064 	mov	r0, #100	; 0x64
    374c:	ebffff85 	bl	0x3568
    3750:	f57ff05f 	dmb	sy
    3754:	f57ff06f 	isb	sy
    3758:	e5930050 	ldr	r0, [r3, #80]	; 0x50
    375c:	e3800001 	orr	r0, r0, #1
    3760:	e5830050 	str	r0, [r3, #80]	; 0x50
    3764:	e5930050 	ldr	r0, [r3, #80]	; 0x50
    3768:	e3800c01 	orr	r0, r0, #256	; 0x100
    376c:	e5830050 	str	r0, [r3, #80]	; 0x50
    3770:	e30003e8 	movw	r0, #1000	; 0x3e8
    3774:	ebffff7b 	bl	0x3568
    3778:	f57ff05f 	dmb	sy
    377c:	f57ff06f 	isb	sy
    3780:	e59f0140 	ldr	r0, [pc, #320]	; 0x38c8
    3784:	e5901000 	ldr	r1, [r0]
    3788:	e3811020 	orr	r1, r1, #32
    378c:	e5801000 	str	r1, [r0]
    3790:	e59f0134 	ldr	r0, [pc, #308]	; 0x38cc
    3794:	e5901000 	ldr	r1, [r0]
    3798:	e3811001 	orr	r1, r1, #1
    379c:	e5801000 	str	r1, [r0]
    37a0:	e59f0128 	ldr	r0, [pc, #296]	; 0x38d0
    37a4:	e5901000 	ldr	r1, [r0]
    37a8:	e3811401 	orr	r1, r1, #16777216	; 0x1000000
    37ac:	e5801000 	str	r1, [r0]
    37b0:	e2400020 	sub	r0, r0, #32
    37b4:	e5901000 	ldr	r1, [r0]
    37b8:	e3811401 	orr	r1, r1, #16777216	; 0x1000000
    37bc:	e5801000 	str	r1, [r0]
    37c0:	e59f010c 	ldr	r0, [pc, #268]	; 0x38d4
    37c4:	e5804000 	str	r4, [r0]
    37c8:	ebffff4f 	bl	0x350c
    37cc:	e8bd4070 	pop	{r4, r5, r6, lr}
    37d0:	eaffff57 	b	0x3534
    37d4:	e3a00406 	mov	r0, #100663296	; 0x6000000
    37d8:	e3a01000 	mov	r1, #0
    37dc:	e5801050 	str	r1, [r0, #80]	; 0x50
    37e0:	e59f10c0 	ldr	r1, [pc, #192]	; 0x38a8
    37e4:	e5801000 	str	r1, [r0]
    37e8:	e12fff1e 	bx	lr
    37ec:	e59f00e4 	ldr	r0, [pc, #228]	; 0x38d8
    37f0:	e5901000 	ldr	r1, [r0]
    37f4:	e3811102 	orr	r1, r1, #-2147483648	; 0x80000000
    37f8:	e5801000 	str	r1, [r0]
    37fc:	e59f10d8 	ldr	r1, [pc, #216]	; 0x38dc
    3800:	e3a00003 	mov	r0, #3
    3804:	e5810000 	str	r0, [r1]
    3808:	e59f00d0 	ldr	r0, [pc, #208]	; 0x38e0
    380c:	e1811840 	orr	r1, r1, r0, asr #16
    3810:	e5810000 	str	r0, [r1]
    3814:	e2411008 	sub	r1, r1, #8
    3818:	e3a00000 	mov	r0, #0
    381c:	e5810000 	str	r0, [r1]
    3820:	e2811004 	add	r1, r1, #4
    3824:	e5810000 	str	r0, [r1]
    3828:	e12fff1e 	bx	lr
    382c:	e59f10b0 	ldr	r1, [pc, #176]	; 0x38e4
    3830:	e5912000 	ldr	r2, [r1]
    3834:	e0822000 	add	r2, r2, r0
    3838:	e5910000 	ldr	r0, [r1]
    383c:	e1520000 	cmp	r2, r0
    3840:	2afffffc 	bcs	0x3838
    3844:	e12fff1e 	bx	lr
    3848:	e59f108c 	ldr	r1, [pc, #140]	; 0x38dc
    384c:	e3a00000 	mov	r0, #0
    3850:	e5810000 	str	r0, [r1]
    3854:	e59f208c 	ldr	r2, [pc, #140]	; 0x38e8
    3858:	e59f1080 	ldr	r1, [pc, #128]	; 0x38e0
    385c:	e5821000 	str	r1, [r2]
    3860:	e1c21541 	bic	r1, r2, r1, asr #10
    3864:	e5810000 	str	r0, [r1]
    3868:	e2410e7b 	sub	r0, r1, #1968	; 0x7b0
    386c:	e5901000 	ldr	r1, [r0]
    3870:	e3c11102 	bic	r1, r1, #-2147483648	; 0x80000000
    3874:	e5801000 	str	r1, [r0]
    3878:	e12fff1e 	bx	lr
    387c:	e12fff1e 	bx	lr
    3880:	e12fff1e 	bx	lr
    3884:	e12fff1e 	bx	lr
    3888:	e12fff1e 	bx	lr

    388c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    3890:	ebffffd5 	bl	0x37ec
    3894:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
    3898:	eaffff39 	b	0x3584

    389c:	060000a0
    38a0:	01c09000
    38a4:	06000c88
    38a8:	02001100
    38ac:	82001100
    38b0:	80002800
    38b4:	80003200
    38b8:	01000003
    38bc:	01000002
    38c0:	02000002
    38c4:	01000001
    38c8:	06000590
    38cc:	08001428
    38d0:	060005a4
    38d4:	01720000
    38d8:	060004d4
    38dc:	06000c80
    38e0:	000c2ee0
    38e4:	06000c84
    38e8:	06000c8c

    38ec:	e92d43fe 	push	{r1, r2, r3, r4, r5, r6, r7, r8, r9, lr}
    38f0:	e59f7284 	ldr	r7, [pc, #644]	; 0x3b7c
    38f4:	e1a04000 	mov	r4, r0
    38f8:	e1a05001 	mov	r5, r1
    38fc:	e1a06002 	mov	r6, r2
    3900:	ea000001 	b	0x390c
    3904:	e28f0f9d 	add	r0, pc, #628	; 0x3b80
    3908:	eb00095f 	bl	0x5e8c
    390c:	e5970000 	ldr	r0, [r7]
    3910:	e3100007 	tst	r0, #7
    3914:	1afffffa 	bne	0x3904
    3918:	e59f826c 	ldr	r8, [pc, #620]	; 0x3b8c
    391c:	e3a02001 	mov	r2, #1
    3920:	e5882004 	str	r2, [r8, #4]
    3924:	e3a01000 	mov	r1, #0
    3928:	e5881000 	str	r1, [r8]
    392c:	e5881008 	str	r1, [r8, #8]
    3930:	e1a00084 	lsl	r0, r4, #1
    3934:	e1800405 	orr	r0, r0, r5, lsl #8
    3938:	e1800806 	orr	r0, r0, r6, lsl #16
    393c:	e3803102 	orr	r3, r0, #-2147483648	; 0x80000000
    3940:	e59f0248 	ldr	r0, [pc, #584]	; 0x3b90
    3944:	e5803000 	str	r3, [r0]
    3948:	e5903000 	ldr	r3, [r0]
    394c:	e3130102 	tst	r3, #-2147483648	; 0x80000000
    3950:	1afffffc 	bne	0x3948
    3954:	ea00000c 	b	0x398c
    3958:	e5970000 	ldr	r0, [r7]
    395c:	e3100004 	tst	r0, #4
    3960:	15882008 	strne	r2, [r8, #8]
    3964:	0a000001 	beq	0x3970
    3968:	e5870000 	str	r0, [r7]
    396c:	ea000009 	b	0x3998
    3970:	e3100002 	tst	r0, #2
    3974:	17ef1450 	ubfxne	r1, r0, #8, #16
    3978:	15881000 	strne	r1, [r8]
    397c:	1afffff9 	bne	0x3968
    3980:	e3100001 	tst	r0, #1
    3984:	15881004 	strne	r1, [r8, #4]
    3988:	15870000 	strne	r0, [r7]
    398c:	e5980004 	ldr	r0, [r8, #4]
    3990:	e3500000 	cmp	r0, #0
    3994:	1affffef 	bne	0x3958
    3998:	e5980008 	ldr	r0, [r8, #8]
    399c:	e3500000 	cmp	r0, #0
    39a0:	0a000003 	beq	0x39b4
    39a4:	e28f0f7a 	add	r0, pc, #488	; 0x3b94
    39a8:	eb000937 	bl	0x5e8c
    39ac:	e3e00000 	mvn	r0, #0
    39b0:	e8bd83fe 	pop	{r1, r2, r3, r4, r5, r6, r7, r8, r9, pc}
    39b4:	e5980000 	ldr	r0, [r8]
    39b8:	e3500000 	cmp	r0, #0
    39bc:	08bd83fe 	popeq	{r1, r2, r3, r4, r5, r6, r7, r8, r9, pc}
    39c0:	e5980000 	ldr	r0, [r8]
    39c4:	e5981000 	ldr	r1, [r8]
    39c8:	e3100c01 	tst	r0, #256	; 0x100
    39cc:	128f0f73 	addne	r0, pc, #460	; 0x3ba0
    39d0:	028f0e1d 	addeq	r0, pc, #464	; 0x3ba8
    39d4:	e5982000 	ldr	r2, [r8]
    39d8:	e3110008 	tst	r1, #8
    39dc:	128f1f72 	addne	r1, pc, #456	; 0x3bac
    39e0:	028f1d07 	addeq	r1, pc, #448	; 0x3ba8
    39e4:	e58d0008 	str	r0, [sp, #8]
    39e8:	e3120004 	tst	r2, #4
    39ec:	e58d1004 	str	r1, [sp, #4]
    39f0:	128f2f6f 	addne	r2, pc, #444	; 0x3bb4
    39f4:	028f2f6b 	addeq	r2, pc, #428	; 0x3ba8
    39f8:	e58d2000 	str	r2, [sp]
    39fc:	e5980000 	ldr	r0, [r8]
    3a00:	e3100002 	tst	r0, #2
    3a04:	e5980000 	ldr	r0, [r8]
    3a08:	128f3f6b 	addne	r3, pc, #428	; 0x3bbc
    3a0c:	028f3f65 	addeq	r3, pc, #404	; 0x3ba8
    3a10:	e5981000 	ldr	r1, [r8]
    3a14:	e3100001 	tst	r0, #1
    3a18:	128f2f69 	addne	r2, pc, #420	; 0x3bc4
    3a1c:	028f2f61 	addeq	r2, pc, #388	; 0x3ba8
    3a20:	e28f0f69 	add	r0, pc, #420	; 0x3bcc
    3a24:	eb000918 	bl	0x5e8c
    3a28:	e5980000 	ldr	r0, [r8]
    3a2c:	e2600000 	rsb	r0, r0, #0
    3a30:	e8bd83fe 	pop	{r1, r2, r3, r4, r5, r6, r7, r8, r9, pc}
    3a34:	e92d40fe 	push	{r1, r2, r3, r4, r5, r6, r7, lr}
    3a38:	e59f713c 	ldr	r7, [pc, #316]	; 0x3b7c
    3a3c:	e1a04000 	mov	r4, r0
    3a40:	e1a05001 	mov	r5, r1
    3a44:	ea000001 	b	0x3a50
    3a48:	e28f0e13 	add	r0, pc, #304	; 0x3b80
    3a4c:	eb00090e 	bl	0x5e8c
    3a50:	e5970000 	ldr	r0, [r7]
    3a54:	e3100007 	tst	r0, #7
    3a58:	1afffffa 	bne	0x3a48
    3a5c:	e59f6128 	ldr	r6, [pc, #296]	; 0x3b8c
    3a60:	e3a02001 	mov	r2, #1
    3a64:	e5862004 	str	r2, [r6, #4]
    3a68:	e3a01000 	mov	r1, #0
    3a6c:	e5861000 	str	r1, [r6]
    3a70:	e5861008 	str	r1, [r6, #8]
    3a74:	e1840805 	orr	r0, r4, r5, lsl #16
    3a78:	e59f3178 	ldr	r3, [pc, #376]	; 0x3bf8
    3a7c:	e5830000 	str	r0, [r3]
    3a80:	e0433102 	sub	r3, r3, r2, lsl #2
    3a84:	e3a000e8 	mov	r0, #232	; 0xe8
    3a88:	e5830000 	str	r0, [r3]
    3a8c:	e243002c 	sub	r0, r3, #44	; 0x2c
    3a90:	e5903000 	ldr	r3, [r0]
    3a94:	e3833080 	orr	r3, r3, #128	; 0x80
    3a98:	e5803000 	str	r3, [r0]
    3a9c:	ea00000c 	b	0x3ad4
    3aa0:	e5970000 	ldr	r0, [r7]
    3aa4:	e3100004 	tst	r0, #4
    3aa8:	15862008 	strne	r2, [r6, #8]
    3aac:	0a000001 	beq	0x3ab8
    3ab0:	e5870000 	str	r0, [r7]
    3ab4:	ea000009 	b	0x3ae0
    3ab8:	e3100002 	tst	r0, #2
    3abc:	17ef1450 	ubfxne	r1, r0, #8, #16
    3ac0:	15861000 	strne	r1, [r6]
    3ac4:	1afffff9 	bne	0x3ab0
    3ac8:	e3100001 	tst	r0, #1
    3acc:	15861004 	strne	r1, [r6, #4]
    3ad0:	15870000 	strne	r0, [r7]
    3ad4:	e5960004 	ldr	r0, [r6, #4]
    3ad8:	e3500000 	cmp	r0, #0
    3adc:	1affffef 	bne	0x3aa0
    3ae0:	e5960008 	ldr	r0, [r6, #8]
    3ae4:	e3500000 	cmp	r0, #0
    3ae8:	0a000003 	beq	0x3afc
    3aec:	e28f00a0 	add	r0, pc, #160	; 0x3b94
    3af0:	eb0008e5 	bl	0x5e8c
    3af4:	e3e00000 	mvn	r0, #0
    3af8:	e8bd80fe 	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
    3afc:	e5960000 	ldr	r0, [r6]
    3b00:	e3500000 	cmp	r0, #0
    3b04:	08bd80fe 	popeq	{r1, r2, r3, r4, r5, r6, r7, pc}
    3b08:	e5960000 	ldr	r0, [r6]
    3b0c:	e5961000 	ldr	r1, [r6]
    3b10:	e3100c01 	tst	r0, #256	; 0x100
    3b14:	128f0084 	addne	r0, pc, #132	; 0x3ba0
    3b18:	028f0088 	addeq	r0, pc, #136	; 0x3ba8
    3b1c:	e5962000 	ldr	r2, [r6]
    3b20:	e3110008 	tst	r1, #8
    3b24:	128f1080 	addne	r1, pc, #128	; 0x3bac
    3b28:	028f1078 	addeq	r1, pc, #120	; 0x3ba8
    3b2c:	e58d0008 	str	r0, [sp, #8]
    3b30:	e3120004 	tst	r2, #4
    3b34:	e58d1004 	str	r1, [sp, #4]
    3b38:	128f2074 	addne	r2, pc, #116	; 0x3bb4
    3b3c:	028f2064 	addeq	r2, pc, #100	; 0x3ba8
    3b40:	e58d2000 	str	r2, [sp]
    3b44:	e5960000 	ldr	r0, [r6]
    3b48:	e3100002 	tst	r0, #2
    3b4c:	e5960000 	ldr	r0, [r6]
    3b50:	128f3064 	addne	r3, pc, #100	; 0x3bbc
    3b54:	028f304c 	addeq	r3, pc, #76	; 0x3ba8
    3b58:	e5961000 	ldr	r1, [r6]
    3b5c:	e3100001 	tst	r0, #1
    3b60:	128f205c 	addne	r2, pc, #92	; 0x3bc4
    3b64:	028f203c 	addeq	r2, pc, #60	; 0x3ba8
    3b68:	e28f008c 	add	r0, pc, #140	; 0x3bfc
    3b6c:	eb0008c6 	bl	0x5e8c
    3b70:	e5960000 	ldr	r0, [r6]
    3b74:	e2600000 	rsb	r0, r0, #0
    3b78:	e8bd80fe 	pop	{r1, r2, r3, r4, r5, r6, r7, pc}

    3b7c:	0800340c 
    3b80:	"status err\n",0
    3b8c:	00016be8
    3b90:	08003428
    3b94:	"Load busy\n",0,0
    3ba0:	" NOACK ",0
    3ba8:	00000000
    3bac:	" 4THE ",0
    3bb4:	" 3RD ",0,0
    3bbc:	" 2NDE ",0,0
    3bc4:	" 1STE ",0,0
    3bcc:	"rsb write failed, flag 0x%x:%s%s%s%s%s !!\n",0,0
    3bf8:	08003430
    3bfc:	"rsb set run time address failed, flag 0xled, flag 0xs !!\n",0,0,0

    3c38:	e92d4ffe 	push	{r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    3c3c:	e3a06000 	mov	r6, #0
    3c40:	e1a08000 	mov	r8, r0
    3c44:	e3530004 	cmp	r3, #4
    3c48:	e1a09001 	mov	r9, r1
    3c4c:	e1a07002 	mov	r7, r2
    3c50:	e1a04003 	mov	r4, r3
    3c54:	e1a05006 	mov	r5, r6
    3c58:	8a000008 	bhi	0x3c80
    3c5c:	e3540000 	cmp	r4, #0
    3c60:	0a000006 	beq	0x3c80
    3c64:	e3540003 	cmp	r4, #3
    3c68:	0a000004 	beq	0x3c80
    3c6c:	e51fa0f8 	ldr	sl, [pc, #-248]	; 0x3b7c
    3c70:	e3570000 	cmp	r7, #0
    3c74:	028f0fd3 	addeq	r0, pc, #844	; 0x3fc8
    3c78:	0a000041 	beq	0x3d84
    3c7c:	ea000005 	b	0x3c98
    3c80:	e28f0fd7 	add	r0, pc, #860	; 0x3fe4
    3c84:	e1a01003 	mov	r1, r3
    3c88:	eb00087f 	bl	0x5e8c
    3c8c:	ea00003d 	b	0x3d88
    3c90:	e24f0f46 	sub	r0, pc, #280	; 0x3db0
    3c94:	eb00087c 	bl	0x5e8c
    3c98:	e59a0000 	ldr	r0, [sl]
    3c9c:	e3100007 	tst	r0, #7
    3ca0:	1afffffa 	bne	0x3c90
    3ca4:	e51fb120 	ldr	fp, [pc, #-288]	; 0x3b8c
    3ca8:	e3a01000 	mov	r1, #0
    3cac:	e58b1000 	str	r1, [fp]
    3cb0:	e3a02001 	mov	r2, #1
    3cb4:	e58b2004 	str	r2, [fp, #4]
    3cb8:	e58b1008 	str	r1, [fp, #8]
    3cbc:	e1a00808 	lsl	r0, r8, #16
    3cc0:	e51f30d0 	ldr	r3, [pc, #-208]	; 0x3bf8
    3cc4:	e5830000 	str	r0, [r3]
    3cc8:	e1c30282 	bic	r0, r3, r2, lsl #5
    3ccc:	e5809000 	str	r9, [r0]
    3cd0:	e1a00001 	mov	r0, r1
    3cd4:	ea000003 	b	0x3ce8
    3cd8:	e7d73000 	ldrb	r3, [r7, r0]
    3cdc:	e1a0c180 	lsl	ip, r0, #3
    3ce0:	e2800001 	add	r0, r0, #1
    3ce4:	e1855c13 	orr	r5, r5, r3, lsl ip
    3ce8:	e1540000 	cmp	r4, r0
    3cec:	8afffff9 	bhi	0x3cd8
    3cf0:	e59f0300 	ldr	r0, [pc, #768]	; 0x3ff8
    3cf4:	e5805000 	str	r5, [r0]
    3cf8:	e3540001 	cmp	r4, #1
    3cfc:	03a0604e 	moveq	r6, #78	; 0x4e
    3d00:	0a000004 	beq	0x3d18
    3d04:	e3540002 	cmp	r4, #2
    3d08:	03a06059 	moveq	r6, #89	; 0x59
    3d0c:	0a000001 	beq	0x3d18
    3d10:	e3540004 	cmp	r4, #4
    3d14:	03a06063 	moveq	r6, #99	; 0x63
    3d18:	e59f02dc 	ldr	r0, [pc, #732]	; 0x3ffc
    3d1c:	e5806000 	str	r6, [r0]
    3d20:	e240002c 	sub	r0, r0, #44	; 0x2c
    3d24:	e5903000 	ldr	r3, [r0]
    3d28:	e3833080 	orr	r3, r3, #128	; 0x80
    3d2c:	e5803000 	str	r3, [r0]
    3d30:	ea00000c 	b	0x3d68
    3d34:	e59a0000 	ldr	r0, [sl]
    3d38:	e3100004 	tst	r0, #4
    3d3c:	158b2008 	strne	r2, [fp, #8]
    3d40:	0a000001 	beq	0x3d4c
    3d44:	e58a0000 	str	r0, [sl]
    3d48:	ea000009 	b	0x3d74
    3d4c:	e3100002 	tst	r0, #2
    3d50:	17ef1450 	ubfxne	r1, r0, #8, #16
    3d54:	158b1000 	strne	r1, [fp]
    3d58:	1afffff9 	bne	0x3d44
    3d5c:	e3100001 	tst	r0, #1
    3d60:	158b1004 	strne	r1, [fp, #4]
    3d64:	158a0000 	strne	r0, [sl]
    3d68:	e59b0004 	ldr	r0, [fp, #4]
    3d6c:	e3500000 	cmp	r0, #0
    3d70:	1affffef 	bne	0x3d34
    3d74:	e59b0008 	ldr	r0, [fp, #8]
    3d78:	e3500000 	cmp	r0, #0
    3d7c:	124f0e1f 	subne	r0, pc, #496	; 0x3f74
    3d80:	0a000002 	beq	0x3d90
    3d84:	eb000840 	bl	0x5e8c
    3d88:	e3e00000 	mvn	r0, #0
    3d8c:	e8bd8ffe 	pop	{r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    3d90:	e59b0000 	ldr	r0, [fp]
    3d94:	e3500000 	cmp	r0, #0
    3d98:	08bd8ffe 	popeq	{r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    3d9c:	e59b0000 	ldr	r0, [fp]
    3da0:	e59b1000 	ldr	r1, [fp]
    3da4:	e3100c01 	tst	r0, #256	; 0x100
    3da8:	124f0e21 	subne	r0, pc, #528	; 0x3fc0
    3dac:	028f0f8b 	addeq	r0, pc, #556	; 0x3fe0
    3db0:	e59b2000 	ldr	r2, [fp]
    3db4:	e3110008 	tst	r1, #8
    3db8:	124f1f85 	subne	r1, pc, #532	; 0x3fd4
    3dbc:	028f1f87 	addeq	r1, pc, #540	; 0x3fe0
    3dc0:	e58d0008 	str	r0, [sp, #8]
    3dc4:	e3120004 	tst	r2, #4
    3dc8:	e58d1004 	str	r1, [sp, #4]
    3dcc:	124f2e22 	subne	r2, pc, #544	; 0x3ff4
    3dd0:	028f2f82 	addeq	r2, pc, #520	; 0x3fe0
    3dd4:	e58d2000 	str	r2, [sp]
    3dd8:	e59b0000 	ldr	r0, [fp]
    3ddc:	e3100002 	tst	r0, #2
    3de0:	e59b0000 	ldr	r0, [fp]
    3de4:	124f3e23 	subne	r3, pc, #560	; 0x401c
    3de8:	028f3e1f 	addeq	r3, pc, #496	; 0x3fe0
    3dec:	e59b1000 	ldr	r1, [fp]
    3df0:	e3100001 	tst	r0, #1
    3df4:	124f2f8e 	subne	r2, pc, #568	; 0x4034
    3df8:	028f2e1e 	addeq	r2, pc, #480	; 0x3fe0
    3dfc:	e24f0f8e 	sub	r0, pc, #568	; 0x403c
    3e00:	eb000821 	bl	0x5e8c
    3e04:	e59b0000 	ldr	r0, [fp]
    3e08:	e2600000 	rsb	r0, r0, #0
    3e0c:	e8bd8ffe 	pop	{r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    3e10:	e92d4ffe 	push	{r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    3e14:	e3530004 	cmp	r3, #4
    3e18:	e1a07000 	mov	r7, r0
    3e1c:	e1a08001 	mov	r8, r1
    3e20:	e1a06002 	mov	r6, r2
    3e24:	e1a04003 	mov	r4, r3
    3e28:	e3a05000 	mov	r5, #0
    3e2c:	8a000008 	bhi	0x3e54
    3e30:	e3540000 	cmp	r4, #0
    3e34:	0a000006 	beq	0x3e54
    3e38:	e3540003 	cmp	r4, #3
    3e3c:	0a000004 	beq	0x3e54
    3e40:	e51fa2cc 	ldr	sl, [pc, #-716]	; 0x3b7c
    3e44:	e3560000 	cmp	r6, #0
    3e48:	028f0f5e 	addeq	r0, pc, #376	; 0x3fc8
    3e4c:	0a000037 	beq	0x3f30
    3e50:	ea000005 	b	0x3e6c
    3e54:	e28f0f62 	add	r0, pc, #392	; 0x3fe4
    3e58:	e1a01003 	mov	r1, r3
    3e5c:	eb00080a 	bl	0x5e8c
    3e60:	ea000033 	b	0x3f34
    3e64:	e24f0fbb 	sub	r0, pc, #748	; 0x4158
    3e68:	eb000807 	bl	0x5e8c
    3e6c:	e59a0000 	ldr	r0, [sl]
    3e70:	e3100007 	tst	r0, #7
    3e74:	1afffffa 	bne	0x3e64
    3e78:	e51f92f4 	ldr	r9, [pc, #-756]	; 0x3b8c
    3e7c:	e3a01000 	mov	r1, #0
    3e80:	e5891000 	str	r1, [r9]
    3e84:	e3a02001 	mov	r2, #1
    3e88:	e5892004 	str	r2, [r9, #4]
    3e8c:	e5891008 	str	r1, [r9, #8]
    3e90:	e1a00807 	lsl	r0, r7, #16
    3e94:	e51f32a4 	ldr	r3, [pc, #-676]	; 0x3bf8
    3e98:	e5830000 	str	r0, [r3]
    3e9c:	e1c30282 	bic	r0, r3, r2, lsl #5
    3ea0:	e5808000 	str	r8, [r0]
    3ea4:	e3540001 	cmp	r4, #1
    3ea8:	03a0508b 	moveq	r5, #139	; 0x8b
    3eac:	0a000004 	beq	0x3ec4
    3eb0:	e3540002 	cmp	r4, #2
    3eb4:	03a0509c 	moveq	r5, #156	; 0x9c
    3eb8:	0a000001 	beq	0x3ec4
    3ebc:	e3540004 	cmp	r4, #4
    3ec0:	03a050a6 	moveq	r5, #166	; 0xa6
    3ec4:	e59f0130 	ldr	r0, [pc, #304]	; 0x3ffc
    3ec8:	e5805000 	str	r5, [r0]
    3ecc:	e240002c 	sub	r0, r0, #44	; 0x2c
    3ed0:	e5903000 	ldr	r3, [r0]
    3ed4:	e3833080 	orr	r3, r3, #128	; 0x80
    3ed8:	e5803000 	str	r3, [r0]
    3edc:	ea00000c 	b	0x3f14
    3ee0:	e59a0000 	ldr	r0, [sl]
    3ee4:	e3100004 	tst	r0, #4
    3ee8:	15892008 	strne	r2, [r9, #8]
    3eec:	0a000001 	beq	0x3ef8
    3ef0:	e58a0000 	str	r0, [sl]
    3ef4:	ea000009 	b	0x3f20
    3ef8:	e3100002 	tst	r0, #2
    3efc:	17ef1450 	ubfxne	r1, r0, #8, #16
    3f00:	15891000 	strne	r1, [r9]
    3f04:	1afffff9 	bne	0x3ef0
    3f08:	e3100001 	tst	r0, #1
    3f0c:	15891004 	strne	r1, [r9, #4]
    3f10:	158a0000 	strne	r0, [sl]
    3f14:	e5990004 	ldr	r0, [r9, #4]
    3f18:	e3500000 	cmp	r0, #0
    3f1c:	1affffef 	bne	0x3ee0
    3f20:	e5990008 	ldr	r0, [r9, #8]
    3f24:	e3500000 	cmp	r0, #0
    3f28:	124f0fe7 	subne	r0, pc, #924	; 0x42cc
    3f2c:	0a000002 	beq	0x3f3c
    3f30:	eb0007d5 	bl	0x5e8c
    3f34:	e3e00000 	mvn	r0, #0
    3f38:	e8bd8ffe 	pop	{r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    3f3c:	e5990000 	ldr	r0, [r9]
    3f40:	e3500000 	cmp	r0, #0
    3f44:	059f00ac 	ldreq	r0, [pc, #172]	; 0x3ff8
    3f48:	05901000 	ldreq	r1, [r0]
    3f4c:	03a00000 	moveq	r0, #0
    3f50:	0a000035 	beq	0x402c
    3f54:	e5990000 	ldr	r0, [r9]
    3f58:	e5991000 	ldr	r1, [r9]
    3f5c:	e3100c01 	tst	r0, #256	; 0x100
    3f60:	124f0ff2 	subne	r0, pc, #968	; 0x4330
    3f64:	028f0074 	addeq	r0, pc, #116	; 0x3fe0
    3f68:	e5992000 	ldr	r2, [r9]
    3f6c:	e3110008 	tst	r1, #8
    3f70:	124f1ff3 	subne	r1, pc, #972	; 0x4344
    3f74:	028f1064 	addeq	r1, pc, #100	; 0x3fe0
    3f78:	e58d0008 	str	r0, [sp, #8]
    3f7c:	e3120004 	tst	r2, #4
    3f80:	e58d1004 	str	r1, [sp, #4]
    3f84:	124f2ff6 	subne	r2, pc, #984	; 0x4364
    3f88:	028f2050 	addeq	r2, pc, #80	; 0x3fe0
    3f8c:	e58d2000 	str	r2, [sp]
    3f90:	e5990000 	ldr	r0, [r9]
    3f94:	e3100002 	tst	r0, #2
    3f98:	e5990000 	ldr	r0, [r9]
    3f9c:	124f3ffa 	subne	r3, pc, #1000	; 0x438c
    3fa0:	028f3038 	addeq	r3, pc, #56	; 0x3fe0
    3fa4:	e5991000 	ldr	r1, [r9]
    3fa8:	e3100001 	tst	r0, #1
    3fac:	124f2e3f 	subne	r2, pc, #1008	; 0x43a4
    3fb0:	028f2028 	addeq	r2, pc, #40	; 0x3fe0
    3fb4:	e28f0044 	add	r0, pc, #68	; 0x4000
    3fb8:	eb0007b3 	bl	0x5e8c
    3fbc:	e5990000 	ldr	r0, [r9]
    3fc0:	e2600000 	rsb	r0, r0, #0
    3fc4:	e8bd8ffe 	pop	{r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}

    3fc8:	"data should not be NULL\n",0,0,0,0
    3fe4:	"error length %d\n",0,0,0,0
    3ff8:	0800341c 	stmdaeq	r0, {r2, r3, r4, sl, ip, sp}
    3ffc:	0800342c 	stmdaeq	r0, {r2, r3, r5, sl, ip, sp}
    4000:	"rsb read failed, flag 0x%x:%s%s%s%s%s !!\n",0,0,0

    402c:	e1500004 	cmp	r0, r4
    4030:	31a02180 	lslcc	r2, r0, #3
    4034:	31a02231 	lsrcc	r2, r1, r2
    4038:	37c62000 	strbcc	r2, [r6, r0]
    403c:	32800001 	addcc	r0, r0, #1
    4040:	23a00000 	movcs	r0, #0
    4044:	3afffff8 	bcc	0x402c
    4048:	e8bd8ffe 	pop	{r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    404c:	e92d4010 	push	{r4, lr}
    4050:	eb00073a 	bl	0x5d40
    4054:	e3a0207c 	mov	r2, #124	; 0x7c
    4058:	e3a0103e 	mov	r1, #62	; 0x3e
    405c:	e3a00000 	mov	r0, #0
    4060:	ebfffe21 	bl	0x38ec
    4064:	e3500000 	cmp	r0, #0
    4068:	18bd8010 	popne	{r4, pc}
    406c:	e30003a3 	movw	r0, #931	; 0x3a3
    4070:	e3a0102d 	mov	r1, #45	; 0x2d
    4074:	e8bd4010 	pop	{r4, lr}
    4078:	eafffe6d 	b	0x3a34
    407c:	e3a0002d 	mov	r0, #45	; 0x2d
    4080:	eaffff62 	b	0x3e10
    4084:	e3a0002d 	mov	r0, #45	; 0x2d
    4088:	eafffeea 	b	0x3c38
    408c:	e92d401c 	push	{r2, r3, r4, lr}
    4090:	e3a00000 	mov	r0, #0
    4094:	e5cd0000 	strb	r0, [sp]
    4098:	ebffffeb 	bl	0x404c
    409c:	e3a03001 	mov	r3, #1
    40a0:	e1a0200d 	mov	r2, sp
    40a4:	e3a01003 	mov	r1, #3
    40a8:	e3a00000 	mov	r0, #0
    40ac:	ebfffff2 	bl	0x407c
    40b0:	e3500000 	cmp	r0, #0
    40b4:	0a000002 	beq	0x40c4
    40b8:	e28f0e3d 	add	r0, pc, #976	; 0x4490
    40bc:	eb000772 	bl	0x5e8c
    40c0:	ea00000b 	b	0x40f4
    40c4:	e5dd1000 	ldrb	r1, [sp]
    40c8:	e28f0ff5 	add	r0, pc, #980	; 0x44a4
    40cc:	eb00076e 	bl	0x5e8c
    40d0:	e3a0000a 	mov	r0, #10
    40d4:	e3a03001 	mov	r3, #1
    40d8:	e28d2004 	add	r2, sp, #4
    40dc:	e3a01025 	mov	r1, #37	; 0x25
    40e0:	e5cd0004 	strb	r0, [sp, #4]
    40e4:	e3a00000 	mov	r0, #0
    40e8:	ebffffe5 	bl	0x4084
    40ec:	e3500000 	cmp	r0, #0
    40f0:	0a000000 	beq	0x40f8
    40f4:	e3e00000 	mvn	r0, #0
    40f8:	e8bd801c 	pop	{r2, r3, r4, pc}
    40fc:	e5903000 	ldr	r3, [r0]
    4100:	e1c31001 	bic	r1, r3, r1
    4104:	e1811002 	orr	r1, r1, r2
    4108:	e5801000 	str	r1, [r0]
    410c:	e12fff1e 	bx	lr
    4110:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    4114:	e24dd020 	sub	sp, sp, #32
    4118:	e3a01004 	mov	r1, #4
    411c:	e28db00c 	add	fp, sp, #12
    4120:	e1a04000 	mov	r4, r0
    4124:	e3a00006 	mov	r0, #6
    4128:	e3a0a004 	mov	sl, #4
    412c:	e58d1014 	str	r1, [sp, #20]
    4130:	e3a01080 	mov	r1, #128	; 0x80
    4134:	e58d1004 	str	r1, [sp, #4]
    4138:	e3a01000 	mov	r1, #0
    413c:	e58d1018 	str	r1, [sp, #24]
    4140:	e3a0600b 	mov	r6, #11
    4144:	e58d1008 	str	r1, [sp, #8]
    4148:	e3a010c3 	mov	r1, #195	; 0xc3
    414c:	e58d1000 	str	r1, [sp]
    4150:	e1a01000 	mov	r1, r0
    4154:	e88b0402 	stm	fp, {r1, sl}
    4158:	e594a05c 	ldr	sl, [r4, #92]	; 0x5c
    415c:	e3a08008 	mov	r8, #8
    4160:	e1a03006 	mov	r3, r6
    4164:	e3a09020 	mov	r9, #32
    4168:	e31a0002 	tst	sl, #2
    416c:	e3a0701c 	mov	r7, #28
    4170:	e1a0c006 	mov	ip, r6
    4174:	e1a02000 	mov	r2, r0
    4178:	e3a0500c 	mov	r5, #12
    417c:	e1a0e000 	mov	lr, r0
    4180:	1a0001a1 	bne	0x480c
    4184:	e594b000 	ldr	fp, [r4]
    4188:	e594a004 	ldr	sl, [r4, #4]
    418c:	e58da01c 	str	sl, [sp, #28]
    4190:	e35a0003 	cmp	sl, #3
    4194:	e1a010ab 	lsr	r1, fp, #1
    4198:	0a000005 	beq	0x41b4
    419c:	e35a0006 	cmp	sl, #6
    41a0:	e302b710 	movw	fp, #10000	; 0x2710
    41a4:	0a000075 	beq	0x4380
    41a8:	e35a0007 	cmp	sl, #7
    41ac:	0a0000fc 	beq	0x45a4
    41b0:	ea00016b 	b	0x4764
    41b4:	e300015e 	movw	r0, #350	; 0x15e
    41b8:	e30093e8 	movw	r9, #1000	; 0x3e8
    41bc:	e0020091 	mul	r2, r1, r0
    41c0:	e730f912 	udiv	r0, r2, r9
    41c4:	e0622099 	mls	r2, r9, r0, r2
    41c8:	e3520000 	cmp	r2, #0
    41cc:	13a02001 	movne	r2, #1
    41d0:	e0800002 	add	r0, r0, r2
    41d4:	e6ff0070 	uxth	r0, r0
    41d8:	e58d0004 	str	r0, [sp, #4]
    41dc:	e3010e78 	movw	r0, #7800	; 0x1e78
    41e0:	e0020091 	mul	r2, r1, r0
    41e4:	e730f912 	udiv	r0, r2, r9
    41e8:	e0622099 	mls	r2, r9, r0, r2
    41ec:	e3520000 	cmp	r2, #0
    41f0:	13a02001 	movne	r2, #1
    41f4:	e0800002 	add	r0, r0, r2
    41f8:	e7ef02d0 	ubfx	r0, r0, #5, #16
    41fc:	e58d0000 	str	r0, [sp]
    4200:	e0610201 	rsb	r0, r1, r1, lsl #4
    4204:	e73af910 	udiv	sl, r0, r9
    4208:	e0650a99 	mls	r5, r9, sl, r0
    420c:	e3550000 	cmp	r5, #0
    4210:	13a00001 	movne	r0, #1
    4214:	03a00000 	moveq	r0, #0
    4218:	e080000a 	add	r0, r0, sl
    421c:	e3550000 	cmp	r5, #0
    4220:	e20030ff 	and	r3, r0, #255	; 0xff
    4224:	13a00001 	movne	r0, #1
    4228:	03a00000 	moveq	r0, #0
    422c:	e080000a 	add	r0, r0, sl
    4230:	e200c0ff 	and	ip, r0, #255	; 0xff
    4234:	e3a00002 	mov	r0, #2
    4238:	e58d0014 	str	r0, [sp, #20]
    423c:	e3a00026 	mov	r0, #38	; 0x26
    4240:	e0020091 	mul	r2, r1, r0
    4244:	e730f912 	udiv	r0, r2, r9
    4248:	e0622099 	mls	r2, r9, r0, r2
    424c:	e3520000 	cmp	r2, #0
    4250:	13a02001 	movne	r2, #1
    4254:	e0800002 	add	r0, r0, r2
    4258:	e20070ff 	and	r7, r0, #255	; 0xff
    425c:	e1a00181 	lsl	r0, r1, #3
    4260:	e73ef910 	udiv	lr, r0, r9
    4264:	e0600e99 	mls	r0, r9, lr, r0
    4268:	e3500000 	cmp	r0, #0
    426c:	13a02001 	movne	r2, #1
    4270:	03a02000 	moveq	r2, #0
    4274:	e082200e 	add	r2, r2, lr
    4278:	e20220ff 	and	r2, r2, #255	; 0xff
    427c:	e3520004 	cmp	r2, #4
    4280:	33a02004 	movcc	r2, #4
    4284:	e3550000 	cmp	r5, #0
    4288:	13a05001 	movne	r5, #1
    428c:	e3500000 	cmp	r0, #0
    4290:	13a00001 	movne	r0, #1
    4294:	e080000e 	add	r0, r0, lr
    4298:	e200e0ff 	and	lr, r0, #255	; 0xff
    429c:	e5940014 	ldr	r0, [r4, #20]
    42a0:	e35e0004 	cmp	lr, #4
    42a4:	e3100004 	tst	r0, #4
    42a8:	33a0e004 	movcc	lr, #4
    42ac:	e085500a 	add	r5, r5, sl
    42b0:	e0810101 	add	r0, r1, r1, lsl #2
    42b4:	e20550ff 	and	r5, r5, #255	; 0xff
    42b8:	e1a0a080 	lsl	sl, r0, #1
    42bc:	e730f91a 	udiv	r0, sl, r9
    42c0:	e06aa099 	mls	sl, r9, r0, sl
    42c4:	0a000009 	beq	0x42f0
    42c8:	e35a0000 	cmp	sl, #0
    42cc:	13a0a001 	movne	sl, #1
    42d0:	e080000a 	add	r0, r0, sl
    42d4:	e1a0a001 	mov	sl, r1
    42d8:	e3a01032 	mov	r1, #50	; 0x32
    42dc:	e20000ff 	and	r0, r0, #255	; 0xff
    42e0:	e3500004 	cmp	r0, #4
    42e4:	e00a019a 	mul	sl, sl, r1
    42e8:	33a00004 	movcc	r0, #4
    42ec:	ea000007 	b	0x4310
    42f0:	e35a0000 	cmp	sl, #0
    42f4:	13a0a001 	movne	sl, #1
    42f8:	e080000a 	add	r0, r0, sl
    42fc:	e20000ff 	and	r0, r0, #255	; 0xff
    4300:	e081a101 	add	sl, r1, r1, lsl #2
    4304:	e3500004 	cmp	r0, #4
    4308:	e1a0a18a 	lsl	sl, sl, #3
    430c:	33a00004 	movcc	r0, #4
    4310:	e731f91a 	udiv	r1, sl, r9
    4314:	e069a199 	mls	r9, r9, r1, sl
    4318:	e3590000 	cmp	r9, #0
    431c:	13a09001 	movne	r9, #1
    4320:	e35b0e19 	cmp	fp, #400	; 0x190
    4324:	e0899001 	add	r9, r9, r1
    4328:	93a06006 	movls	r6, #6
    432c:	e20990ff 	and	r9, r9, #255	; 0xff
    4330:	93a08005 	movls	r8, #5
    4334:	93a01003 	movls	r1, #3
    4338:	9a000005 	bls	0x4354
    433c:	e3001215 	movw	r1, #533	; 0x215
    4340:	e151000b 	cmp	r1, fp
    4344:	23a06008 	movcs	r6, #8
    4348:	23a08006 	movcs	r8, #6
    434c:	23a01004 	movcs	r1, #4
    4350:	3a000003 	bcc	0x4364
    4354:	e28db00c 	add	fp, sp, #12
    4358:	e3a0a003 	mov	sl, #3
    435c:	e88b0402 	stm	fp, {r1, sl}
    4360:	ea0000ff 	b	0x4764
    4364:	e35b0fa7 	cmp	fp, #668	; 0x29c
    4368:	2a0000fd 	bcs	0x4764
    436c:	e3a0600a 	mov	r6, #10
    4370:	e3a08007 	mov	r8, #7
    4374:	e3a0a005 	mov	sl, #5
    4378:	e58da00c 	str	sl, [sp, #12]
    437c:	ea0000f8 	b	0x4764
    4380:	e3a00002 	mov	r0, #2
    4384:	e58d0010 	str	r0, [sp, #16]
    4388:	e3a000d2 	mov	r0, #210	; 0xd2
    438c:	e3a06008 	mov	r6, #8
    4390:	e3a08004 	mov	r8, #4
    4394:	e30023e8 	movw	r2, #1000	; 0x3e8
    4398:	e0000091 	mul	r0, r1, r0
    439c:	e733f210 	udiv	r3, r0, r2
    43a0:	e0600392 	mls	r0, r2, r3, r0
    43a4:	e58d800c 	str	r8, [sp, #12]
    43a8:	e3500000 	cmp	r0, #0
    43ac:	13a00001 	movne	r0, #1
    43b0:	e0800003 	add	r0, r0, r3
    43b4:	e6ff0070 	uxth	r0, r0
    43b8:	e58d0004 	str	r0, [sp, #4]
    43bc:	e0810181 	add	r0, r1, r1, lsl #3
    43c0:	e0800201 	add	r0, r0, r1, lsl #4
    43c4:	e733fb10 	udiv	r3, r0, fp
    43c8:	e060039b 	mls	r0, fp, r3, r0
    43cc:	e3500000 	cmp	r0, #0
    43d0:	13a00001 	movne	r0, #1
    43d4:	e0800003 	add	r0, r0, r3
    43d8:	e20000ff 	and	r0, r0, #255	; 0xff
    43dc:	e58d0008 	str	r0, [sp, #8]
    43e0:	e58d0018 	str	r0, [sp, #24]
    43e4:	e3000f3c 	movw	r0, #3900	; 0xf3c
    43e8:	e0030091 	mul	r3, r1, r0
    43ec:	e730f213 	udiv	r0, r3, r2
    43f0:	e0633092 	mls	r3, r2, r0, r3
    43f4:	e3530000 	cmp	r3, #0
    43f8:	13a03001 	movne	r3, #1
    43fc:	e0800003 	add	r0, r0, r3
    4400:	e7ef02d0 	ubfx	r0, r0, #5, #16
    4404:	e58d0000 	str	r0, [sp]
    4408:	e3a0002a 	mov	r0, #42	; 0x2a
    440c:	e0030091 	mul	r3, r1, r0
    4410:	e730f213 	udiv	r0, r3, r2
    4414:	e0633092 	mls	r3, r2, r0, r3
    4418:	e3530000 	cmp	r3, #0
    441c:	13a03001 	movne	r3, #1
    4420:	e0800003 	add	r0, r0, r3
    4424:	e20070ff 	and	r7, r0, #255	; 0xff
    4428:	e3570003 	cmp	r7, #3
    442c:	e1a00181 	lsl	r0, r1, #3
    4430:	33a07003 	movcc	r7, #3
    4434:	e739f210 	udiv	r9, r0, r2
    4438:	e06b0992 	mls	fp, r2, r9, r0
    443c:	e3a00002 	mov	r0, #2
    4440:	e58d0014 	str	r0, [sp, #20]
    4444:	e35b0000 	cmp	fp, #0
    4448:	13a00001 	movne	r0, #1
    444c:	03a00000 	moveq	r0, #0
    4450:	e0800009 	add	r0, r0, r9
    4454:	e20000ff 	and	r0, r0, #255	; 0xff
    4458:	e3500002 	cmp	r0, #2
    445c:	33a00002 	movcc	r0, #2
    4460:	e2800001 	add	r0, r0, #1
    4464:	e200e0ff 	and	lr, r0, #255	; 0xff
    4468:	e0810081 	add	r0, r1, r1, lsl #1
    446c:	e1a03180 	lsl	r3, r0, #3
    4470:	e730f213 	udiv	r0, r3, r2
    4474:	e0633092 	mls	r3, r2, r0, r3
    4478:	e3530000 	cmp	r3, #0
    447c:	13a03001 	movne	r3, #1
    4480:	e0800003 	add	r0, r0, r3
    4484:	e20030ff 	and	r3, r0, #255	; 0xff
    4488:	e3530003 	cmp	r3, #3
    448c:	ea000007 	b	0x44b0

    4490:	"Get pmu ID failed\n",0,0
    44a4:	"pm id=%x\n",0,0

    44b0:	e0810181 	add	r0, r1, r1, lsl #3
    44b4:	33a03003 	movcc	r3, #3
    44b8:	e0805080 	add	r5, r0, r0, lsl #1
    44bc:	e730f215 	udiv	r0, r5, r2
    44c0:	e0655092 	mls	r5, r2, r0, r5
    44c4:	e3550000 	cmp	r5, #0
    44c8:	13a05001 	movne	r5, #1
    44cc:	e0800005 	add	r0, r0, r5
    44d0:	e200c0ff 	and	ip, r0, #255	; 0xff
    44d4:	e35c0003 	cmp	ip, #3
    44d8:	e0615201 	rsb	r5, r1, r1, lsl #4
    44dc:	33a0c003 	movcc	ip, #3
    44e0:	e730f215 	udiv	r0, r5, r2
    44e4:	e0655092 	mls	r5, r2, r0, r5
    44e8:	e3550000 	cmp	r5, #0
    44ec:	13a05001 	movne	r5, #1
    44f0:	e0800005 	add	r0, r0, r5
    44f4:	e20050ff 	and	r5, r0, #255	; 0xff
    44f8:	e0810101 	add	r0, r1, r1, lsl #2
    44fc:	e3550003 	cmp	r5, #3
    4500:	e1a0a080 	lsl	sl, r0, #1
    4504:	33a05003 	movcc	r5, #3
    4508:	e30003e8 	movw	r0, #1000	; 0x3e8
    450c:	e732f01a 	udiv	r2, sl, r0
    4510:	e06aa290 	mls	sl, r0, r2, sl
    4514:	e35a0000 	cmp	sl, #0
    4518:	13a00001 	movne	r0, #1
    451c:	03a00000 	moveq	r0, #0
    4520:	e0800002 	add	r0, r0, r2
    4524:	e20000ff 	and	r0, r0, #255	; 0xff
    4528:	e3500002 	cmp	r0, #2
    452c:	33a00002 	movcc	r0, #2
    4530:	e35100c8 	cmp	r1, #200	; 0xc8
    4534:	8a000004 	bhi	0x454c
    4538:	e35a0000 	cmp	sl, #0
    453c:	13a09001 	movne	r9, #1
    4540:	03a09000 	moveq	r9, #0
    4544:	e0822009 	add	r2, r2, r9
    4548:	ea000003 	b	0x455c
    454c:	e35b0000 	cmp	fp, #0
    4550:	13a02001 	movne	r2, #1
    4554:	03a02000 	moveq	r2, #0
    4558:	e0822009 	add	r2, r2, r9
    455c:	e20220ff 	and	r2, r2, #255	; 0xff
    4560:	e3520002 	cmp	r2, #2
    4564:	33a02002 	movcc	r2, #2
    4568:	e35100a6 	cmp	r1, #166	; 0xa6
    456c:	83a0a032 	movhi	sl, #50	; 0x32
    4570:	90619201 	rsbls	r9, r1, r1, lsl #4
    4574:	800a0a91 	mulhi	sl, r1, sl
    4578:	91a0a109 	lslls	sl, r9, #2
    457c:	e30093e8 	movw	r9, #1000	; 0x3e8
    4580:	e731f91a 	udiv	r1, sl, r9
    4584:	e069a199 	mls	r9, r9, r1, sl
    4588:	e3590000 	cmp	r9, #0
    458c:	13a09001 	movne	r9, #1
    4590:	e0899001 	add	r9, r9, r1
    4594:	e20990ff 	and	r9, r9, #255	; 0xff
    4598:	e3590008 	cmp	r9, #8
    459c:	33a09008 	movcc	r9, #8
    45a0:	ea00006f 	b	0x4764
    45a4:	e3a00003 	mov	r0, #3
    45a8:	e58d0010 	str	r0, [sp, #16]
    45ac:	e3a00002 	mov	r0, #2
    45b0:	e58d0014 	str	r0, [sp, #20]
    45b4:	e0810181 	add	r0, r1, r1, lsl #3
    45b8:	e3a0600c 	mov	r6, #12
    45bc:	e0800201 	add	r0, r0, r1, lsl #4
    45c0:	e3a08006 	mov	r8, #6
    45c4:	e732fb10 	udiv	r2, r0, fp
    45c8:	e060029b 	mls	r0, fp, r2, r0
    45cc:	e30033e8 	movw	r3, #1000	; 0x3e8
    45d0:	e3500000 	cmp	r0, #0
    45d4:	13a00001 	movne	r0, #1
    45d8:	e0800002 	add	r0, r0, r2
    45dc:	e20000ff 	and	r0, r0, #255	; 0xff
    45e0:	e58d0008 	str	r0, [sp, #8]
    45e4:	e58d0018 	str	r0, [sp, #24]
    45e8:	e3a000d2 	mov	r0, #210	; 0xd2
    45ec:	e0020091 	mul	r2, r1, r0
    45f0:	e730f312 	udiv	r0, r2, r3
    45f4:	e0622093 	mls	r2, r3, r0, r2
    45f8:	e3520000 	cmp	r2, #0
    45fc:	13a02001 	movne	r2, #1
    4600:	e0800002 	add	r0, r0, r2
    4604:	e6ff0070 	uxth	r0, r0
    4608:	e58d0004 	str	r0, [sp, #4]
    460c:	e1a00181 	lsl	r0, r1, #3
    4610:	e732f310 	udiv	r2, r0, r3
    4614:	e0600293 	mls	r0, r3, r2, r0
    4618:	e0615201 	rsb	r5, r1, r1, lsl #4
    461c:	e739f315 	udiv	r9, r5, r3
    4620:	e06b5993 	mls	fp, r3, r9, r5
    4624:	e3500000 	cmp	r0, #0
    4628:	e1a0a003 	mov	sl, r3
    462c:	13a03001 	movne	r3, #1
    4630:	03a03000 	moveq	r3, #0
    4634:	e0833002 	add	r3, r3, r2
    4638:	e203e0ff 	and	lr, r3, #255	; 0xff
    463c:	e0813081 	add	r3, r1, r1, lsl #1
    4640:	e35e0004 	cmp	lr, #4
    4644:	e1a05183 	lsl	r5, r3, #3
    4648:	33a0e004 	movcc	lr, #4
    464c:	e733fa15 	udiv	r3, r5, sl
    4650:	e065539a 	mls	r5, sl, r3, r5
    4654:	e3550000 	cmp	r5, #0
    4658:	13a05001 	movne	r5, #1
    465c:	e0833005 	add	r3, r3, r5
    4660:	e20330ff 	and	r3, r3, #255	; 0xff
    4664:	e0815181 	add	r5, r1, r1, lsl #3
    4668:	e3530003 	cmp	r3, #3
    466c:	e0857085 	add	r7, r5, r5, lsl #1
    4670:	33a03003 	movcc	r3, #3
    4674:	e735fa17 	udiv	r5, r7, sl
    4678:	e067759a 	mls	r7, sl, r5, r7
    467c:	e3570000 	cmp	r7, #0
    4680:	13a07001 	movne	r7, #1
    4684:	e0855007 	add	r5, r5, r7
    4688:	e205c0ff 	and	ip, r5, #255	; 0xff
    468c:	e3a0502a 	mov	r5, #42	; 0x2a
    4690:	e35c0003 	cmp	ip, #3
    4694:	e0070591 	mul	r7, r1, r5
    4698:	33a0c003 	movcc	ip, #3
    469c:	e735fa17 	udiv	r5, r7, sl
    46a0:	e067759a 	mls	r7, sl, r5, r7
    46a4:	e3570000 	cmp	r7, #0
    46a8:	13a07001 	movne	r7, #1
    46ac:	e0855007 	add	r5, r5, r7
    46b0:	e20570ff 	and	r7, r5, #255	; 0xff
    46b4:	e3570003 	cmp	r7, #3
    46b8:	33a07003 	movcc	r7, #3
    46bc:	e35b0000 	cmp	fp, #0
    46c0:	13a05001 	movne	r5, #1
    46c4:	03a05000 	moveq	r5, #0
    46c8:	e0855009 	add	r5, r5, r9
    46cc:	e20550ff 	and	r5, r5, #255	; 0xff
    46d0:	e3550004 	cmp	r5, #4
    46d4:	33a05004 	movcc	r5, #4
    46d8:	e3500000 	cmp	r0, #0
    46dc:	13a00001 	movne	r0, #1
    46e0:	e0800002 	add	r0, r0, r2
    46e4:	e20020ff 	and	r2, r0, #255	; 0xff
    46e8:	e0810101 	add	r0, r1, r1, lsl #2
    46ec:	e3520004 	cmp	r2, #4
    46f0:	e1a09080 	lsl	r9, r0, #1
    46f4:	33a02004 	movcc	r2, #4
    46f8:	e730fa19 	udiv	r0, r9, sl
    46fc:	e069909a 	mls	r9, sl, r0, r9
    4700:	e3590000 	cmp	r9, #0
    4704:	13a09001 	movne	r9, #1
    4708:	e0800009 	add	r0, r0, r9
    470c:	e3a09032 	mov	r9, #50	; 0x32
    4710:	e20000ff 	and	r0, r0, #255	; 0xff
    4714:	e00b0991 	mul	fp, r1, r9
    4718:	e3500004 	cmp	r0, #4
    471c:	33a00004 	movcc	r0, #4
    4720:	e739fa1b 	udiv	r9, fp, sl
    4724:	e06bb99a 	mls	fp, sl, r9, fp
    4728:	e35b0000 	cmp	fp, #0
    472c:	13a0b001 	movne	fp, #1
    4730:	e089900b 	add	r9, r9, fp
    4734:	e300bf3c 	movw	fp, #3900	; 0xf3c
    4738:	e20990ff 	and	r9, r9, #255	; 0xff
    473c:	e00b0b91 	mul	fp, r1, fp
    4740:	e3590008 	cmp	r9, #8
    4744:	33a09008 	movcc	r9, #8
    4748:	e731fa1b 	udiv	r1, fp, sl
    474c:	e06ab19a 	mls	sl, sl, r1, fp
    4750:	e35a0000 	cmp	sl, #0
    4754:	13a0a001 	movne	sl, #1
    4758:	e081100a 	add	r1, r1, sl
    475c:	e7ef12d1 	ubfx	r1, r1, #5, #16
    4760:	e58d1000 	str	r1, [sp]
    4764:	e186a288 	orr	sl, r6, r8, lsl #5
    4768:	e59d1014 	ldr	r1, [sp, #20]
    476c:	e18a3503 	orr	r3, sl, r3, lsl #10
    4770:	e1830780 	orr	r0, r3, r0, lsl #15
    4774:	e1800a09 	orr	r0, r0, r9, lsl #20
    4778:	e1800c81 	orr	r0, r0, r1, lsl #25
    477c:	e5840028 	str	r0, [r4, #40]	; 0x28
    4780:	e187028c 	orr	r0, r7, ip, lsl #5
    4784:	e1800505 	orr	r0, r0, r5, lsl #10
    4788:	e180078e 	orr	r0, r0, lr, lsl #15
    478c:	e1801a02 	orr	r1, r0, r2, lsl #20
    4790:	e59d0018 	ldr	r0, [sp, #24]
    4794:	e1811c80 	orr	r1, r1, r0, lsl #25
    4798:	e59d0008 	ldr	r0, [sp, #8]
    479c:	e1810e00 	orr	r0, r1, r0, lsl #28
    47a0:	e584002c 	str	r0, [r4, #44]	; 0x2c
    47a4:	e1cd00d0 	ldrd	r0, [sp]
    47a8:	e1801601 	orr	r1, r0, r1, lsl #12
    47ac:	e59d000c 	ldr	r0, [sp, #12]
    47b0:	e1811a80 	orr	r1, r1, r0, lsl #21
    47b4:	e59d0010 	ldr	r0, [sp, #16]
    47b8:	e1810d00 	orr	r0, r1, r0, lsl #26
    47bc:	e5840030 	str	r0, [r4, #48]	; 0x30
    47c0:	e59d001c 	ldr	r0, [sp, #28]
    47c4:	e3500003 	cmp	r0, #3
    47c8:	0a000011 	beq	0x4814
    47cc:	e1a00285 	lsl	r0, r5, #5
    47d0:	e3a010e0 	mov	r1, #224	; 0xe0
    47d4:	e2402040 	sub	r2, r0, #64	; 0x40
    47d8:	e284001c 	add	r0, r4, #28
    47dc:	ebfffe46 	bl	0x40fc
    47e0:	e5940004 	ldr	r0, [r4, #4]
    47e4:	e3a01007 	mov	r1, #7
    47e8:	e3500006 	cmp	r0, #6
    47ec:	e284001c 	add	r0, r4, #28
    47f0:	03a02002 	moveq	r2, #2
    47f4:	13a02003 	movne	r2, #3
    47f8:	ebfffe3f 	bl	0x40fc
    47fc:	e2462002 	sub	r2, r6, #2
    4800:	e3a0100f 	mov	r1, #15
    4804:	e2840020 	add	r0, r4, #32
    4808:	ebfffe3b 	bl	0x40fc
    480c:	e28dd020 	add	sp, sp, #32
    4810:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    4814:	e1a00188 	lsl	r0, r8, #3
    4818:	e3a01038 	mov	r1, #56	; 0x38
    481c:	e2402028 	sub	r2, r0, #40	; 0x28
    4820:	e2840020 	add	r0, r4, #32
    4824:	ebfffe34 	bl	0x40fc
    4828:	e1a00485 	lsl	r0, r5, #9
    482c:	e3001e00 	movw	r1, #3584	; 0xe00
    4830:	e2402b02 	sub	r2, r0, #2048	; 0x800
    4834:	e2840018 	add	r0, r4, #24
    4838:	ebfffe2f 	bl	0x40fc
    483c:	e2465004 	sub	r5, r6, #4
    4840:	e3a01070 	mov	r1, #112	; 0x70
    4844:	e1a00e85 	lsl	r0, r5, #29
    4848:	e1a02ca0 	lsr	r2, r0, #25
    484c:	e2840018 	add	r0, r4, #24
    4850:	ebfffe29 	bl	0x40fc
    4854:	e1a001c5 	asr	r0, r5, #3
    4858:	e3a01004 	mov	r1, #4
    485c:	e1a02100 	lsl	r2, r0, #2
    4860:	e2840018 	add	r0, r4, #24
    4864:	eaffffe7 	b	0x4808
    4868:	e92d4030 	push	{r4, r5, lr}
    486c:	e59f2334 	ldr	r2, [pc, #820]	; 0x4ba8
    4870:	e3a05000 	mov	r5, #0
    4874:	e1a03005 	mov	r3, r5
    4878:	e732f210 	udiv	r2, r0, r2
    487c:	e3510001 	cmp	r1, #1
    4880:	13500e1e 	cmpne	r0, #480	; 0x1e0
    4884:	859f1320 	ldrhi	r1, [pc, #800]	; 0x4bac
    4888:	93a03001 	movls	r3, #1
    488c:	8732f110 	udivhi	r2, r0, r1
    4890:	e3a01406 	mov	r1, #100663296	; 0x6000000
    4894:	e1a00903 	lsl	r0, r3, #18
    4898:	e1800402 	orr	r0, r0, r2, lsl #8
    489c:	e3800102 	orr	r0, r0, #-2147483648	; 0x80000000
    48a0:	e5810014 	str	r0, [r1, #20]
    48a4:	e3800101 	orr	r0, r0, #1073741824	; 0x40000000
    48a8:	e5810014 	str	r0, [r1, #20]
    48ac:	e3a04005 	mov	r4, #5
    48b0:	e591009c 	ldr	r0, [r1, #156]	; 0x9c
    48b4:	e1a00430 	lsr	r0, r0, r4
    48b8:	e3100001 	tst	r0, #1
    48bc:	0afffffb 	beq	0x48b0
    48c0:	e59f02e4 	ldr	r0, [pc, #740]	; 0x4bac
    48c4:	e2851001 	add	r1, r5, #1
    48c8:	e0000092 	mul	r0, r2, r0
    48cc:	e730f110 	udiv	r0, r0, r1
    48d0:	e2831001 	add	r1, r3, #1
    48d4:	e730f110 	udiv	r0, r0, r1
    48d8:	e8bd8030 	pop	{r4, r5, pc}
    48dc:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    48e0:	e59f52c8 	ldr	r5, [pc, #712]	; 0x4bb0
    48e4:	e1a04000 	mov	r4, r0
    48e8:	e5950000 	ldr	r0, [r5]
    48ec:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
    48f0:	e5850000 	str	r0, [r5]
    48f4:	e2857f47 	add	r7, r5, #284	; 0x11c
    48f8:	e5970000 	ldr	r0, [r7]
    48fc:	e3c00901 	bic	r0, r0, #16384	; 0x4000
    4900:	e5870000 	str	r0, [r7]
    4904:	e5940000 	ldr	r0, [r4]
    4908:	e3a06001 	mov	r6, #1
    490c:	e5942048 	ldr	r2, [r4, #72]	; 0x48
    4910:	e3500e19 	cmp	r0, #400	; 0x190
    4914:	e1c62002 	bic	r2, r6, r2
    4918:	93a01001 	movls	r1, #1
    491c:	83a01000 	movhi	r1, #0
    4920:	e1911002 	orrs	r1, r1, r2
    4924:	159f1288 	ldrne	r1, [pc, #648]	; 0x4bb4
    4928:	059f1288 	ldreq	r1, [pc, #648]	; 0x4bb8
    492c:	e0000190 	mul	r0, r0, r1
    4930:	13a01000 	movne	r1, #0
    4934:	03a01001 	moveq	r1, #1
    4938:	01a000a0 	lsreq	r0, r0, #1
    493c:	ebffffc9 	bl	0x4868
    4940:	e594005c 	ldr	r0, [r4, #92]	; 0x5c
    4944:	e310070f 	tst	r0, #3932160	; 0x3c0000
    4948:	0a000011 	beq	0x4994
    494c:	e28f0f9a 	add	r0, pc, #616	; 0x4bbc
    4950:	eb00054d 	bl	0x5e8c
    4954:	e3a02406 	mov	r2, #100663296	; 0x6000000
    4958:	e5920014 	ldr	r0, [r2, #20]
    495c:	e594105c 	ldr	r1, [r4, #92]	; 0x5c
    4960:	e2000801 	and	r0, r0, #65536	; 0x10000
    4964:	e3110701 	tst	r1, #262144	; 0x40000
    4968:	159f1264 	ldrne	r1, [pc, #612]	; 0x4bd4
    496c:	e1a00820 	lsr	r0, r0, #16
    4970:	0a00005a 	beq	0x4ae0
    4974:	e1810980 	orr	r0, r1, r0, lsl #19
    4978:	e5820114 	str	r0, [r2, #276]	; 0x114
    497c:	e5920014 	ldr	r0, [r2, #20]
    4980:	e3800441 	orr	r0, r0, #1090519040	; 0x41000000
    4984:	e5820014 	str	r0, [r2, #20]
    4988:	e5920014 	ldr	r0, [r2, #20]
    498c:	e3100101 	tst	r0, #1073741824	; 0x40000000
    4990:	1afffffc 	bne	0x4988
    4994:	e3a00802 	mov	r0, #131072	; 0x20000
    4998:	ebfffaf2 	bl	0x3568
    499c:	e59f8234 	ldr	r8, [pc, #564]	; 0x4bd8
    49a0:	e5980000 	ldr	r0, [r8]
    49a4:	e3c00901 	bic	r0, r0, #16384	; 0x4000
    49a8:	e5880000 	str	r0, [r8]
    49ac:	e5970000 	ldr	r0, [r7]
    49b0:	e3c00901 	bic	r0, r0, #16384	; 0x4000
    49b4:	e5870000 	str	r0, [r7]
    49b8:	e3a00014 	mov	r0, #20
    49bc:	ebfffae9 	bl	0x3568
    49c0:	e5970000 	ldr	r0, [r7]
    49c4:	e3800901 	orr	r0, r0, #16384	; 0x4000
    49c8:	e5870000 	str	r0, [r7]
    49cc:	e5980000 	ldr	r0, [r8]
    49d0:	e3800901 	orr	r0, r0, #16384	; 0x4000
    49d4:	e5880000 	str	r0, [r8]
    49d8:	e3a00014 	mov	r0, #20
    49dc:	ebfffae1 	bl	0x3568
    49e0:	e59f01f8 	ldr	r0, [pc, #504]	; 0x4be0
    49e4:	e59f31f0 	ldr	r3, [pc, #496]	; 0x4bdc
    49e8:	e5803250 	str	r3, [r0, #592]	; 0x250
    49ec:	e3a0701f 	mov	r7, #31
    49f0:	e5807258 	str	r7, [r0, #600]	; 0x258
    49f4:	e187cc07 	orr	ip, r7, r7, lsl #24
    49f8:	e580c25c 	str	ip, [r0, #604]	; 0x25c
    49fc:	e3a010ff 	mov	r1, #255	; 0xff
    4a00:	e5801260 	str	r1, [r0, #608]	; 0x260
    4a04:	e281e40f 	add	lr, r1, #251658240	; 0xf000000
    4a08:	e580e264 	str	lr, [r0, #612]	; 0x264
    4a0c:	e5801268 	str	r1, [r0, #616]	; 0x268
    4a10:	e18e2840 	orr	r2, lr, r0, asr #16
    4a14:	e580226c 	str	r2, [r0, #620]	; 0x26c
    4a18:	e2800a01 	add	r0, r0, #4096	; 0x1000
    4a1c:	e5803250 	str	r3, [r0, #592]	; 0x250
    4a20:	e5807258 	str	r7, [r0, #600]	; 0x258
    4a24:	e580c25c 	str	ip, [r0, #604]	; 0x25c
    4a28:	e5801260 	str	r1, [r0, #608]	; 0x260
    4a2c:	e580e264 	str	lr, [r0, #612]	; 0x264
    4a30:	e5801268 	str	r1, [r0, #616]	; 0x268
    4a34:	e580226c 	str	r2, [r0, #620]	; 0x26c
    4a38:	e3a00014 	mov	r0, #20
    4a3c:	ebfffac9 	bl	0x3568
    4a40:	e3a00a13 	mov	r0, #77824	; 0x13000
    4a44:	e5850000 	str	r0, [r5]
    4a48:	e5950000 	ldr	r0, [r5]
    4a4c:	e3100801 	tst	r0, #65536	; 0x10000
    4a50:	1afffffc 	bne	0x4a48
    4a54:	e5950000 	ldr	r0, [r5]
    4a58:	e3800102 	orr	r0, r0, #-2147483648	; 0x80000000
    4a5c:	e5850000 	str	r0, [r5]
    4a60:	e5941048 	ldr	r1, [r4, #72]	; 0x48
    4a64:	e5940000 	ldr	r0, [r4]
    4a68:	e1c61001 	bic	r1, r6, r1
    4a6c:	e59f6170 	ldr	r6, [pc, #368]	; 0x4be4
    4a70:	e3500e19 	cmp	r0, #400	; 0x190
    4a74:	93a00001 	movls	r0, #1
    4a78:	83a00000 	movhi	r0, #0
    4a7c:	e1900001 	orrs	r0, r0, r1
    4a80:	e5960004 	ldr	r0, [r6, #4]
    4a84:	13800101 	orrne	r0, r0, #1073741824	; 0x40000000
    4a88:	13800901 	orrne	r0, r0, #16384	; 0x4000
    4a8c:	03c00101 	biceq	r0, r0, #1073741824	; 0x40000000
    4a90:	03c00901 	biceq	r0, r0, #16384	; 0x4000
    4a94:	e5860004 	str	r0, [r6, #4]
    4a98:	13a00002 	movne	r0, #2
    4a9c:	03a00000 	moveq	r0, #0
    4aa0:	e5860010 	str	r0, [r6, #16]
    4aa4:	e5960004 	ldr	r0, [r6, #4]
    4aa8:	e3c05102 	bic	r5, r0, #-2147483648	; 0x80000000
    4aac:	e3c55902 	bic	r5, r5, #32768	; 0x8000
    4ab0:	e5865004 	str	r5, [r6, #4]
    4ab4:	e3a00014 	mov	r0, #20
    4ab8:	ebfffaaa 	bl	0x3568
    4abc:	e5940014 	ldr	r0, [r4, #20]
    4ac0:	e7e30450 	ubfx	r0, r0, #8, #4
    4ac4:	e3500002 	cmp	r0, #2
    4ac8:	03850102 	orreq	r0, r5, #-2147483648	; 0x80000000
    4acc:	03800902 	orreq	r0, r0, #32768	; 0x8000
    4ad0:	13850902 	orrne	r0, r5, #32768	; 0x8000
    4ad4:	e5860004 	str	r0, [r6, #4]
    4ad8:	e3a00001 	mov	r0, #1
    4adc:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    4ae0:	e3110702 	tst	r1, #524288	; 0x80000
    4ae4:	159f10fc 	ldrne	r1, [pc, #252]	; 0x4be8
    4ae8:	1affffa1 	bne	0x4974
    4aec:	e3110601 	tst	r1, #1048576	; 0x100000
    4af0:	159f10f4 	ldrne	r1, [pc, #244]	; 0x4bec
    4af4:	1affff9e 	bne	0x4974
    4af8:	e3110602 	tst	r1, #2097152	; 0x200000
    4afc:	159f10ec 	ldrne	r1, [pc, #236]	; 0x4bf0
    4b00:	1affff9b 	bne	0x4974
    4b04:	eaffff9c 	b	0x497c
    4b08:	e5902004 	ldr	r2, [r0, #4]
    4b0c:	e3a01501 	mov	r1, #4194304	; 0x400000
    4b10:	e2022007 	and	r2, r2, #7
    4b14:	e1812802 	orr	r2, r1, r2, lsl #16
    4b18:	e5901010 	ldr	r1, [r0, #16]
    4b1c:	e7e03e51 	ubfx	r3, r1, #28, #1
    4b20:	e1822103 	orr	r2, r2, r3, lsl #2
    4b24:	e7e73a51 	ubfx	r3, r1, #20, #8
    4b28:	e2433001 	sub	r3, r3, #1
    4b2c:	e203300f 	and	r3, r3, #15
    4b30:	e7e31851 	ubfx	r1, r1, #16, #4
    4b34:	e1823203 	orr	r3, r2, r3, lsl #4
    4b38:	e5902014 	ldr	r2, [r0, #20]
    4b3c:	e3120001 	tst	r2, #1
    4b40:	13a00001 	movne	r0, #1
    4b44:	03a00003 	moveq	r0, #3
    4b48:	e3510001 	cmp	r1, #1
    4b4c:	e1830600 	orr	r0, r3, r0, lsl #12
    4b50:	e7e13652 	ubfx	r3, r2, #12, #2
    4b54:	e2433001 	sub	r3, r3, #1
    4b58:	e1800003 	orr	r0, r0, r3
    4b5c:	03800c07 	orreq	r0, r0, #1792	; 0x700
    4b60:	0a000008 	beq	0x4b88
    4b64:	e3510002 	cmp	r1, #2
    4b68:	03800b02 	orreq	r0, r0, #2048	; 0x800
    4b6c:	0a000005 	beq	0x4b88
    4b70:	e3510004 	cmp	r1, #4
    4b74:	03800c09 	orreq	r0, r0, #2304	; 0x900
    4b78:	0a000002 	beq	0x4b88
    4b7c:	e3510008 	cmp	r1, #8
    4b80:	13800c06 	orrne	r0, r0, #1536	; 0x600
    4b84:	03800c0a 	orreq	r0, r0, #2560	; 0xa00
    4b88:	e7e31452 	ubfx	r1, r2, #8, #4
    4b8c:	e3510002 	cmp	r1, #2
    4b90:	e59f104c 	ldr	r1, [pc, #76]	; 0x4be4
    4b94:	03800716 	orreq	r0, r0, #5767168	; 0x580000
    4b98:	13c00706 	bicne	r0, r0, #1572864	; 0x180000
    4b9c:	e5810000 	str	r0, [r1]
    4ba0:	e3a00001 	mov	r0, #1
    4ba4:	e12fff1e 	bx	lr

    4ba8:	00b71b00
    4bac:	016e3600
    4bb0:	06000484
    4bb4:	001e8480
    4bb8:	000f4240

    4bd4:	d2063333 	andle	r3, r6, #-872415232	; 0xcc000000
    4bd8:	06000580 	streq	r0, [r0], -r0, lsl #11
    4bdc:	0f802001 	svceq	0x00802001
    4be0:	01c63000 	biceq	r3, r6, r0
    4be4:	01c62000 	biceq	r2, r6, r0
    4be8:	cd866666 	stcgt	6, cr6, [r6, #408]	; 0x198
    4bec:	c9069999 	stmdbgt	r6, {r0, r3, r4, r7, r8, fp, ip, pc}
    4bf0:	c486cccc 	strgt	ip, [r6], #3276	; 0xccc
    4bf4:	e51f0018 	ldr	r0, [pc, #-24]	; 0x4be4
    4bf8:	e5900000 	ldr	r0, [r0]
    4bfc:	e7e31450 	ubfx	r1, r0, #8, #4
    4c00:	e2411006 	sub	r1, r1, #6
    4c04:	e7e32250 	ubfx	r2, r0, #4, #4
    4c08:	e0811002 	add	r1, r1, r2
    4c0c:	e2811001 	add	r1, r1, #1
    4c10:	e7e12150 	ubfx	r2, r0, #2, #2
    4c14:	e0811002 	add	r1, r1, r2
    4c18:	e2002003 	and	r2, r0, #3
    4c1c:	e2811002 	add	r1, r1, #2
    4c20:	e0811002 	add	r1, r1, r2
    4c24:	e7e009d0 	ubfx	r0, r0, #19, #1
    4c28:	e0800001 	add	r0, r0, r1
    4c2c:	e3a01001 	mov	r1, #1
    4c30:	e240000b 	sub	r0, r0, #11
    4c34:	e1a00011 	lsl	r0, r1, r0
    4c38:	e12fff1e 	bx	lr
    4c3c:	e92d4ff3 	push	{r0, r1, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    4c40:	e24dd03c 	sub	sp, sp, #60	; 0x3c
    4c44:	e1a05001 	mov	r5, r1
    4c48:	e28d4014 	add	r4, sp, #20
    4c4c:	e3a09000 	mov	r9, #0
    4c50:	e3a0e801 	mov	lr, #65536	; 0x10000
    4c54:	e59d003c 	ldr	r0, [sp, #60]	; 0x3c
    4c58:	e1a07600 	lsl	r7, r0, #12
    4c5c:	e5910028 	ldr	r0, [r1, #40]	; 0x28
    4c60:	e7e41550 	ubfx	r1, r0, #10, #5
    4c64:	e58d1020 	str	r1, [sp, #32]
    4c68:	e7e417d0 	ubfx	r1, r0, #15, #5
    4c6c:	e58d1008 	str	r1, [sp, #8]
    4c70:	e7e41a50 	ubfx	r1, r0, #20, #5
    4c74:	e58d1034 	str	r1, [sp, #52]	; 0x34
    4c78:	e7e40cd0 	ubfx	r0, r0, #25, #5
    4c7c:	e58d0038 	str	r0, [sp, #56]	; 0x38
    4c80:	e595002c 	ldr	r0, [r5, #44]	; 0x2c
    4c84:	e200301f 	and	r3, r0, #31
    4c88:	e7e417d0 	ubfx	r1, r0, #15, #5
    4c8c:	e58d100c 	str	r1, [sp, #12]
    4c90:	e7e41a50 	ubfx	r1, r0, #20, #5
    4c94:	e58d1010 	str	r1, [sp, #16]
    4c98:	e7e21cd0 	ubfx	r1, r0, #25, #3
    4c9c:	e7e462d0 	ubfx	r6, r0, #5, #5
    4ca0:	e7e4c550 	ubfx	ip, r0, #10, #5
    4ca4:	e7e20e50 	ubfx	r0, r0, #28, #3
    4ca8:	e1cd02f4 	strd	r0, [sp, #36]	; 0x24
    4cac:	e88d0048 	stm	sp, {r3, r6}
    4cb0:	e5952030 	ldr	r2, [r5, #48]	; 0x30
    4cb4:	e1a03002 	mov	r3, r2
    4cb8:	e7e80652 	ubfx	r0, r2, #12, #9
    4cbc:	e7df361f 	bfc	r3, #12, #20
    4cc0:	e8840009 	stm	r4, {r0, r3}
    4cc4:	e7e41ad2 	ubfx	r1, r2, #21, #5
    4cc8:	e7e40d52 	ubfx	r0, r2, #26, #5
    4ccc:	e0832183 	add	r2, r3, r3, lsl #3
    4cd0:	e59d3000 	ldr	r3, [sp]
    4cd4:	e0833006 	add	r3, r3, r6
    4cd8:	e58d301c 	str	r3, [sp, #28]
    4cdc:	e5958000 	ldr	r8, [r5]
    4ce0:	e30031f4 	movw	r3, #500	; 0x1f4
    4ce4:	e59d603c 	ldr	r6, [sp, #60]	; 0x3c
    4ce8:	e1a042a2 	lsr	r4, r2, #5
    4cec:	e5952004 	ldr	r2, [r5, #4]
    4cf0:	e0030398 	mul	r3, r8, r3
    4cf4:	e3520003 	cmp	r2, #3
    4cf8:	e1a06606 	lsl	r6, r6, #12
    4cfc:	e2866507 	add	r6, r6, #29360128	; 0x1c00000
    4d00:	018e3523 	orreq	r3, lr, r3, lsr #10
    4d04:	e2866a63 	add	r6, r6, #405504	; 0x63000
    4d08:	11a03523 	lsrne	r3, r3, #10
    4d0c:	11a03803 	lslne	r3, r3, #16
    4d10:	e58630d0 	str	r3, [r6, #208]	; 0xd0
    4d14:	e586e0d4 	str	lr, [r6, #212]	; 0xd4
    4d18:	e5953004 	ldr	r3, [r5, #4]
    4d1c:	e3530006 	cmp	r3, #6
    4d20:	13530007 	cmpne	r3, #7
    4d24:	0a00000c 	beq	0x4d5c
    4d28:	e595e018 	ldr	lr, [r5, #24]
    4d2c:	e595301c 	ldr	r3, [r5, #28]
    4d30:	e183380e 	orr	r3, r3, lr, lsl #16
    4d34:	e58630dc 	str	r3, [r6, #220]	; 0xdc
    4d38:	e595e020 	ldr	lr, [r5, #32]
    4d3c:	e5953024 	ldr	r3, [r5, #36]	; 0x24
    4d40:	e183380e 	orr	r3, r3, lr, lsl #16
    4d44:	e58630e0 	str	r3, [r6, #224]	; 0xe0
    4d48:	e5953004 	ldr	r3, [r5, #4]
    4d4c:	e3530006 	cmp	r3, #6
    4d50:	13530007 	cmpne	r3, #7
    4d54:	0a000007 	beq	0x4d78
    4d58:	ea00001b 	b	0x4dcc
    4d5c:	e595e01c 	ldr	lr, [r5, #28]
    4d60:	e5953020 	ldr	r3, [r5, #32]
    4d64:	e183380e 	orr	r3, r3, lr, lsl #16
    4d68:	e58630dc 	str	r3, [r6, #220]	; 0xdc
    4d6c:	e5953024 	ldr	r3, [r5, #36]	; 0x24
    4d70:	e1a03803 	lsl	r3, r3, #16
    4d74:	eafffff2 	b	0x4d44
    4d78:	e595e000 	ldr	lr, [r5]
    4d7c:	e21e301f 	ands	r3, lr, #31
    4d80:	13a03001 	movne	r3, #1
    4d84:	e08332ae 	add	r3, r3, lr, lsr #5
    4d88:	e1a03403 	lsl	r3, r3, #8
    4d8c:	e3833005 	orr	r3, r3, #5
    4d90:	e58630d8 	str	r3, [r6, #216]	; 0xd8
    4d94:	e5953000 	ldr	r3, [r5]
    4d98:	e1a02003 	mov	r2, r3
    4d9c:	e213301f 	ands	r3, r3, #31
    4da0:	13a03001 	movne	r3, #1
    4da4:	e08332a2 	add	r3, r3, r2, lsr #5
    4da8:	e1a0e803 	lsl	lr, r3, #16
    4dac:	e0823102 	add	r3, r2, r2, lsl #2
    4db0:	e0822102 	add	r2, r2, r2, lsl #2
    4db4:	e1b03b83 	lsls	r3, r3, #23
    4db8:	e1a02082 	lsl	r2, r2, #1
    4dbc:	13a03001 	movne	r3, #1
    4dc0:	e0833522 	add	r3, r3, r2, lsr #10
    4dc4:	e183300e 	orr	r3, r3, lr
    4dc8:	e58630e4 	str	r3, [r6, #228]	; 0xe4
    4dcc:	e59d3000 	ldr	r3, [sp]
    4dd0:	e183e404 	orr	lr, r3, r4, lsl #8
    4dd4:	e59d3034 	ldr	r3, [sp, #52]	; 0x34
    4dd8:	e3a04402 	mov	r4, #33554432	; 0x2000000
    4ddc:	e18e2803 	orr	r2, lr, r3, lsl #16
    4de0:	e080300c 	add	r3, r0, ip
    4de4:	e0843c03 	add	r3, r4, r3, lsl #24
    4de8:	e1833002 	orr	r3, r3, r2
    4dec:	e5863100 	str	r3, [r6, #256]	; 0x100
    4df0:	e59d300c 	ldr	r3, [sp, #12]
    4df4:	e59d201c 	ldr	r2, [sp, #28]
    4df8:	e1823403 	orr	r3, r2, r3, lsl #8
    4dfc:	e3833702 	orr	r3, r3, #524288	; 0x80000
    4e00:	e5863104 	str	r3, [r6, #260]	; 0x104
    4e04:	e59d3010 	ldr	r3, [sp, #16]
    4e08:	e3004500 	movw	r4, #1280	; 0x500
    4e0c:	e0844401 	add	r4, r4, r1, lsl #8
    4e10:	e0833000 	add	r3, r3, r0
    4e14:	e2833002 	add	r3, r3, #2
    4e18:	e1833004 	orr	r3, r3, r4
    4e1c:	e1833801 	orr	r3, r3, r1, lsl #16
    4e20:	e1833c00 	orr	r3, r3, r0, lsl #24
    4e24:	e5863108 	str	r3, [r6, #264]	; 0x108
    4e28:	e59f3850 	ldr	r3, [pc, #2128]	; 0x5680
    4e2c:	e586310c 	str	r3, [r6, #268]	; 0x10c
    4e30:	e59d3008 	ldr	r3, [sp, #8]
    4e34:	e59d4004 	ldr	r4, [sp, #4]
    4e38:	e59dc038 	ldr	ip, [sp, #56]	; 0x38
    4e3c:	e1843403 	orr	r3, r4, r3, lsl #8
    4e40:	e183480c 	orr	r4, r3, ip, lsl #16
    4e44:	e59d3020 	ldr	r3, [sp, #32]
    4e48:	e1843c03 	orr	r3, r4, r3, lsl #24
    4e4c:	e5863110 	str	r3, [r6, #272]	; 0x110
    4e50:	e59f382c 	ldr	r3, [pc, #2092]	; 0x5684
    4e54:	e5863114 	str	r3, [r6, #276]	; 0x114
    4e58:	e59f3828 	ldr	r3, [pc, #2088]	; 0x5688
    4e5c:	e5863118 	str	r3, [r6, #280]	; 0x118
    4e60:	e3a03008 	mov	r3, #8
    4e64:	e5863120 	str	r3, [r6, #288]	; 0x120
    4e68:	e28d2014 	add	r2, sp, #20
    4e6c:	e8920018 	ldm	r2, {r3, r4}
    4e70:	e1833804 	orr	r3, r3, r4, lsl #16
    4e74:	e5863064 	str	r3, [r6, #100]	; 0x64
    4e78:	e5953004 	ldr	r3, [r5, #4]
    4e7c:	e3530003 	cmp	r3, #3
    4e80:	059f3804 	ldreq	r3, [pc, #2052]	; 0x568c
    4e84:	02400002 	subeq	r0, r0, #2
    4e88:	159f3800 	ldrne	r3, [pc, #2048]	; 0x5690
    4e8c:	12400001 	subne	r0, r0, #1
    4e90:	e0831801 	add	r1, r3, r1, lsl #16
    4e94:	e1800001 	orr	r0, r0, r1
    4e98:	e3800402 	orr	r0, r0, #33554432	; 0x2000000
    4e9c:	e3800c01 	orr	r0, r0, #256	; 0x100
    4ea0:	e310001f 	tst	r0, #31
    4ea4:	03800001 	orreq	r0, r0, #1
    4ea8:	e5860190 	str	r0, [r6, #400]	; 0x190
    4eac:	e3a00000 	mov	r0, #0
    4eb0:	e58601b0 	str	r0, [r6, #432]	; 0x1b0
    4eb4:	e3a00102 	mov	r0, #-2147483648	; 0x80000000
    4eb8:	e58601a0 	str	r0, [r6, #416]	; 0x1a0
    4ebc:	e51f42e0 	ldr	r4, [pc, #-736]	; 0x4be4
    4ec0:	e5940010 	ldr	r0, [r4, #16]
    4ec4:	e3800008 	orr	r0, r0, #8
    4ec8:	e5840010 	str	r0, [r4, #16]
    4ecc:	e3a00064 	mov	r0, #100	; 0x64
    4ed0:	ebfff9a4 	bl	0x3568
    4ed4:	e59601a8 	ldr	r0, [r6, #424]	; 0x1a8
    4ed8:	e7db081f 	bfc	r0, #16, #12
    4edc:	e3800605 	orr	r0, r0, #5242880	; 0x500000
    4ee0:	e58601a8 	str	r0, [r6, #424]	; 0x1a8
    4ee4:	e5940010 	ldr	r0, [r4, #16]
    4ee8:	e3c00008 	bic	r0, r0, #8
    4eec:	e5840010 	str	r0, [r4, #16]
    4ef0:	e5953014 	ldr	r3, [r5, #20]
    4ef4:	e3a00002 	mov	r0, #2
    4ef8:	e5951004 	ldr	r1, [r5, #4]
    4efc:	e1500623 	cmp	r0, r3, lsr #12
    4f00:	03a00403 	moveq	r0, #50331648	; 0x3000000
    4f04:	13a00401 	movne	r0, #16777216	; 0x1000000
    4f08:	e3510002 	cmp	r1, #2
    4f0c:	0a000006 	beq	0x4f2c
    4f10:	e3510003 	cmp	r1, #3
    4f14:	0a000006 	beq	0x4f34
    4f18:	e3510006 	cmp	r1, #6
    4f1c:	0a000002 	beq	0x4f2c
    4f20:	e3510007 	cmp	r1, #7
    4f24:	0a000002 	beq	0x4f34
    4f28:	ea000071 	b	0x50f4
    4f2c:	e3800802 	orr	r0, r0, #131072	; 0x20000
    4f30:	ea000000 	b	0x4f38
    4f34:	e3800701 	orr	r0, r0, #262144	; 0x40000
    4f38:	e3130001 	tst	r3, #1
    4f3c:	e595305c 	ldr	r3, [r5, #92]	; 0x5c
    4f40:	13800a01 	orrne	r0, r0, #4096	; 0x1000
    4f44:	e3130020 	tst	r3, #32
    4f48:	13800b01 	orrne	r0, r0, #1024	; 0x400
    4f4c:	e3510002 	cmp	r1, #2
    4f50:	0a000008 	beq	0x4f78
    4f54:	e3510003 	cmp	r1, #3
    4f58:	03800001 	orreq	r0, r0, #1
    4f5c:	0a000005 	beq	0x4f78
    4f60:	e3510006 	cmp	r1, #6
    4f64:	03800004 	orreq	r0, r0, #4
    4f68:	0a000002 	beq	0x4f78
    4f6c:	e3510007 	cmp	r1, #7
    4f70:	03800008 	orreq	r0, r0, #8
    4f74:	1a00005e 	bne	0x50f4
    4f78:	e5860000 	str	r0, [r6]
    4f7c:	e5950004 	ldr	r0, [r5, #4]
    4f80:	e3500006 	cmp	r0, #6
    4f84:	13500007 	cmpne	r0, #7
    4f88:	059f0704 	ldreq	r0, [pc, #1796]	; 0x5694
    4f8c:	05860180 	streq	r0, [r6, #384]	; 0x180
    4f90:	059f0700 	ldreq	r0, [pc, #1792]	; 0x5698
    4f94:	0a000004 	beq	0x4fac
    4f98:	e3500003 	cmp	r0, #3
    4f9c:	059f06f8 	ldreq	r0, [pc, #1784]	; 0x569c
    4fa0:	05860180 	streq	r0, [r6, #384]	; 0x180
    4fa4:	03000100 	movweq	r0, #256	; 0x100
    4fa8:	1a000000 	bne	0x4fb0
    4fac:	e5860184 	str	r0, [r6, #388]	; 0x184
    4fb0:	e3a02001 	mov	r2, #1
    4fb4:	e58621b0 	str	r2, [r6, #432]	; 0x1b0
    4fb8:	e5862060 	str	r2, [r6, #96]	; 0x60
    4fbc:	e3000400 	movw	r0, #1024	; 0x400
    4fc0:	e595105c 	ldr	r1, [r5, #92]	; 0x5c
    4fc4:	e3110020 	tst	r1, #32
    4fc8:	e5951010 	ldr	r1, [r5, #16]
    4fcc:	11800900 	orrne	r0, r0, r0, lsl #18
    4fd0:	e3110201 	tst	r1, #268435456	; 0x10000000
    4fd4:	e5951004 	ldr	r1, [r5, #4]
    4fd8:	13800008 	orrne	r0, r0, #8
    4fdc:	e3510002 	cmp	r1, #2
    4fe0:	03800002 	orreq	r0, r0, #2
    4fe4:	0a000006 	beq	0x5004
    4fe8:	e3510003 	cmp	r1, #3
    4fec:	03800003 	orreq	r0, r0, #3
    4ff0:	13510006 	cmpne	r1, #6
    4ff4:	0a000002 	beq	0x5004
    4ff8:	e3510007 	cmp	r1, #7
    4ffc:	03800001 	orreq	r0, r0, #1
    5000:	1a00003b 	bne	0x50f4
    5004:	e2874507 	add	r4, r7, #29360128	; 0x1c00000
    5008:	e2844a65 	add	r4, r4, #413696	; 0x65000
    500c:	e5840088 	str	r0, [r4, #136]	; 0x88
    5010:	e5950004 	ldr	r0, [r5, #4]
    5014:	e3500006 	cmp	r0, #6
    5018:	13500007 	cmpne	r0, #7
    501c:	05940084 	ldreq	r0, [r4, #132]	; 0x84
    5020:	03c000c0 	biceq	r0, r0, #192	; 0xc0
    5024:	05840084 	streq	r0, [r4, #132]	; 0x84
    5028:	e5950018 	ldr	r0, [r5, #24]
    502c:	e7df069f 	bfc	r0, #13, #19
    5030:	e584009c 	str	r0, [r4, #156]	; 0x9c
    5034:	e595001c 	ldr	r0, [r5, #28]
    5038:	e7df069f 	bfc	r0, #13, #19
    503c:	e58400a0 	str	r0, [r4, #160]	; 0xa0
    5040:	e5950020 	ldr	r0, [r5, #32]
    5044:	e7df059f 	bfc	r0, #11, #21
    5048:	e58400a4 	str	r0, [r4, #164]	; 0xa4
    504c:	e5950024 	ldr	r0, [r5, #36]	; 0x24
    5050:	e200000f 	and	r0, r0, #15
    5054:	e58400a8 	str	r0, [r4, #168]	; 0xa8
    5058:	e1cd00dc 	ldrd	r0, [sp, #12]
    505c:	e1800201 	orr	r0, r0, r1, lsl #4
    5060:	e59d1004 	ldr	r1, [sp, #4]
    5064:	e1801401 	orr	r1, r0, r1, lsl #8
    5068:	e59d0020 	ldr	r0, [sp, #32]
    506c:	e1810600 	orr	r0, r1, r0, lsl #12
    5070:	e59d1000 	ldr	r1, [sp]
    5074:	e1801801 	orr	r1, r0, r1, lsl #16
    5078:	e59d0008 	ldr	r0, [sp, #8]
    507c:	e1810b00 	orr	r0, r1, r0, lsl #22
    5080:	e59d101c 	ldr	r1, [sp, #28]
    5084:	e1803d01 	orr	r3, r0, r1, lsl #26
    5088:	e584308c 	str	r3, [r4, #140]	; 0x8c
    508c:	e59d3034 	ldr	r3, [sp, #52]	; 0x34
    5090:	e59dc014 	ldr	ip, [sp, #20]
    5094:	e1a03283 	lsl	r3, r3, #5
    5098:	e183058c 	orr	r0, r3, ip, lsl #11
    509c:	e3800012 	orr	r0, r0, #18
    50a0:	e380058a 	orr	r0, r0, #578813952	; 0x22800000
    50a4:	e5840090 	str	r0, [r4, #144]	; 0x90
    50a8:	e59f05f0 	ldr	r0, [pc, #1520]	; 0x56a0
    50ac:	e5840094 	str	r0, [r4, #148]	; 0x94
    50b0:	e1cd02d4 	ldrd	r0, [sp, #36]	; 0x24
    50b4:	e1800181 	orr	r0, r0, r1, lsl #3
    50b8:	e5840098 	str	r0, [r4, #152]	; 0x98
    50bc:	e59f05e0 	ldr	r0, [pc, #1504]	; 0x56a4
    50c0:	e5840024 	str	r0, [r4, #36]	; 0x24
    50c4:	e59f05dc 	ldr	r0, [pc, #1500]	; 0x56a8
    50c8:	e5840028 	str	r0, [r4, #40]	; 0x28
    50cc:	e30013e8 	movw	r1, #1000	; 0x3e8
    50d0:	e5950004 	ldr	r0, [r5, #4]
    50d4:	e3500006 	cmp	r0, #6
    50d8:	13500007 	cmpne	r0, #7
    50dc:	0a000007 	beq	0x5100
    50e0:	e3500003 	cmp	r0, #3
    50e4:	0a000012 	beq	0x5134
    50e8:	e3500002 	cmp	r0, #2
    50ec:	0a00001c 	beq	0x5164
    50f0:	ea000026 	b	0x5190
    50f4:	e3a00000 	mov	r0, #0
    50f8:	e28dd044 	add	sp, sp, #68	; 0x44
    50fc:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    5100:	e3a00064 	mov	r0, #100	; 0x64
    5104:	e0000098 	mul	r0, r8, r0
    5108:	e730f110 	udiv	r0, r0, r1
    510c:	e280a001 	add	sl, r0, #1
    5110:	e0880188 	add	r0, r8, r8, lsl #3
    5114:	e0800208 	add	r0, r0, r8, lsl #4
    5118:	e0820180 	add	r0, r2, r0, lsl #3
    511c:	e58d002c 	str	r0, [sp, #44]	; 0x2c
    5120:	e0880088 	add	r0, r8, r8, lsl #1
    5124:	e0800188 	add	r0, r0, r8, lsl #3
    5128:	e082b080 	add	fp, r2, r0, lsl #1
    512c:	e0820088 	add	r0, r2, r8, lsl #1
    5130:	ea000015 	b	0x518c
    5134:	e0880088 	add	r0, r8, r8, lsl #1
    5138:	e0600388 	rsb	r0, r0, r8, lsl #7
    513c:	e082a100 	add	sl, r2, r0, lsl #2
    5140:	e3000168 	movw	r0, #360	; 0x168
    5144:	e0000098 	mul	r0, r8, r0
    5148:	e730f110 	udiv	r0, r0, r1
    514c:	e2800001 	add	r0, r0, #1
    5150:	e58d002c 	str	r0, [sp, #44]	; 0x2c
    5154:	e0880188 	add	r0, r8, r8, lsl #3
    5158:	e0800208 	add	r0, r0, r8, lsl #4
    515c:	e082b180 	add	fp, r2, r0, lsl #3
    5160:	ea000008 	b	0x5188
    5164:	e0880188 	add	r0, r8, r8, lsl #3
    5168:	e0800208 	add	r0, r0, r8, lsl #4
    516c:	e082a180 	add	sl, r2, r0, lsl #3
    5170:	e3000190 	movw	r0, #400	; 0x190
    5174:	e0000098 	mul	r0, r8, r0
    5178:	e730f110 	udiv	r0, r0, r1
    517c:	e2800001 	add	r0, r0, #1
    5180:	e1a0b00a 	mov	fp, sl
    5184:	e58d002c 	str	r0, [sp, #44]	; 0x2c
    5188:	e2880001 	add	r0, r8, #1
    518c:	e58d0030 	str	r0, [sp, #48]	; 0x30
    5190:	e59d002c 	ldr	r0, [sp, #44]	; 0x2c
    5194:	e18a0a00 	orr	r0, sl, r0, lsl #20
    5198:	e5840030 	str	r0, [r4, #48]	; 0x30
    519c:	e59d0030 	ldr	r0, [sp, #48]	; 0x30
    51a0:	e18b0900 	orr	r0, fp, r0, lsl #18
    51a4:	e5840034 	str	r0, [r4, #52]	; 0x34
    51a8:	e5951014 	ldr	r1, [r5, #20]
    51ac:	e3030007 	movw	r0, #12295	; 0x3007
    51b0:	e1a08002 	mov	r8, r2
    51b4:	e7e31651 	ubfx	r1, r1, #12, #4
    51b8:	ea000002 	b	0x51c8
    51bc:	e2892018 	add	r2, r9, #24
    51c0:	e2899001 	add	r9, r9, #1
    51c4:	e1800218 	orr	r0, r0, r8, lsl r2
    51c8:	e1510009 	cmp	r1, r9
    51cc:	8afffffa 	bhi	0x51bc
    51d0:	e58400b0 	str	r0, [r4, #176]	; 0xb0
    51d4:	e5950014 	ldr	r0, [r5, #20]
    51d8:	e3100001 	tst	r0, #1
    51dc:	059f04c8 	ldreq	r0, [pc, #1224]	; 0x56ac
    51e0:	13a00000 	movne	r0, #0
    51e4:	e5840380 	str	r0, [r4, #896]	; 0x380
    51e8:	e59f14c0 	ldr	r1, [pc, #1216]	; 0x56b0
    51ec:	e7810007 	str	r0, [r1, r7]
    51f0:	e5940244 	ldr	r0, [r4, #580]	; 0x244
    51f4:	e5951008 	ldr	r1, [r5, #8]
    51f8:	e3c000ff 	bic	r0, r0, #255	; 0xff
    51fc:	e20110ff 	and	r1, r1, #255	; 0xff
    5200:	e1800001 	orr	r0, r0, r1
    5204:	e5840244 	str	r0, [r4, #580]	; 0x244
    5208:	e5940254 	ldr	r0, [r4, #596]	; 0x254
    520c:	e5951008 	ldr	r1, [r5, #8]
    5210:	e3c000ff 	bic	r0, r0, #255	; 0xff
    5214:	e7e71451 	ubfx	r1, r1, #8, #8
    5218:	e1800001 	orr	r0, r0, r1
    521c:	e5840254 	str	r0, [r4, #596]	; 0x254
    5220:	e5940264 	ldr	r0, [r4, #612]	; 0x264
    5224:	e5951008 	ldr	r1, [r5, #8]
    5228:	e3c000ff 	bic	r0, r0, #255	; 0xff
    522c:	e7e71851 	ubfx	r1, r1, #16, #8
    5230:	e1800001 	orr	r0, r0, r1
    5234:	e5840264 	str	r0, [r4, #612]	; 0x264
    5238:	e595000c 	ldr	r0, [r5, #12]
    523c:	e59f3470 	ldr	r3, [pc, #1136]	; 0x56b4
    5240:	e3500000 	cmp	r0, #0
    5244:	e5940288 	ldr	r0, [r4, #648]	; 0x288
    5248:	e2832004 	add	r2, r3, #4
    524c:	e7cf001f 	bfc	r0, #0, #16
    5250:	0a00001b 	beq	0x52c4
    5254:	e5840288 	str	r0, [r4, #648]	; 0x288
    5258:	e594028c 	ldr	r0, [r4, #652]	; 0x28c
    525c:	e3c00a03 	bic	r0, r0, #12288	; 0x3000
    5260:	e3c00030 	bic	r0, r0, #48	; 0x30
    5264:	e584028c 	str	r0, [r4, #652]	; 0x28c
    5268:	e5940308 	ldr	r0, [r4, #776]	; 0x308
    526c:	e7cf001f 	bfc	r0, #0, #16
    5270:	e5840308 	str	r0, [r4, #776]	; 0x308
    5274:	e594030c 	ldr	r0, [r4, #780]	; 0x30c
    5278:	e3c00a03 	bic	r0, r0, #12288	; 0x3000
    527c:	e3c00030 	bic	r0, r0, #48	; 0x30
    5280:	e584030c 	str	r0, [r4, #780]	; 0x30c
    5284:	e5940388 	ldr	r0, [r4, #904]	; 0x388
    5288:	e7cf001f 	bfc	r0, #0, #16
    528c:	e5840388 	str	r0, [r4, #904]	; 0x388
    5290:	e594038c 	ldr	r0, [r4, #908]	; 0x38c
    5294:	e3c00a03 	bic	r0, r0, #12288	; 0x3000
    5298:	e3c00030 	bic	r0, r0, #48	; 0x30
    529c:	e584038c 	str	r0, [r4, #908]	; 0x38c
    52a0:	e0870003 	add	r0, r7, r3
    52a4:	e5901000 	ldr	r1, [r0]
    52a8:	e7cf101f 	bfc	r1, #0, #16
    52ac:	e5801000 	str	r1, [r0]
    52b0:	e0870002 	add	r0, r7, r2
    52b4:	e5901000 	ldr	r1, [r0]
    52b8:	e3c11a03 	bic	r1, r1, #12288	; 0x3000
    52bc:	e3c11030 	bic	r1, r1, #48	; 0x30
    52c0:	ea00006a 	b	0x5470
    52c4:	e30a1aaa 	movw	r1, #43690	; 0xaaaa
    52c8:	e1800001 	orr	r0, r0, r1
    52cc:	e5840288 	str	r0, [r4, #648]	; 0x288
    52d0:	e5940308 	ldr	r0, [r4, #776]	; 0x308
    52d4:	e7cf001f 	bfc	r0, #0, #16
    52d8:	e1800001 	orr	r0, r0, r1
    52dc:	e5840308 	str	r0, [r4, #776]	; 0x308
    52e0:	e5940388 	ldr	r0, [r4, #904]	; 0x388
    52e4:	e7cf001f 	bfc	r0, #0, #16
    52e8:	e1800001 	orr	r0, r0, r1
    52ec:	e5840388 	str	r0, [r4, #904]	; 0x388
    52f0:	e0870003 	add	r0, r7, r3
    52f4:	e5903000 	ldr	r3, [r0]
    52f8:	e7cf301f 	bfc	r3, #0, #16
    52fc:	e1811003 	orr	r1, r1, r3
    5300:	e5801000 	str	r1, [r0]
    5304:	e5950004 	ldr	r0, [r5, #4]
    5308:	e3500003 	cmp	r0, #3
    530c:	0a00003f 	beq	0x5410
    5310:	e3a00012 	mov	r0, #18
    5314:	e584028c 	str	r0, [r4, #652]	; 0x28c
    5318:	e584030c 	str	r0, [r4, #780]	; 0x30c
    531c:	e584038c 	str	r0, [r4, #908]	; 0x38c
    5320:	e7870002 	str	r0, [r7, r2]
    5324:	e59f038c 	ldr	r0, [pc, #908]	; 0x56b8
    5328:	e5840240 	str	r0, [r4, #576]	; 0x240
    532c:	e5840250 	str	r0, [r4, #592]	; 0x250
    5330:	e5840260 	str	r0, [r4, #608]	; 0x260
    5334:	e5960060 	ldr	r0, [r6, #96]	; 0x60
    5338:	e3800001 	orr	r0, r0, #1
    533c:	e5860060 	str	r0, [r6, #96]	; 0x60
    5340:	e5940084 	ldr	r0, [r4, #132]	; 0x84
    5344:	e380040f 	orr	r0, r0, #251658240	; 0xf000000
    5348:	e5840084 	str	r0, [r4, #132]	; 0x84
    534c:	e594000c 	ldr	r0, [r4, #12]
    5350:	e3c00506 	bic	r0, r0, #25165824	; 0x1800000
    5354:	e3800301 	orr	r0, r0, #67108864	; 0x4000000
    5358:	e3800080 	orr	r0, r0, #128	; 0x80
    535c:	e584000c 	str	r0, [r4, #12]
    5360:	e5940020 	ldr	r0, [r4, #32]
    5364:	e3800706 	orr	r0, r0, #1572864	; 0x180000
    5368:	e5840020 	str	r0, [r4, #32]
    536c:	e5950000 	ldr	r0, [r5]
    5370:	e5951048 	ldr	r1, [r5, #72]	; 0x48
    5374:	e3500e19 	cmp	r0, #400	; 0x190
    5378:	e1c81001 	bic	r1, r8, r1
    537c:	93a00001 	movls	r0, #1
    5380:	83a00000 	movhi	r0, #0
    5384:	e1900001 	orrs	r0, r0, r1
    5388:	15940020 	ldrne	r0, [r4, #32]
    538c:	1380020a 	orrne	r0, r0, #-1610612736	; 0xa0000000
    5390:	15840020 	strne	r0, [r4, #32]
    5394:	e5940008 	ldr	r0, [r4, #8]
    5398:	e3c0003f 	bic	r0, r0, #63	; 0x3f
    539c:	e5840008 	str	r0, [r4, #8]
    53a0:	e59d103c 	ldr	r1, [sp, #60]	; 0x3c
    53a4:	e28f0e31 	add	r0, pc, #784	; 0x56bc
    53a8:	eb0002b7 	bl	0x5e8c
    53ac:	e5950000 	ldr	r0, [r5]
    53b0:	e5951048 	ldr	r1, [r5, #72]	; 0x48
    53b4:	e3500e19 	cmp	r0, #400	; 0x190
    53b8:	e1c81001 	bic	r1, r8, r1
    53bc:	93a00001 	movls	r0, #1
    53c0:	83a00000 	movhi	r0, #0
    53c4:	e1900001 	orrs	r0, r0, r1
    53c8:	e5951004 	ldr	r1, [r5, #4]
    53cc:	13a00802 	movne	r0, #131072	; 0x20000
    53d0:	e3510003 	cmp	r1, #3
    53d4:	03001df3 	movweq	r1, #3571	; 0xdf3
    53d8:	130c1573 	movwne	r1, #50547	; 0xc573
    53dc:	e1800001 	orr	r0, r0, r1
    53e0:	e5840004 	str	r0, [r4, #4]
    53e4:	e30003e8 	movw	r0, #1000	; 0x3e8
    53e8:	ebfff85e 	bl	0x3568
    53ec:	e5940018 	ldr	r0, [r4, #24]
    53f0:	e3100001 	tst	r0, #1
    53f4:	0afffffc 	beq	0x53ec
    53f8:	e5950014 	ldr	r0, [r5, #20]
    53fc:	e7e30650 	ubfx	r0, r0, #12, #4
    5400:	e3500002 	cmp	r0, #2
    5404:	03a09000 	moveq	r9, #0
    5408:	0a00001a 	beq	0x5478
    540c:	ea00004c 	b	0x5544
    5410:	e594028c 	ldr	r0, [r4, #652]	; 0x28c
    5414:	e3c00a03 	bic	r0, r0, #12288	; 0x3000
    5418:	e3c00030 	bic	r0, r0, #48	; 0x30
    541c:	e3800a02 	orr	r0, r0, #8192	; 0x2000
    5420:	e3800020 	orr	r0, r0, #32
    5424:	e584028c 	str	r0, [r4, #652]	; 0x28c
    5428:	e594030c 	ldr	r0, [r4, #780]	; 0x30c
    542c:	e3c00a03 	bic	r0, r0, #12288	; 0x3000
    5430:	e3c00030 	bic	r0, r0, #48	; 0x30
    5434:	e3800a02 	orr	r0, r0, #8192	; 0x2000
    5438:	e3800020 	orr	r0, r0, #32
    543c:	e584030c 	str	r0, [r4, #780]	; 0x30c
    5440:	e594038c 	ldr	r0, [r4, #908]	; 0x38c
    5444:	e3c00a03 	bic	r0, r0, #12288	; 0x3000
    5448:	e3c00030 	bic	r0, r0, #48	; 0x30
    544c:	e3800a02 	orr	r0, r0, #8192	; 0x2000
    5450:	e3800020 	orr	r0, r0, #32
    5454:	e584038c 	str	r0, [r4, #908]	; 0x38c
    5458:	e0870002 	add	r0, r7, r2
    545c:	e5901000 	ldr	r1, [r0]
    5460:	e3c11a03 	bic	r1, r1, #12288	; 0x3000
    5464:	e3c11030 	bic	r1, r1, #48	; 0x30
    5468:	e3811a02 	orr	r1, r1, #8192	; 0x2000
    546c:	e3811020 	orr	r1, r1, #32
    5470:	e5801000 	str	r1, [r0]
    5474:	eaffffaa 	b	0x5324
    5478:	e0870389 	add	r0, r7, r9, lsl #7
    547c:	e280a507 	add	sl, r0, #29360128	; 0x1c00000
    5480:	e28aaa65 	add	sl, sl, #413696	; 0x65000
    5484:	e59a02c0 	ldr	r0, [sl, #704]	; 0x2c0
    5488:	e200b0ff 	and	fp, r0, #255	; 0xff
    548c:	e7e70450 	ubfx	r0, r0, #8, #8
    5490:	e58d0004 	str	r0, [sp, #4]
    5494:	e59a02c8 	ldr	r0, [sl, #712]	; 0x2c8
    5498:	e2001007 	and	r1, r0, #7
    549c:	e58d1008 	str	r1, [sp, #8]
    54a0:	e7e201d0 	ubfx	r0, r0, #3, #3
    54a4:	e58d000c 	str	r0, [sp, #12]
    54a8:	e59a02c4 	ldr	r0, [sl, #708]	; 0x2c4
    54ac:	e7e78450 	ubfx	r8, r0, #8, #8
    54b0:	e59d000c 	ldr	r0, [sp, #12]
    54b4:	e1510000 	cmp	r1, r0
    54b8:	0a000003 	beq	0x54cc
    54bc:	e59d103c 	ldr	r1, [sp, #60]	; 0x3c
    54c0:	e28f0f81 	add	r0, pc, #516	; 0x56cc
    54c4:	e1a02009 	mov	r2, r9
    54c8:	eb00026f 	bl	0x5e8c
    54cc:	e59d0004 	ldr	r0, [sp, #4]
    54d0:	e20b10f8 	and	r1, fp, #248	; 0xf8
    54d4:	e20000f8 	and	r0, r0, #248	; 0xf8
    54d8:	e1510000 	cmp	r1, r0
    54dc:	0a000003 	beq	0x54f0
    54e0:	e59d103c 	ldr	r1, [sp, #60]	; 0x3c
    54e4:	e28f0c02 	add	r0, pc, #512	; 0x56ec
    54e8:	e1a02009 	mov	r2, r9
    54ec:	eb000266 	bl	0x5e8c
    54f0:	e59d0004 	ldr	r0, [sp, #4]
    54f4:	e08b2000 	add	r2, fp, r0
    54f8:	e1cd00d8 	ldrd	r0, [sp, #8]
    54fc:	e0800001 	add	r0, r0, r1
    5500:	e3a01000 	mov	r1, #0
    5504:	e0202890 	mla	r0, r0, r8, r2
    5508:	e1a000a0 	lsr	r0, r0, #1
    550c:	e1580000 	cmp	r8, r0
    5510:	90400008 	subls	r0, r0, r8
    5514:	92811001 	addls	r1, r1, #1
    5518:	9afffffb 	bls	0x550c
    551c:	e1800400 	orr	r0, r0, r0, lsl #8
    5520:	e58a02c0 	str	r0, [sl, #704]	; 0x2c0
    5524:	e59a02c8 	ldr	r0, [sl, #712]	; 0x2c8
    5528:	e1811181 	orr	r1, r1, r1, lsl #3
    552c:	e3c0003f 	bic	r0, r0, #63	; 0x3f
    5530:	e1800001 	orr	r0, r0, r1
    5534:	e58a02c8 	str	r0, [sl, #712]	; 0x2c8
    5538:	e2899001 	add	r9, r9, #1
    553c:	e3590004 	cmp	r9, #4
    5540:	3affffcc 	bcc	0x5478
    5544:	e5950004 	ldr	r0, [r5, #4]
    5548:	e3500006 	cmp	r0, #6
    554c:	13500007 	cmpne	r0, #7
    5550:	1a000006 	bne	0x5570
    5554:	e5940084 	ldr	r0, [r4, #132]	; 0x84
    5558:	e3c000c0 	bic	r0, r0, #192	; 0xc0
    555c:	e3800040 	orr	r0, r0, #64	; 0x40
    5560:	e5840084 	str	r0, [r4, #132]	; 0x84
    5564:	e59d103c 	ldr	r1, [sp, #60]	; 0x3c
    5568:	e28f0e1a 	add	r0, pc, #416	; 0x5710
    556c:	eb000246 	bl	0x5e8c
    5570:	e595005c 	ldr	r0, [r5, #92]	; 0x5c
    5574:	e3100102 	tst	r0, #-2147483648	; 0x80000000
    5578:	15940240 	ldrne	r0, [r4, #576]	; 0x240
    557c:	13800b0e 	orrne	r0, r0, #14336	; 0x3800
    5580:	15840240 	strne	r0, [r4, #576]	; 0x240
    5584:	e595005c 	ldr	r0, [r5, #92]	; 0x5c
    5588:	e59f819c 	ldr	r8, [pc, #412]	; 0x572c
    558c:	e2001001 	and	r1, r0, #1
    5590:	e59d003c 	ldr	r0, [sp, #60]	; 0x3c
    5594:	e1900001 	orrs	r0, r0, r1
    5598:	0a00000a 	beq	0x55c8
    559c:	e5940018 	ldr	r0, [r4, #24]
    55a0:	e1100008 	tst	r0, r8
    55a4:	0a000003 	beq	0x55b8
    55a8:	e59d103c 	ldr	r1, [sp, #60]	; 0x3c
    55ac:	e28f0f5f 	add	r0, pc, #380	; 0x5730
    55b0:	eb000235 	bl	0x5e8c
    55b4:	eafffece 	b	0x50f4
    55b8:	e59d103c 	ldr	r1, [sp, #60]	; 0x3c
    55bc:	e28f0f62 	add	r0, pc, #392	; 0x574c
    55c0:	eb000231 	bl	0x5e8c
    55c4:	ea0000de 	b	0x5944
    55c8:	e59d103c 	ldr	r1, [sp, #60]	; 0x3c
    55cc:	e28f0f62 	add	r0, pc, #392	; 0x575c
    55d0:	eb00022d 	bl	0x5e8c
    55d4:	e5940290 	ldr	r0, [r4, #656]	; 0x290
    55d8:	e3100401 	tst	r0, #16777216	; 0x1000000
    55dc:	159d103c 	ldrne	r1, [sp, #60]	; 0x3c
    55e0:	128f0f62 	addne	r0, pc, #392	; 0x5770
    55e4:	1afffff1 	bne	0x55b0
    55e8:	e5940290 	ldr	r0, [r4, #656]	; 0x290
    55ec:	e59d103c 	ldr	r1, [sp, #60]	; 0x3c
    55f0:	e3100402 	tst	r0, #33554432	; 0x2000000
    55f4:	0a00007a 	beq	0x57e4
    55f8:	e28f0f65 	add	r0, pc, #404	; 0x5794
    55fc:	eb000222 	bl	0x5e8c
    5600:	e28f0f6c 	add	r0, pc, #108, 30	; 0x5674
    5604:	eb000220 	bl	0x5e8c
    5608:	e2850014 	add	r0, r5, #20
    560c:	e3012000 	movw	r2, #4096	; 0x1000
    5610:	e30f1000 	movw	r1, #61440	; 0xf000
    5614:	ebfffab8 	bl	0x40fc
    5618:	e5960000 	ldr	r0, [r6]
    561c:	e3c00403 	bic	r0, r0, #50331648	; 0x3000000
    5620:	e3800401 	orr	r0, r0, #16777216	; 0x1000000
    5624:	e5860000 	str	r0, [r6]
    5628:	e59400b0 	ldr	r0, [r4, #176]	; 0xb0
    562c:	e3c0040f 	bic	r0, r0, #251658240	; 0xf000000
    5630:	e3800401 	orr	r0, r0, #16777216	; 0x1000000
    5634:	e58400b0 	str	r0, [r4, #176]	; 0xb0
    5638:	e5940390 	ldr	r0, [r4, #912]	; 0x390
    563c:	e3100401 	tst	r0, #16777216	; 0x1000000
    5640:	0a000073 	beq	0x5814
    5644:	e28f0f62 	add	r0, pc, #392	; 0x57d4
    5648:	eb00020f 	bl	0x5e8c
    564c:	e2850014 	add	r0, r5, #20
    5650:	e3a02001 	mov	r2, #1
    5654:	e3a0100f 	mov	r1, #15
    5658:	ebfffaa7 	bl	0x40fc
    565c:	e5960000 	ldr	r0, [r6]
    5660:	e3c00a03 	bic	r0, r0, #12288	; 0x3000
    5664:	e3800a01 	orr	r0, r0, #4096	; 0x1000
    5668:	e5860000 	str	r0, [r6]
    566c:	e3a00000 	mov	r0, #0
    5670:	e5840380 	str	r0, [r4, #896]	; 0x380
    5674:	e59f1034 	ldr	r1, [pc, #52]	; 0x56b0
    5678:	e7810007 	str	r0, [r1, r7]
    567c:	ea000066 	b	0x581c

    5680:	0005400c
    5684:	05050403
    5688:	02020005
    568c:	fffe0000
    5690:	ffff0000
    5694:	01200048
    5698:	02800100
    569c:	02000040
    56a0:	10036a00
    56a4:	42c21590
    56a8:	d05612c0
    56ac:	7c000285
    56b0:	01c65400
    56b4:	01c65408
    56b8:	04058d02

    56bc:	"VTC Disabled!!\n",0
    56cc:	"Warn:CH%d BYTE%d GTR different\n",0
    56ec:	"Warn:CH%d BYTE%d LCDLR2 differen\n",0,0
    5710:	"DQS Gate Extend Enable!\n",0,0,0,0
    572c:	1ff00000
    5730:	"Channel %d unavailable!\n",0,0,0,0
    574c:	"Channel %d OK!\n",0
    575c:	"DRAM Size Scan!\n",0,0,0,0
    5770:	"Channel %d Rank0 Byte0 Gate Error!\n",0
    5794:	"Channel %d Rank1 Byte0 Gate Error!\n",0
    57b8:	"Only one rank available!\n",0,0,0
    57d4:	"Half DQ Used!\n",0,0

    57e4:	e28f0fe5 	add	r0, pc, #916	; 0x5b80
    57e8:	eb0001a7 	bl	0x5e8c
    57ec:	e5940390 	ldr	r0, [r4, #912]	; 0x390
    57f0:	e3100401 	tst	r0, #16777216	; 0x1000000
    57f4:	0a000006 	beq	0x5814
    57f8:	e24f002c 	sub	r0, pc, #44	; 0x582c
    57fc:	eb0001a2 	bl	0x5e8c
    5800:	e2850014 	add	r0, r5, #20
    5804:	e3a02001 	mov	r2, #1
    5808:	e3a0100f 	mov	r1, #15
    580c:	ebfffa3a 	bl	0x40fc
    5810:	ea000001 	b	0x581c
    5814:	e28f0fe1 	add	r0, pc, #900	; 0x5ba0
    5818:	eb00019b 	bl	0x5e8c
    581c:	e5940004 	ldr	r0, [r4, #4]
    5820:	e5951004 	ldr	r1, [r5, #4]
    5824:	e3510003 	cmp	r1, #3
    5828:	03001df3 	movweq	r1, #3571	; 0xdf3
    582c:	130c1573 	movwne	r1, #50547	; 0xc573
    5830:	e7cf001f 	bfc	r0, #0, #16
    5834:	e1800001 	orr	r0, r0, r1
    5838:	e5840004 	str	r0, [r4, #4]
    583c:	e30003e8 	movw	r0, #1000	; 0x3e8
    5840:	ebfff748 	bl	0x3568
    5844:	e5940018 	ldr	r0, [r4, #24]
    5848:	e3100001 	tst	r0, #1
    584c:	0afffffc 	beq	0x5844
    5850:	e5940018 	ldr	r0, [r4, #24]
    5854:	e5940018 	ldr	r0, [r4, #24]
    5858:	e1100008 	tst	r0, r8
    585c:	1affff51 	bne	0x55a8
    5860:	e59d103c 	ldr	r1, [sp, #60]	; 0x3c
    5864:	e24f0e12 	sub	r0, pc, #288	; 0x598c
    5868:	eb000187 	bl	0x5e8c
    586c:	e5950014 	ldr	r0, [r5, #20]
    5870:	e7e30650 	ubfx	r0, r0, #12, #4
    5874:	e3500002 	cmp	r0, #2
    5878:	03a08000 	moveq	r8, #0
    587c:	1a000030 	bne	0x5944
    5880:	e0870388 	add	r0, r7, r8, lsl #7
    5884:	e2809507 	add	r9, r0, #29360128	; 0x1c00000
    5888:	e2899a65 	add	r9, r9, #413696	; 0x65000
    588c:	e59902c0 	ldr	r0, [r9, #704]	; 0x2c0
    5890:	e20010ff 	and	r1, r0, #255	; 0xff
    5894:	e58d1000 	str	r1, [sp]
    5898:	e7e70450 	ubfx	r0, r0, #8, #8
    589c:	e58d0004 	str	r0, [sp, #4]
    58a0:	e59902c8 	ldr	r0, [r9, #712]	; 0x2c8
    58a4:	e200a007 	and	sl, r0, #7
    58a8:	e7e2b1d0 	ubfx	fp, r0, #3, #3
    58ac:	e59902c4 	ldr	r0, [r9, #708]	; 0x2c4
    58b0:	e15a000b 	cmp	sl, fp
    58b4:	e7e75450 	ubfx	r5, r0, #8, #8
    58b8:	0a000003 	beq	0x58cc
    58bc:	e59d103c 	ldr	r1, [sp, #60]	; 0x3c
    58c0:	e24f0f7f 	sub	r0, pc, #508	; 0x5ac4
    58c4:	e1a02008 	mov	r2, r8
    58c8:	eb00016f 	bl	0x5e8c
    58cc:	e59d0000 	ldr	r0, [sp]
    58d0:	e20010f8 	and	r1, r0, #248	; 0xf8
    58d4:	e59d0004 	ldr	r0, [sp, #4]
    58d8:	e20000f8 	and	r0, r0, #248	; 0xf8
    58dc:	e1510000 	cmp	r1, r0
    58e0:	0a000003 	beq	0x58f4
    58e4:	e59d103c 	ldr	r1, [sp, #60]	; 0x3c
    58e8:	e24f0f81 	sub	r0, pc, #516	; 0x5af4
    58ec:	e1a02008 	mov	r2, r8
    58f0:	eb000165 	bl	0x5e8c
    58f4:	e1cd00d0 	ldrd	r0, [sp]
    58f8:	e0800001 	add	r0, r0, r1
    58fc:	e08a100b 	add	r1, sl, fp
    5900:	e0200591 	mla	r0, r1, r5, r0
    5904:	e3a01000 	mov	r1, #0
    5908:	e1a000a0 	lsr	r0, r0, #1
    590c:	e1550000 	cmp	r5, r0
    5910:	90400005 	subls	r0, r0, r5
    5914:	92811001 	addls	r1, r1, #1
    5918:	9afffffb 	bls	0x590c
    591c:	e1800400 	orr	r0, r0, r0, lsl #8
    5920:	e58902c0 	str	r0, [r9, #704]	; 0x2c0
    5924:	e59902c8 	ldr	r0, [r9, #712]	; 0x2c8
    5928:	e1811181 	orr	r1, r1, r1, lsl #3
    592c:	e3c0003f 	bic	r0, r0, #63	; 0x3f
    5930:	e1800001 	orr	r0, r0, r1
    5934:	e58902c8 	str	r0, [r9, #712]	; 0x2c8
    5938:	e2888001 	add	r8, r8, #1
    593c:	e3580004 	cmp	r8, #4
    5940:	3affffce 	bcc	0x5880
    5944:	e5960004 	ldr	r0, [r6, #4]
    5948:	e3100001 	tst	r0, #1
    594c:	0afffffc 	beq	0x5944
    5950:	e5940014 	ldr	r0, [r4, #20]
    5954:	e3c00402 	bic	r0, r0, #33554432	; 0x2000000
    5958:	e5840014 	str	r0, [r4, #20]
    595c:	e3a00000 	mov	r0, #0
    5960:	e58601b0 	str	r0, [r6, #432]	; 0x1b0
    5964:	e5960060 	ldr	r0, [r6, #96]	; 0x60
    5968:	e3c00001 	bic	r0, r0, #1
    596c:	e5860060 	str	r0, [r6, #96]	; 0x60
    5970:	e3a00001 	mov	r0, #1
    5974:	eafffddf 	b	0x50f8
    5978:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    597c:	e28f0f8b 	add	r0, pc, #556	; 0x5bb0
    5980:	e1a05001 	mov	r5, r1
    5984:	e3a04000 	mov	r4, #0
    5988:	eb00013f 	bl	0x5e8c
    598c:	e5951000 	ldr	r1, [r5]
    5990:	e28f0e23 	add	r0, pc, #560	; 0x5bc8
    5994:	eb00013c 	bl	0x5e8c
    5998:	e5951008 	ldr	r1, [r5, #8]
    599c:	e28f0f8d 	add	r0, pc, #564	; 0x5bd8
    59a0:	eb000139 	bl	0x5e8c
    59a4:	e5950004 	ldr	r0, [r5, #4]
    59a8:	e3500007 	cmp	r0, #7
    59ac:	028f0f8e 	addeq	r0, pc, #568	; 0x5bec
    59b0:	0a000005 	beq	0x59cc
    59b4:	e3500003 	cmp	r0, #3
    59b8:	028f0f8f 	addeq	r0, pc, #572	; 0x5bfc
    59bc:	0a000002 	beq	0x59cc
    59c0:	e3500006 	cmp	r0, #6
    59c4:	028f0d09 	addeq	r0, pc, #576	; 0x5c0c
    59c8:	1a000000 	bne	0x59d0
    59cc:	eb00012e 	bl	0x5e8c
    59d0:	e5950014 	ldr	r0, [r5, #20]
    59d4:	e3100c02 	tst	r0, #512	; 0x200
    59d8:	128f0f8f 	addne	r0, pc, #572	; 0x5c1c
    59dc:	028f0f92 	addeq	r0, pc, #584	; 0x5c2c
    59e0:	eb000129 	bl	0x5e8c
    59e4:	e5950004 	ldr	r0, [r5, #4]
    59e8:	e3500003 	cmp	r0, #3
    59ec:	0bfff9a6 	bleq	0x408c
    59f0:	e59f0244 	ldr	r0, [pc, #580]	; 0x5c3c
    59f4:	ebfff6db 	bl	0x3568
    59f8:	e59f1240 	ldr	r1, [pc, #576]	; 0x5c40
    59fc:	e5910000 	ldr	r0, [r1]
    5a00:	e3800c03 	orr	r0, r0, #768	; 0x300
    5a04:	e5810000 	str	r0, [r1]
    5a08:	e1811c41 	orr	r1, r1, r1, asr #24
    5a0c:	e3a00000 	mov	r0, #0
    5a10:	e5810000 	str	r0, [r1]
    5a14:	e30003e8 	movw	r0, #1000	; 0x3e8
    5a18:	ebfff6d2 	bl	0x3568
    5a1c:	e1a00005 	mov	r0, r5
    5a20:	ebfff9ba 	bl	0x4110
    5a24:	e1a00005 	mov	r0, r5
    5a28:	ebfffbab 	bl	0x48dc
    5a2c:	e1a01005 	mov	r1, r5
    5a30:	e3a00000 	mov	r0, #0
    5a34:	ebfffc80 	bl	0x4c3c
    5a38:	e3500000 	cmp	r0, #0
    5a3c:	08bd81f0 	popeq	{r4, r5, r6, r7, r8, pc}
    5a40:	e51f7e64 	ldr	r7, [pc, #-3684]	; 0x4be4
    5a44:	e595005c 	ldr	r0, [r5, #92]	; 0x5c
    5a48:	e3100001 	tst	r0, #1
    5a4c:	0a000011 	beq	0x5a98
    5a50:	e5950014 	ldr	r0, [r5, #20]
    5a54:	e7e30450 	ubfx	r0, r0, #8, #4
    5a58:	e3500001 	cmp	r0, #1
    5a5c:	0a000005 	beq	0x5a78
    5a60:	e1a01005 	mov	r1, r5
    5a64:	e3a00001 	mov	r0, #1
    5a68:	ebfffc73 	bl	0x4c3c
    5a6c:	e3500000 	cmp	r0, #0
    5a70:	08bd81f0 	popeq	{r4, r5, r6, r7, r8, pc}
    5a74:	ea00009e 	b	0x5cf4
    5a78:	e5970000 	ldr	r0, [r7]
    5a7c:	e3c00702 	bic	r0, r0, #524288	; 0x80000
    5a80:	e3800501 	orr	r0, r0, #4194304	; 0x400000
    5a84:	e5870000 	str	r0, [r7]
    5a88:	e5970004 	ldr	r0, [r7, #4]
    5a8c:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
    5a90:	e5870004 	str	r0, [r7, #4]
    5a94:	ea000096 	b	0x5cf4
    5a98:	e1a01005 	mov	r1, r5
    5a9c:	e3a00001 	mov	r0, #1
    5aa0:	ebfffc65 	bl	0x4c3c
    5aa4:	e3500000 	cmp	r0, #0
    5aa8:	1a00000a 	bne	0x5ad8
    5aac:	e2850014 	add	r0, r5, #20
    5ab0:	e3002100 	movw	r2, #256	; 0x100
    5ab4:	e3001f00 	movw	r1, #3840	; 0xf00
    5ab8:	ebfff98f 	bl	0x40fc
    5abc:	e5970000 	ldr	r0, [r7]
    5ac0:	e3c00702 	bic	r0, r0, #524288	; 0x80000
    5ac4:	e3800501 	orr	r0, r0, #4194304	; 0x400000
    5ac8:	e5870000 	str	r0, [r7]
    5acc:	e5970004 	ldr	r0, [r7, #4]
    5ad0:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
    5ad4:	e5870004 	str	r0, [r7, #4]
    5ad8:	e5970000 	ldr	r0, [r7]
    5adc:	e3c00702 	bic	r0, r0, #524288	; 0x80000
    5ae0:	e3800501 	orr	r0, r0, #4194304	; 0x400000
    5ae4:	e5870000 	str	r0, [r7]
    5ae8:	e3020710 	movw	r0, #10000	; 0x2710
    5aec:	ebfff69d 	bl	0x3568
    5af0:	e3a06202 	mov	r6, #536870912	; 0x20000000
    5af4:	e3140001 	tst	r4, #1
    5af8:	11a00104 	lslne	r0, r4, #2
    5afc:	12800202 	addne	r0, r0, #536870912	; 0x20000000
    5b00:	00860104 	addeq	r0, r6, r4, lsl #2
    5b04:	01e00000 	mvneq	r0, r0
    5b08:	e7860104 	str	r0, [r6, r4, lsl #2]
    5b0c:	e2844001 	add	r4, r4, #1
    5b10:	e3540040 	cmp	r4, #64	; 0x40
    5b14:	3afffff6 	bcc	0x5af4
    5b18:	e5970000 	ldr	r0, [r7]
    5b1c:	e3c00c0f 	bic	r0, r0, #3840	; 0xf00
    5b20:	e3800e6f 	orr	r0, r0, #1776	; 0x6f0
    5b24:	e5870000 	str	r0, [r7]
    5b28:	e3a000c8 	mov	r0, #200	; 0xc8
    5b2c:	ebfff68d 	bl	0x3568
    5b30:	e3a0100b 	mov	r1, #11
    5b34:	e3a04001 	mov	r4, #1
    5b38:	e281000c 	add	r0, r1, #12
    5b3c:	e3a02000 	mov	r2, #0
    5b40:	e1a00014 	lsl	r0, r4, r0
    5b44:	e2803202 	add	r3, r0, #536870912	; 0x20000000
    5b48:	e1a00002 	mov	r0, r2
    5b4c:	e796c100 	ldr	ip, [r6, r0, lsl #2]
    5b50:	e793e100 	ldr	lr, [r3, r0, lsl #2]
    5b54:	e2800001 	add	r0, r0, #1
    5b58:	e15c000e 	cmp	ip, lr
    5b5c:	02822001 	addeq	r2, r2, #1
    5b60:	e3500040 	cmp	r0, #64	; 0x40
    5b64:	3afffff8 	bcc	0x5b4c
    5b68:	e3520040 	cmp	r2, #64	; 0x40
    5b6c:	0a000034 	beq	0x5c44
    5b70:	e2811001 	add	r1, r1, #1
    5b74:	e3510010 	cmp	r1, #16
    5b78:	9affffee 	bls	0x5b38
    5b7c:	ea000032 	b	0x5c4c

    5b80:	"Channel %d Two RANK available!\n",0
    5ba0:	"Full DQ Used!\n",0,0
    5bb0:	"INFO: dram code V2.2\n",0,0,0
    5bc8:	"dram clk=%d\n",0,0,0,0
    5bd8:	"dram_zq = 0x%x!!\n",0,0,0
    5bec:	"LPDDR3 used!!\n",0,0
    5bfc:	"DDR3 ised!!\n",0,0,0,0
    5c0c:	"LPDDR2 used!!\n",0,0
    5c1c:	"dram channle 2\n",0
    5c2c:	"dram channle 1\n",0

    5c3c:	000186a0
    5c40:	080015e0

    5c44:	e3510010 	cmp	r1, #16
    5c48:	3a000000 	bcc	0x5c50
    5c4c:	e3a01010 	mov	r1, #16
    5c50:	e2850010 	add	r0, r5, #16
    5c54:	e1a02a01 	lsl	r2, r1, #20
    5c58:	e3a016ff 	mov	r1, #267386880	; 0xff00000
    5c5c:	ebfff926 	bl	0x40fc
    5c60:	e5970000 	ldr	r0, [r7]
    5c64:	e3c00eff 	bic	r0, r0, #4080	; 0xff0
    5c68:	e3800eaa 	orr	r0, r0, #2720	; 0xaa0
    5c6c:	e5870000 	str	r0, [r7]
    5c70:	e3a000c8 	mov	r0, #200	; 0xc8
    5c74:	ebfff63b 	bl	0x3568
    5c78:	e3a01009 	mov	r1, #9
    5c7c:	e3a02000 	mov	r2, #0
    5c80:	e1a00114 	lsl	r0, r4, r1
    5c84:	e2803202 	add	r3, r0, #536870912	; 0x20000000
    5c88:	e1a00002 	mov	r0, r2
    5c8c:	e7967100 	ldr	r7, [r6, r0, lsl #2]
    5c90:	e793c100 	ldr	ip, [r3, r0, lsl #2]
    5c94:	e2800001 	add	r0, r0, #1
    5c98:	e157000c 	cmp	r7, ip
    5c9c:	02822001 	addeq	r2, r2, #1
    5ca0:	e3500040 	cmp	r0, #64	; 0x40
    5ca4:	3afffff8 	bcc	0x5c8c
    5ca8:	e3520040 	cmp	r2, #64	; 0x40
    5cac:	0a000003 	beq	0x5cc0
    5cb0:	e2811001 	add	r1, r1, #1
    5cb4:	e351000d 	cmp	r1, #13
    5cb8:	9affffef 	bls	0x5c7c
    5cbc:	ea000001 	b	0x5cc8
    5cc0:	e351000d 	cmp	r1, #13
    5cc4:	3a000001 	bcc	0x5cd0
    5cc8:	e3a0100d 	mov	r1, #13
    5ccc:	ea000002 	b	0x5cdc
    5cd0:	e3510009 	cmp	r1, #9
    5cd4:	03a00000 	moveq	r0, #0
    5cd8:	0a000001 	beq	0x5ce4
    5cdc:	e241000a 	sub	r0, r1, #10
    5ce0:	e1a00014 	lsl	r0, r4, r0
    5ce4:	e3a0180f 	mov	r1, #983040	; 0xf0000
    5ce8:	e1a02800 	lsl	r2, r0, #16
    5cec:	e2850010 	add	r0, r5, #16
    5cf0:	ebfff901 	bl	0x40fc
    5cf4:	e1a00005 	mov	r0, r5
    5cf8:	ebfffb82 	bl	0x4b08
    5cfc:	e3a000c8 	mov	r0, #200	; 0xc8
    5d00:	ebfff618 	bl	0x3568
    5d04:	ebfffbba 	bl	0x4bf4
    5d08:	e1a04000 	mov	r4, r0
    5d0c:	e1a02000 	mov	r2, r0
    5d10:	e2850010 	add	r0, r5, #16
    5d14:	e30f1fff 	movw	r1, #65535	; 0xffff
    5d18:	ebfff8f7 	bl	0x40fc
    5d1c:	e3a02003 	mov	r2, #3
    5d20:	e285005c 	add	r0, r5, #92	; 0x5c
    5d24:	e1a01002 	mov	r1, r2
    5d28:	ebfff8f3 	bl	0x40fc
    5d2c:	e28f00f4 	add	r0, pc, #244	; 0x5e28
    5d30:	e1a01004 	mov	r1, r4
    5d34:	eb000054 	bl	0x5e8c
    5d38:	e1a00004 	mov	r0, r4
    5d3c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    5d40:	e59f10f8 	ldr	r1, [pc, #248]	; 0x5e40
    5d44:	e3a00000 	mov	r0, #0
    5d48:	e92d4010 	push	{r4, lr}
    5d4c:	e5810000 	str	r0, [r1]
    5d50:	e5810004 	str	r0, [r1, #4]
    5d54:	e5810008 	str	r0, [r1, #8]
    5d58:	eb000011 	bl	0x5da4
    5d5c:	e59f00e0 	ldr	r0, [pc, #224]	; 0x5e44
    5d60:	e5901000 	ldr	r1, [r0]
    5d64:	e3c11008 	bic	r1, r1, #8
    5d68:	e5801000 	str	r1, [r0]
    5d6c:	e5901000 	ldr	r1, [r0]
    5d70:	e3811008 	orr	r1, r1, #8
    5d74:	e5801000 	str	r1, [r0]
    5d78:	e2400088 	sub	r0, r0, #136	; 0x88
    5d7c:	e5901000 	ldr	r1, [r0]
    5d80:	e3811008 	orr	r1, r1, #8
    5d84:	e5801000 	str	r1, [r0]
    5d88:	e59f10b8 	ldr	r1, [pc, #184]	; 0x5e48
    5d8c:	e3a00001 	mov	r0, #1
    5d90:	e5810000 	str	r0, [r1]
    5d94:	e3000103 	movw	r0, #259	; 0x103
    5d98:	e1811340 	orr	r1, r1, r0, asr #6
    5d9c:	e5810000 	str	r0, [r1]
    5da0:	e8bd8010 	pop	{r4, pc}
    5da4:	e92d4070 	push	{r4, r5, r6, lr}
    5da8:	e59f509c 	ldr	r5, [pc, #156]	; 0x5e4c
    5dac:	e5954000 	ldr	r4, [r5]
    5db0:	e28f0098 	add	r0, pc, #152	; 0x5e50
    5db4:	e1a01004 	mov	r1, r4
    5db8:	eb000033 	bl	0x5e8c
    5dbc:	e3840001 	orr	r0, r4, #1
    5dc0:	e5850000 	str	r0, [r5]
    5dc4:	e5951000 	ldr	r1, [r5]
    5dc8:	e28f0080 	add	r0, pc, #128	; 0x5e50
    5dcc:	eb00002e 	bl	0x5e8c
    5dd0:	e59f0080 	ldr	r0, [pc, #128]	; 0x5e58
    5dd4:	e5901000 	ldr	r1, [r0]
    5dd8:	e3c110ff 	bic	r1, r1, #255	; 0xff
    5ddc:	e5801000 	str	r1, [r0]
    5de0:	e5901000 	ldr	r1, [r0]
    5de4:	e3811033 	orr	r1, r1, #51	; 0x33
    5de8:	e5801000 	str	r1, [r0]
    5dec:	e280001c 	add	r0, r0, #28
    5df0:	e5901000 	ldr	r1, [r0]
    5df4:	e3c1100f 	bic	r1, r1, #15
    5df8:	e5801000 	str	r1, [r0]
    5dfc:	e5901000 	ldr	r1, [r0]
    5e00:	e3811005 	orr	r1, r1, #5
    5e04:	e5801000 	str	r1, [r0]
    5e08:	e2400008 	sub	r0, r0, #8
    5e0c:	e5901000 	ldr	r1, [r0]
    5e10:	e3c1100f 	bic	r1, r1, #15
    5e14:	e5801000 	str	r1, [r0]
    5e18:	e5901000 	ldr	r1, [r0]
    5e1c:	e381100a 	orr	r1, r1, #10
    5e20:	e5801000 	str	r1, [r0]
    5e24:	e8bd8070 	pop	{r4, r5, r6, pc}

    5e28:	"dram size=%dMBytes!\n",0,0,0,0
    5e40:	00016be8
    5e44:	080014b0
    5e48:	08003400
    5e4c:	08001428
    5e50:	"0x%x\n",0,0,0
    5e58:	08002c48

    5e5c:	e92d4010 	push	{r4, lr}
    5e60:	e1a04000 	mov	r4, r0
    5e64:	ea000004 	b	0x5e7c
    5e68:	e350000a 	cmp	r0, #10
    5e6c:	03a0000d 	moveq	r0, #13
    5e70:	0b0000dc 	bleq	0x61e8
    5e74:	e4d40001 	ldrb	r0, [r4], #1
    5e78:	eb0000da 	bl	0x61e8
    5e7c:	e5d40000 	ldrb	r0, [r4]
    5e80:	e3500000 	cmp	r0, #0
    5e84:	1afffff7 	bne	0x5e68
    5e88:	e8bd8010 	pop	{r4, pc}
    5e8c:	e92d000f 	push	{r0, r1, r2, r3}
    5e90:	e92d407f 	push	{r0, r1, r2, r3, r4, r5, r6, lr}
    5e94:	e28d4024 	add	r4, sp, #36	; 0x24
    5e98:	ea000034 	b	0x5f70
    5e9c:	e3500025 	cmp	r0, #37	; 0x25
    5ea0:	0a000007 	beq	0x5ec4
    5ea4:	e350000a 	cmp	r0, #10
    5ea8:	03a0000d 	moveq	r0, #13
    5eac:	0b0000cd 	bleq	0x61e8
    5eb0:	e59d1020 	ldr	r1, [sp, #32]
    5eb4:	e4d10001 	ldrb	r0, [r1], #1
    5eb8:	e58d1020 	str	r1, [sp, #32]
    5ebc:	eb0000c9 	bl	0x61e8
    5ec0:	ea00002a 	b	0x5f70
    5ec4:	e2811001 	add	r1, r1, #1
    5ec8:	e58d1020 	str	r1, [sp, #32]
    5ecc:	e1a0500d 	mov	r5, sp
    5ed0:	e3a02058 	mov	r2, #88	; 0x58
    5ed4:	e5d10000 	ldrb	r0, [r1]
    5ed8:	e3500070 	cmp	r0, #112	; 0x70
    5edc:	0a00001b 	beq	0x5f50
    5ee0:	ca000008 	bgt	0x5f08
    5ee4:	e3500058 	cmp	r0, #88	; 0x58
    5ee8:	0a000018 	beq	0x5f50
    5eec:	e3500063 	cmp	r0, #99	; 0x63
    5ef0:	04940004 	ldreq	r0, [r4], #4
    5ef4:	020000ff 	andeq	r0, r0, #255	; 0xff
    5ef8:	0a00000e 	beq	0x5f38
    5efc:	e3500064 	cmp	r0, #100	; 0x64
    5f00:	1a000008 	bne	0x5f28
    5f04:	ea00000d 	b	0x5f40
    5f08:	e3500073 	cmp	r0, #115	; 0x73
    5f0c:	04940004 	ldreq	r0, [r4], #4
    5f10:	0a000012 	beq	0x5f60
    5f14:	e3500075 	cmp	r0, #117	; 0x75
    5f18:	0a00001a 	beq	0x5f88
    5f1c:	e3500078 	cmp	r0, #120	; 0x78
    5f20:	03a02078 	moveq	r2, #120	; 0x78
    5f24:	0a000009 	beq	0x5f50
    5f28:	e3a00025 	mov	r0, #37	; 0x25
    5f2c:	eb0000ad 	bl	0x61e8
    5f30:	e59d0020 	ldr	r0, [sp, #32]
    5f34:	e5d00000 	ldrb	r0, [r0]
    5f38:	eb0000aa 	bl	0x61e8
    5f3c:	ea000008 	b	0x5f64
    5f40:	e4940004 	ldr	r0, [r4], #4
    5f44:	e1a01005 	mov	r1, r5
    5f48:	eb000012 	bl	0x5f98
    5f4c:	ea000002 	b	0x5f5c
    5f50:	e4940004 	ldr	r0, [r4], #4
    5f54:	e1a01005 	mov	r1, r5
    5f58:	eb000050 	bl	0x60a0
    5f5c:	e1a00005 	mov	r0, r5
    5f60:	ebffffbd 	bl	0x5e5c
    5f64:	e59d0020 	ldr	r0, [sp, #32]
    5f68:	e2800001 	add	r0, r0, #1
    5f6c:	e58d0020 	str	r0, [sp, #32]
    5f70:	e59d1020 	ldr	r1, [sp, #32]
    5f74:	e5d10000 	ldrb	r0, [r1]
    5f78:	e3500000 	cmp	r0, #0
    5f7c:	1affffc6 	bne	0x5e9c
    5f80:	e8bd007f 	pop	{r0, r1, r2, r3, r4, r5, r6}
    5f84:	e49df014 	ldr	pc, [sp], #20
    5f88:	e4940004 	ldr	r0, [r4], #4
    5f8c:	e1a01005 	mov	r1, r5
    5f90:	eb000025 	bl	0x602c
    5f94:	eafffff0 	b	0x5f5c
    5f98:	e92d407e 	push	{r1, r2, r3, r4, r5, r6, lr}
    5f9c:	e3500000 	cmp	r0, #0
    5fa0:	e3a0c000 	mov	ip, #0
    5fa4:	b2600000 	rsblt	r0, r0, #0
    5fa8:	e1a0600c 	mov	r6, ip
    5fac:	03a00030 	moveq	r0, #48	; 0x30
    5fb0:	05c10000 	strbeq	r0, [r1]
    5fb4:	b3a0c001 	movlt	ip, #1
    5fb8:	13a02000 	movne	r2, #0
    5fbc:	11a0500d 	movne	r5, sp
    5fc0:	13a0300a 	movne	r3, #10
    5fc4:	05c16001 	strbeq	r6, [r1, #1]
    5fc8:	0a000016 	beq	0x6028
    5fcc:	ea000005 	b	0x5fe8
    5fd0:	e1a04000 	mov	r4, r0
    5fd4:	e710f310 	sdiv	r0, r0, r3
    5fd8:	e0644093 	mls	r4, r3, r0, r4
    5fdc:	e2844030 	add	r4, r4, #48	; 0x30
    5fe0:	e7c54002 	strb	r4, [r5, r2]
    5fe4:	e2822001 	add	r2, r2, #1
    5fe8:	e3500000 	cmp	r0, #0
    5fec:	cafffff7 	bgt	0x5fd0
    5ff0:	e35c0001 	cmp	ip, #1
    5ff4:	e3a00000 	mov	r0, #0
    5ff8:	03a0002d 	moveq	r0, #45	; 0x2d
    5ffc:	05c10000 	strbeq	r0, [r1]
    6000:	e2422001 	sub	r2, r2, #1
    6004:	03a00001 	moveq	r0, #1
    6008:	ea000003 	b	0x601c
    600c:	e7d53002 	ldrb	r3, [r5, r2]
    6010:	e2422001 	sub	r2, r2, #1
    6014:	e7c13000 	strb	r3, [r1, r0]
    6018:	e2800001 	add	r0, r0, #1
    601c:	e3520000 	cmp	r2, #0
    6020:	b7c16000 	strblt	r6, [r1, r0]
    6024:	aafffff8 	bge	0x600c
    6028:	e8bd807e 	pop	{r1, r2, r3, r4, r5, r6, pc}
    602c:	e92d407e 	push	{r1, r2, r3, r4, r5, r6, lr}
    6030:	e3500000 	cmp	r0, #0
    6034:	e3a06000 	mov	r6, #0
    6038:	03a00030 	moveq	r0, #48	; 0x30
    603c:	05c10000 	strbeq	r0, [r1]
    6040:	13a02000 	movne	r2, #0
    6044:	13a0300a 	movne	r3, #10
    6048:	11a0500d 	movne	r5, sp
    604c:	05c16001 	strbeq	r6, [r1, #1]
    6050:	0a000011 	beq	0x609c
    6054:	e1a04000 	mov	r4, r0
    6058:	e730f310 	udiv	r0, r0, r3
    605c:	e0644093 	mls	r4, r3, r0, r4
    6060:	e3500000 	cmp	r0, #0
    6064:	e2844030 	add	r4, r4, #48	; 0x30
    6068:	e7c54002 	strb	r4, [r5, r2]
    606c:	e2822001 	add	r2, r2, #1
    6070:	02420001 	subeq	r0, r2, #1
    6074:	03a02000 	moveq	r2, #0
    6078:	1afffff5 	bne	0x6054
    607c:	ea000003 	b	0x6090
    6080:	e7d53000 	ldrb	r3, [r5, r0]
    6084:	e2400001 	sub	r0, r0, #1
    6088:	e7c13002 	strb	r3, [r1, r2]
    608c:	e2822001 	add	r2, r2, #1
    6090:	e3500000 	cmp	r0, #0
    6094:	b7c16002 	strblt	r6, [r1, r2]
    6098:	aafffff8 	bge	0x6080
    609c:	e8bd807e 	pop	{r1, r2, r3, r4, r5, r6, pc}
    60a0:	e59f303c 	ldr	r3, [pc, #60]	; 0x60e4
    60a4:	e3a02009 	mov	r2, #9
    60a8:	e92d4010 	push	{r4, lr}
    60ac:	e200400f 	and	r4, r0, #15
    60b0:	e1a00240 	asr	r0, r0, #4
    60b4:	e7d34004 	ldrb	r4, [r3, r4]
    60b8:	e7c14002 	strb	r4, [r1, r2]
    60bc:	e2422001 	sub	r2, r2, #1
    60c0:	e3520001 	cmp	r2, #1
    60c4:	cafffff8 	bgt	0x60ac
    60c8:	e3a00030 	mov	r0, #48	; 0x30
    60cc:	e5c10000 	strb	r0, [r1]
    60d0:	e3a00078 	mov	r0, #120	; 0x78
    60d4:	e5c10001 	strb	r0, [r1, #1]
    60d8:	e3a00000 	mov	r0, #0
    60dc:	e5c1000a 	strb	r0, [r1, #10]
    60e0:	e8bd8010 	pop	{r4, pc}
    60e4:	00016bf4 	strdeq	r6, [r1], -r4
    60e8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    60ec:	e59f5118 	ldr	r5, [pc, #280]	; 0x620c
    60f0:	e3500007 	cmp	r0, #7
    60f4:	e1a03001 	mov	r3, r1
    60f8:	e1a04002 	mov	r4, r2
    60fc:	e5850000 	str	r0, [r5]
    6100:	88bd81f0 	pophi	{r4, r5, r6, r7, r8, pc}
    6104:	e59f1104 	ldr	r1, [pc, #260]	; 0x6210
    6108:	e5917000 	ldr	r7, [r1]
    610c:	e2800010 	add	r0, r0, #16
    6110:	e3a06001 	mov	r6, #1
    6114:	e1a02016 	lsl	r2, r6, r0
    6118:	e1c70002 	bic	r0, r7, r2
    611c:	e5810000 	str	r0, [r1]
    6120:	e3a00000 	mov	r0, #0
    6124:	e2800001 	add	r0, r0, #1
    6128:	e3500064 	cmp	r0, #100	; 0x64
    612c:	3afffffc 	bcc	0x6124
    6130:	e5910000 	ldr	r0, [r1]
    6134:	e1800002 	orr	r0, r0, r2
    6138:	e5810000 	str	r0, [r1]
    613c:	e59f10d0 	ldr	r1, [pc, #208]	; 0x6214
    6140:	e5910000 	ldr	r0, [r1]
    6144:	e1c00002 	bic	r0, r0, r2
    6148:	e5810000 	str	r0, [r1]
    614c:	e3a00000 	mov	r0, #0
    6150:	e2800001 	add	r0, r0, #1
    6154:	e3500064 	cmp	r0, #100	; 0x64
    6158:	3afffffc 	bcc	0x6150
    615c:	e5910000 	ldr	r0, [r1]
    6160:	e1800002 	orr	r0, r0, r2
    6164:	e5810000 	str	r0, [r1]
    6168:	e59f00a8 	ldr	r0, [pc, #168]	; 0x6218
    616c:	e59012d8 	ldr	r1, [r0, #728]	; 0x2d8
    6170:	e1811002 	orr	r1, r1, r2
    6174:	e58012d8 	str	r1, [r0, #728]	; 0x2d8
    6178:	e3a02001 	mov	r2, #1
    617c:	e3a01002 	mov	r1, #2
    6180:	e1a00003 	mov	r0, r3
    6184:	eb000025 	bl	0x6220
    6188:	e59f108c 	ldr	r1, [pc, #140]	; 0x621c
    618c:	e2840ae1 	add	r0, r4, #921600	; 0xe1000
    6190:	e731f110 	udiv	r1, r0, r1
    6194:	e5952000 	ldr	r2, [r5]
    6198:	e3a00407 	mov	r0, #117440512	; 0x7000000
    619c:	e0800502 	add	r0, r0, r2, lsl #10
    61a0:	e590200c 	ldr	r2, [r0, #12]
    61a4:	e58060a4 	str	r6, [r0, #164]	; 0xa4
    61a8:	e3823080 	orr	r3, r2, #128	; 0x80
    61ac:	e580300c 	str	r3, [r0, #12]
    61b0:	e1a03421 	lsr	r3, r1, #8
    61b4:	e5803004 	str	r3, [r0, #4]
    61b8:	e20110ff 	and	r1, r1, #255	; 0xff
    61bc:	e5801000 	str	r1, [r0]
    61c0:	e3c21080 	bic	r1, r2, #128	; 0x80
    61c4:	e580100c 	str	r1, [r0, #12]
    61c8:	e3a01000 	mov	r1, #0
    61cc:	e58010a4 	str	r1, [r0, #164]	; 0xa4
    61d0:	e3a01003 	mov	r1, #3
    61d4:	e580100c 	str	r1, [r0, #12]
    61d8:	e3a01006 	mov	r1, #6
    61dc:	e5801008 	str	r1, [r0, #8]
    61e0:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    61e4:	e12fff1e 	bx	lr
    61e8:	e59f101c 	ldr	r1, [pc, #28]	; 0x620c
    61ec:	e3a02407 	mov	r2, #117440512	; 0x7000000
    61f0:	e5911000 	ldr	r1, [r1]
    61f4:	e0821501 	add	r1, r2, r1, lsl #10
    61f8:	e5912014 	ldr	r2, [r1, #20]
    61fc:	e3120040 	tst	r2, #64	; 0x40
    6200:	15810000 	strne	r0, [r1]
    6204:	0afffffb 	beq	0x61f8
    6208:	e12fff1e 	bx	lr
    620c:	00016c08 	andeq	r6, r1, r8, lsl #24
    6210:	060005b4 			; <UNDEFINED> instruction: 0x060005b4
    6214:	06000594 			; <UNDEFINED> instruction: 0x06000594
    6218:	01c20000 	biceq	r0, r2, r0
    621c:	001c2000 	andseq	r2, ip, r0
    6220:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    6224:	e3a03000 	mov	r3, #0
    6228:	e1a05000 	mov	r5, r0
    622c:	e24dd020 	sub	sp, sp, #32
    6230:	e1a07003 	mov	r7, r3
    6234:	e1a0c003 	mov	ip, r3
    6238:	e1a0e003 	mov	lr, r3
    623c:	e1a04003 	mov	r4, r3
    6240:	e1a0a003 	mov	sl, r3
    6244:	e58d301c 	str	r3, [sp, #28]
    6248:	e1a0b003 	mov	fp, r3
    624c:	e58d3000 	str	r3, [sp]
    6250:	e1a00003 	mov	r0, r3
    6254:	e1a06003 	mov	r6, r3
    6258:	e58d3008 	str	r3, [sp, #8]
    625c:	e58d3004 	str	r3, [sp, #4]
    6260:	e58d5014 	str	r5, [sp, #20]
    6264:	e59d1024 	ldr	r1, [sp, #36]	; 0x24
    6268:	e1560001 	cmp	r6, r1
    626c:	2a00003c 	bcs	0x6364
    6270:	e59d1014 	ldr	r1, [sp, #20]
    6274:	e0815186 	add	r5, r1, r6, lsl #3
    6278:	e5d59000 	ldrb	r9, [r5]
    627c:	e5d58001 	ldrb	r8, [r5, #1]
    6280:	e3590000 	cmp	r9, #0
    6284:	02866001 	addeq	r6, r6, #1
    6288:	0afffff5 	beq	0x6264
    628c:	e1a02228 	lsr	r2, r8, #4
    6290:	e59f0278 	ldr	r0, [pc, #632]	; 0x6510
    6294:	e58d200c 	str	r2, [sp, #12]
    6298:	e0892189 	add	r2, r9, r9, lsl #3
    629c:	e1a011a8 	lsr	r1, r8, #3
    62a0:	e0800102 	add	r0, r0, r2, lsl #2
    62a4:	e59d200c 	ldr	r2, [sp, #12]
    62a8:	e0804101 	add	r4, r0, r1, lsl #2
    62ac:	e080b102 	add	fp, r0, r2, lsl #2
    62b0:	e5943000 	ldr	r3, [r4]
    62b4:	e28ba01c 	add	sl, fp, #28
    62b8:	e59b701c 	ldr	r7, [fp, #28]
    62bc:	e5bbc014 	ldr	ip, [fp, #20]!
    62c0:	e5b0e010 	ldr	lr, [r0, #16]!
    62c4:	e98d0202 	stmib	sp, {r1, r9}
    62c8:	e0489181 	sub	r9, r8, r1, lsl #3
    62cc:	e3a01007 	mov	r1, #7
    62d0:	e58d2000 	str	r2, [sp]
    62d4:	e1a09109 	lsl	r9, r9, #2
    62d8:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
    62dc:	e1c33911 	bic	r3, r3, r1, lsl r9
    62e0:	e3520000 	cmp	r2, #0
    62e4:	0a000002 	beq	0x62f4
    62e8:	e5d51002 	ldrb	r1, [r5, #2]
    62ec:	e2011007 	and	r1, r1, #7
    62f0:	e1833911 	orr	r3, r3, r1, lsl r9
    62f4:	e59d100c 	ldr	r1, [sp, #12]
    62f8:	e1d520d3 	ldrsb	r2, [r5, #3]
    62fc:	e0489201 	sub	r9, r8, r1, lsl #4
    6300:	e3520000 	cmp	r2, #0
    6304:	e1a09089 	lsl	r9, r9, #1
    6308:	ba000003 	blt	0x631c
    630c:	e3a01003 	mov	r1, #3
    6310:	e1c77911 	bic	r7, r7, r1, lsl r9
    6314:	e2021003 	and	r1, r2, #3
    6318:	e1877911 	orr	r7, r7, r1, lsl r9
    631c:	e1d520d4 	ldrsb	r2, [r5, #4]
    6320:	e3520000 	cmp	r2, #0
    6324:	ba000003 	blt	0x6338
    6328:	e3a01003 	mov	r1, #3
    632c:	e1ccc911 	bic	ip, ip, r1, lsl r9
    6330:	e2021003 	and	r1, r2, #3
    6334:	e18cc911 	orr	ip, ip, r1, lsl r9
    6338:	e5d59002 	ldrb	r9, [r5, #2]
    633c:	e3590001 	cmp	r9, #1
    6340:	1a000007 	bne	0x6364
    6344:	e1d550d5 	ldrsb	r5, [r5, #5]
    6348:	e3550000 	cmp	r5, #0
    634c:	ba000004 	blt	0x6364
    6350:	e3a09001 	mov	r9, #1
    6354:	e58d901c 	str	r9, [sp, #28]
    6358:	e2055001 	and	r5, r5, #1
    635c:	e1cee819 	bic	lr, lr, r9, lsl r8
    6360:	e18ee815 	orr	lr, lr, r5, lsl r8
    6364:	e59d1024 	ldr	r1, [sp, #36]	; 0x24
    6368:	e1510006 	cmp	r1, r6
    636c:	93e00000 	mvnls	r0, #0
    6370:	82865001 	addhi	r5, r6, #1
    6374:	9a000063 	bls	0x6508
    6378:	ea000055 	b	0x64d4
    637c:	e59d1014 	ldr	r1, [sp, #20]
    6380:	e0815185 	add	r5, r1, r5, lsl #3
    6384:	e5d59000 	ldrb	r9, [r5]
    6388:	e5d56001 	ldrb	r6, [r5, #1]
    638c:	e3590000 	cmp	r9, #0
    6390:	0a000053 	beq	0x64e4
    6394:	e59d2000 	ldr	r2, [sp]
    6398:	e1a01226 	lsr	r1, r6, #4
    639c:	e1a081a6 	lsr	r8, r6, #3
    63a0:	e1510002 	cmp	r1, r2
    63a4:	1a000002 	bne	0x63b4
    63a8:	e59d2008 	ldr	r2, [sp, #8]
    63ac:	e1590002 	cmp	r9, r2
    63b0:	0a000012 	beq	0x6400
    63b4:	e5843000 	str	r3, [r4]
    63b8:	e58a7000 	str	r7, [sl]
    63bc:	e58bc000 	str	ip, [fp]
    63c0:	e59d201c 	ldr	r2, [sp, #28]
    63c4:	e3520000 	cmp	r2, #0
    63c8:	13a02000 	movne	r2, #0
    63cc:	158d201c 	strne	r2, [sp, #28]
    63d0:	1580e000 	strne	lr, [r0]
    63d4:	e0892189 	add	r2, r9, r9, lsl #3
    63d8:	e59f0130 	ldr	r0, [pc, #304]	; 0x6510
    63dc:	e0800102 	add	r0, r0, r2, lsl #2
    63e0:	e0804108 	add	r4, r0, r8, lsl #2
    63e4:	e080b101 	add	fp, r0, r1, lsl #2
    63e8:	e28ba01c 	add	sl, fp, #28
    63ec:	e5943000 	ldr	r3, [r4]
    63f0:	e59b701c 	ldr	r7, [fp, #28]
    63f4:	e5bbc014 	ldr	ip, [fp, #20]!
    63f8:	e5b0e010 	ldr	lr, [r0, #16]!
    63fc:	ea000008 	b	0x6424
    6400:	e59d2004 	ldr	r2, [sp, #4]
    6404:	e1520008 	cmp	r2, r8
    6408:	0a000005 	beq	0x6424
    640c:	e5843000 	str	r3, [r4]
    6410:	e0893189 	add	r3, r9, r9, lsl #3
    6414:	e1a03103 	lsl	r3, r3, #2
    6418:	e0834108 	add	r4, r3, r8, lsl #2
    641c:	e59f30ec 	ldr	r3, [pc, #236]	; 0x6510
    6420:	e7b43003 	ldr	r3, [r4, r3]!
    6424:	e88d0302 	stm	sp, {r1, r8, r9}
    6428:	e1d520d2 	ldrsb	r2, [r5, #2]
    642c:	e0468188 	sub	r8, r6, r8, lsl #3
    6430:	e58d200c 	str	r2, [sp, #12]
    6434:	e3520000 	cmp	r2, #0
    6438:	e1a08108 	lsl	r8, r8, #2
    643c:	0a000007 	beq	0x6460
    6440:	e3a09007 	mov	r9, #7
    6444:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
    6448:	e1c33819 	bic	r3, r3, r9, lsl r8
    644c:	e3520000 	cmp	r2, #0
    6450:	0a000002 	beq	0x6460
    6454:	e59d200c 	ldr	r2, [sp, #12]
    6458:	e2029007 	and	r9, r2, #7
    645c:	e1833819 	orr	r3, r3, r9, lsl r8
    6460:	e1d590d3 	ldrsb	r9, [r5, #3]
    6464:	e0468201 	sub	r8, r6, r1, lsl #4
    6468:	e3590000 	cmp	r9, #0
    646c:	e1a08088 	lsl	r8, r8, #1
    6470:	ba000003 	blt	0x6484
    6474:	e3a01003 	mov	r1, #3
    6478:	e2099003 	and	r9, r9, #3
    647c:	e1c77811 	bic	r7, r7, r1, lsl r8
    6480:	e1877819 	orr	r7, r7, r9, lsl r8
    6484:	e1d590d4 	ldrsb	r9, [r5, #4]
    6488:	e3590000 	cmp	r9, #0
    648c:	ba000003 	blt	0x64a0
    6490:	e3a01003 	mov	r1, #3
    6494:	e2099003 	and	r9, r9, #3
    6498:	e1ccc811 	bic	ip, ip, r1, lsl r8
    649c:	e18cc819 	orr	ip, ip, r9, lsl r8
    64a0:	e59d200c 	ldr	r2, [sp, #12]
    64a4:	e3520001 	cmp	r2, #1
    64a8:	1a000007 	bne	0x64cc
    64ac:	e1d550d5 	ldrsb	r5, [r5, #5]
    64b0:	e3550000 	cmp	r5, #0
    64b4:	ba000004 	blt	0x64cc
    64b8:	e3a08001 	mov	r8, #1
    64bc:	e58d801c 	str	r8, [sp, #28]
    64c0:	e2055001 	and	r5, r5, #1
    64c4:	e1cee618 	bic	lr, lr, r8, lsl r6
    64c8:	e18ee615 	orr	lr, lr, r5, lsl r6
    64cc:	e59d5018 	ldr	r5, [sp, #24]
    64d0:	e2855001 	add	r5, r5, #1
    64d4:	e59d1024 	ldr	r1, [sp, #36]	; 0x24
    64d8:	e58d5018 	str	r5, [sp, #24]
    64dc:	e1510005 	cmp	r1, r5
    64e0:	8affffa5 	bhi	0x637c
    64e4:	e3540000 	cmp	r4, #0
    64e8:	0a000005 	beq	0x6504
    64ec:	e5843000 	str	r3, [r4]
    64f0:	e58a7000 	str	r7, [sl]
    64f4:	e58bc000 	str	ip, [fp]
    64f8:	e59d101c 	ldr	r1, [sp, #28]
    64fc:	e3510000 	cmp	r1, #0
    6500:	1580e000 	strne	lr, [r0]
    6504:	e3a00000 	mov	r0, #0
    6508:	e28dd02c 	add	sp, sp, #44	; 0x2c
    650c:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    6510:	060007dc 			; <UNDEFINED> instruction: 0x060007dc
    6514:	e92d4070 	push	{r4, r5, r6, lr}
    6518:	e1a04003 	mov	r4, r3
    651c:	e1a05002 	mov	r5, r2
    6520:	e1a03001 	mov	r3, r1
    6524:	e1a02000 	mov	r2, r0
    6528:	e3540000 	cmp	r4, #0
    652c:	11a0c004 	movne	ip, r4
    6530:	01a0c005 	moveq	ip, r5
    6534:	e16fef1c 	clz	lr, ip
    6538:	e28e0001 	add	r0, lr, #1
    653c:	e1a0c01c 	lsl	ip, ip, r0
    6540:	127ee03f 	rsbsne	lr, lr, #63	; 0x3f
    6544:	027ee01f 	rsbseq	lr, lr, #31
    6548:	4a000094 	bmi	0x67a0
    654c:	e3530000 	cmp	r3, #0
    6550:	116f1f13 	clzne	r1, r3
    6554:	016f1f12 	clzeq	r1, r2
    6558:	1271103f 	rsbsne	r1, r1, #63	; 0x3f
    655c:	0271101f 	rsbseq	r1, r1, #31
    6560:	e051600e 	subs	r6, r1, lr
    6564:	4a000092 	bmi	0x67b4
    6568:	52760004 	rsbspl	r0, r6, #4
    656c:	5a000093 	bpl	0x67c0
    6570:	e24e0020 	sub	r0, lr, #32
    6574:	e3500004 	cmp	r0, #4
    6578:	d1a01035 	lsrle	r1, r5, r0
    657c:	d18cc001 	orrle	ip, ip, r1
    6580:	e28f1f9f 	add	r1, pc, #636	; 0x6804
    6584:	e1a0ce2c 	lsr	ip, ip, #28
    6588:	e35e001f 	cmp	lr, #31
    658c:	e791c10c 	ldr	ip, [r1, ip, lsl #2]
    6590:	824ee020 	subhi	lr, lr, #32
    6594:	e26e6020 	rsb	r6, lr, #32
    6598:	8a000048 	bhi	0x66c0
    659c:	e081059c 	umull	r0, r1, ip, r5
    65a0:	e1a04e30 	lsr	r4, r0, lr
    65a4:	e1a01611 	lsl	r1, r1, r6
    65a8:	e1a00610 	lsl	r0, r0, r6
    65ac:	e1811004 	orr	r1, r1, r4
    65b0:	e2700000 	rsbs	r0, r0, #0
    65b4:	e2611000 	rsb	r1, r1, #0
    65b8:	32411001 	subcc	r1, r1, #1
    65bc:	e081019c 	umull	r0, r1, ip, r1
    65c0:	e08cc001 	add	ip, ip, r1
    65c4:	e081059c 	umull	r0, r1, ip, r5
    65c8:	e1a04e30 	lsr	r4, r0, lr
    65cc:	e1a01611 	lsl	r1, r1, r6
    65d0:	e1a00610 	lsl	r0, r0, r6
    65d4:	e1811004 	orr	r1, r1, r4
    65d8:	e2700000 	rsbs	r0, r0, #0
    65dc:	e2611000 	rsb	r1, r1, #0
    65e0:	32411001 	subcc	r1, r1, #1
    65e4:	e3530000 	cmp	r3, #0
    65e8:	e081019c 	umull	r0, r1, ip, r1
    65ec:	e08cc001 	add	ip, ip, r1
    65f0:	0a000009 	beq	0x661c
    65f4:	e081059c 	umull	r0, r1, ip, r5
    65f8:	e1a04e30 	lsr	r4, r0, lr
    65fc:	e1a01611 	lsl	r1, r1, r6
    6600:	e1a00610 	lsl	r0, r0, r6
    6604:	e1811004 	orr	r1, r1, r4
    6608:	e2700000 	rsbs	r0, r0, #0
    660c:	e2611000 	rsb	r1, r1, #0
    6610:	32411001 	subcc	r1, r1, #1
    6614:	e081019c 	umull	r0, r1, ip, r1
    6618:	e08cc001 	add	ip, ip, r1
    661c:	e080129c 	umull	r1, r0, ip, r2
    6620:	e3a01000 	mov	r1, #0
    6624:	e0a1039c 	umlal	r0, r1, ip, r3
    6628:	e1a00e30 	lsr	r0, r0, lr
    662c:	e1a04611 	lsl	r4, r1, r6
    6630:	e1800004 	orr	r0, r0, r4
    6634:	e1a01e31 	lsr	r1, r1, lr
    6638:	e0846590 	umull	r6, r4, r0, r5
    663c:	e0522006 	subs	r2, r2, r6
    6640:	e0244591 	mla	r4, r1, r5, r4
    6644:	e0c33004 	sbc	r3, r3, r4
    6648:	e3530001 	cmp	r3, #1
    664c:	31520005 	cmpcc	r2, r5
    6650:	38bd8070 	popcc	{r4, r5, r6, pc}
    6654:	e086429c 	umull	r4, r6, ip, r2
    6658:	e3a04000 	mov	r4, #0
    665c:	e0a4639c 	umlal	r6, r4, ip, r3
    6660:	e26ec020 	rsb	ip, lr, #32
    6664:	e1a06e36 	lsr	r6, r6, lr
    6668:	e1a03c14 	lsl	r3, r4, ip
    666c:	e1866003 	orr	r6, r6, r3
    6670:	e3a03000 	mov	r3, #0
    6674:	e1a04e34 	lsr	r4, r4, lr
    6678:	e08ce596 	umull	lr, ip, r6, r5
    667c:	e0900006 	adds	r0, r0, r6
    6680:	e0a11004 	adc	r1, r1, r4
    6684:	e042200e 	sub	r2, r2, lr
    6688:	e1520005 	cmp	r2, r5
    668c:	38bd8070 	popcc	{r4, r5, r6, pc}
    6690:	e2900001 	adds	r0, r0, #1
    6694:	e2a11000 	adc	r1, r1, #0
    6698:	e0422005 	sub	r2, r2, r5
    669c:	e052c005 	subs	ip, r2, r5
    66a0:	21a0200c 	movcs	r2, ip
    66a4:	e2b00000 	adcs	r0, r0, #0
    66a8:	e2a11000 	adc	r1, r1, #0
    66ac:	e052c005 	subs	ip, r2, r5
    66b0:	21a0200c 	movcs	r2, ip
    66b4:	e2b00000 	adcs	r0, r0, #0
    66b8:	e2a11000 	adc	r1, r1, #0
    66bc:	e8bd8070 	pop	{r4, r5, r6, pc}
    66c0:	e080159c 	umull	r1, r0, ip, r5
    66c4:	e3a01000 	mov	r1, #0
    66c8:	e0a1049c 	umlal	r0, r1, ip, r4
    66cc:	e1a01611 	lsl	r1, r1, r6
    66d0:	e1a06e30 	lsr	r6, r0, lr
    66d4:	e1811006 	orr	r1, r1, r6
    66d8:	e26e6020 	rsb	r6, lr, #32
    66dc:	e2611000 	rsb	r1, r1, #0
    66e0:	e1a00610 	lsl	r0, r0, r6
    66e4:	e2700000 	rsbs	r0, r0, #0
    66e8:	32411001 	subcc	r1, r1, #1
    66ec:	e081019c 	umull	r0, r1, ip, r1
    66f0:	e08cc001 	add	ip, ip, r1
    66f4:	e080159c 	umull	r1, r0, ip, r5
    66f8:	e3a01000 	mov	r1, #0
    66fc:	e0a1049c 	umlal	r0, r1, ip, r4
    6700:	e1a01611 	lsl	r1, r1, r6
    6704:	e1a06e30 	lsr	r6, r0, lr
    6708:	e1811006 	orr	r1, r1, r6
    670c:	e26e6020 	rsb	r6, lr, #32
    6710:	e2611000 	rsb	r1, r1, #0
    6714:	e1a00610 	lsl	r0, r0, r6
    6718:	e2700000 	rsbs	r0, r0, #0
    671c:	32411001 	subcc	r1, r1, #1
    6720:	e081019c 	umull	r0, r1, ip, r1
    6724:	e08cc001 	add	ip, ip, r1
    6728:	e24cc001 	sub	ip, ip, #1
    672c:	e080129c 	umull	r1, r0, ip, r2
    6730:	e3a01000 	mov	r1, #0
    6734:	e0a1039c 	umlal	r0, r1, ip, r3
    6738:	e1a00e31 	lsr	r0, r1, lr
    673c:	e0816590 	umull	r6, r1, r0, r5
    6740:	e0522006 	subs	r2, r2, r6
    6744:	e0211490 	mla	r1, r0, r4, r1
    6748:	e0c33001 	sbc	r3, r3, r1
    674c:	e1530004 	cmp	r3, r4
    6750:	01520005 	cmpeq	r2, r5
    6754:	33a01000 	movcc	r1, #0
    6758:	38bd8070 	popcc	{r4, r5, r6, pc}
    675c:	e081629c 	umull	r6, r1, ip, r2
    6760:	e3a06000 	mov	r6, #0
    6764:	e0a6139c 	umlal	r1, r6, ip, r3
    6768:	e3a01000 	mov	r1, #0
    676c:	e1a06e36 	lsr	r6, r6, lr
    6770:	e08ce596 	umull	lr, ip, r6, r5
    6774:	e0800006 	add	r0, r0, r6
    6778:	e052200e 	subs	r2, r2, lr
    677c:	e02ec496 	mla	lr, r6, r4, ip
    6780:	e0c3300e 	sbc	r3, r3, lr
    6784:	e1530004 	cmp	r3, r4
    6788:	01520005 	cmpeq	r2, r5
    678c:	38bd8070 	popcc	{r4, r5, r6, pc}
    6790:	e2800001 	add	r0, r0, #1
    6794:	e0522005 	subs	r2, r2, r5
    6798:	e0c33004 	sbc	r3, r3, r4
    679c:	e8bd8070 	pop	{r4, r5, r6, pc}
    67a0:	e92d000c 	push	{r2, r3}
    67a4:	e3a01000 	mov	r1, #0
    67a8:	e3a00000 	mov	r0, #0
    67ac:	e1a00000 	nop			; (mov r0, r0)
    67b0:	e8bd807c 	pop	{r2, r3, r4, r5, r6, pc}
    67b4:	e3a01000 	mov	r1, #0
    67b8:	e3a00000 	mov	r0, #0
    67bc:	e8bd8070 	pop	{r4, r5, r6, pc}
    67c0:	e266e020 	rsb	lr, r6, #32
    67c4:	e3a00000 	mov	r0, #0
    67c8:	e3a01000 	mov	r1, #0
    67cc:	e1a04614 	lsl	r4, r4, r6
    67d0:	e1a0ce35 	lsr	ip, r5, lr
    67d4:	e1a05615 	lsl	r5, r5, r6
    67d8:	e184400c 	orr	r4, r4, ip
    67dc:	e052e005 	subs	lr, r2, r5
    67e0:	e0d3c004 	sbcs	ip, r3, r4
    67e4:	e0a00000 	adc	r0, r0, r0
    67e8:	21a0300c 	movcs	r3, ip
    67ec:	21a0200e 	movcs	r2, lr
    67f0:	e2566001 	subs	r6, r6, #1
    67f4:	38bd8070 	popcc	{r4, r5, r6, pc}
    67f8:	e1b040a4 	lsrs	r4, r4, #1
    67fc:	e1a05065 	rrx	r5, r5
    6800:	eafffff5 	b	0x67dc
    6804:	f0f0f0f0 			; <UNDEFINED> instruction: 0xf0f0f0f0
    6808:	e38e38e3 	orr	r3, lr, #14876672	; 0xe30000
    680c:	d79435e5 	ldrle	r3, [r4, r5, ror #11]
    6810:	cccccccc 	stclgt	12, cr12, [ip], {204}	; 0xcc
    6814:	c30c30c3 	movwgt	r3, #49347	; 0xc0c3
    6818:	ba2e8ba2 	blt	0xba96a8
    681c:	b21642c8 	andslt	r4, r6, #200, 4	; 0x8000000c
    6820:	aaaaaaaa 	bge	0xfeab12d0
    6824:	a3d70a3d 	bicsge	r0, r7, #249856	; 0x3d000
    6828:	9d89d89d 	stcls	8, cr13, [r9, #628]	; 0x274
    682c:	97b425ed 	ldrls	r2, [r4, sp, ror #11]!
    6830:	92492492 	subls	r2, r9, #-1845493760	; 0x92000000
    6834:	8d3dcb08 	vldmdbhi	sp!, {d12-d15}
    6838:	88888888 	stmhi	r8, {r3, r7, fp, pc}
    683c:	84210842 	strthi	r0, [r1], #-2114	; 0x842
    6840:	80000000 	andhi	r0, r0, r0
    6844:	0320f1b2 	msreq	CPSR_, #-2147483604	; 0x8000002c
    6848:	f1c2d50a 			; <UNDEFINED> instruction: 0xf1c2d50a
    684c:	fa010320 	blx	0x474d4
    6850:	fa20f102 	blx	0x842c60
    6854:	fa00f303 	blx	0x43468
    6858:	ea41f002 	b	0x1082868
    685c:	47700103 	ldrbmi	r0, [r0, -r3, lsl #2]!
    6860:	f103fa00 			; <UNDEFINED> instruction: 0xf103fa00
    6864:	0000f04f 	andeq	pc, r0, pc, asr #32
    6868:	ea404770 	b	0x1018630
    686c:	46020301 	strmi	r0, [r2], -r1, lsl #6
    6870:	079bb530 			; <UNDEFINED> instruction: 0x079bb530
    6874:	f04fd10f 			; <UNDEFINED> instruction: 0xf04fd10f
    6878:	e0003401 	and	r3, r0, r1, lsl #8
    687c:	c908c208 	stmdbgt	r8, {r3, r9, lr, pc}
    6880:	f553fac4 	pld	[r3, #-2756]	; 0xac4
    6884:	d0f92d00 	rscsle	r2, r9, r0, lsl #26
    6888:	01fff013 	mvnseq	pc, r3, lsl r0	; <UNPREDICTABLE>
    688c:	1b01f802 	blne	0x8489c
    6890:	0a1bd00d 	beq	0x6fa8cc
    6894:	f811e7f8 			; <UNDEFINED> instruction: 0xf811e7f8
    6898:	2b003b01 	blcs	0x154a4
    689c:	3b01f802 	blcc	0x848ac
    68a0:	f811d005 			; <UNDEFINED> instruction: 0xf811d005
    68a4:	2b003b01 	blcs	0x154b0
    68a8:	3b01f802 	blcc	0x848b8
    68ac:	bd30d1f3 	ldfltd	f5, [r0, #-972]!	; 0xfffffc34
    68b0:	e1803001 	orr	r3, r0, r1
    68b4:	e92d4070 	push	{r4, r5, r6, lr}
    68b8:	e3130003 	tst	r3, #3
    68bc:	059f60d8 	ldreq	r6, [pc, #216]	; 0x699c
    68c0:	1a000020 	bne	0x6948
    68c4:	e3520004 	cmp	r2, #4
    68c8:	3a00001e 	bcc	0x6948
    68cc:	e4903004 	ldr	r3, [r0], #4
    68d0:	e4914004 	ldr	r4, [r1], #4
    68d4:	e2422004 	sub	r2, r2, #4
    68d8:	e6665ff3 	uqsub8	r5, r6, r3
    68dc:	e3550000 	cmp	r5, #0
    68e0:	0a000010 	beq	0x6928
    68e4:	e20300ff 	and	r0, r3, #255	; 0xff
    68e8:	e20410ff 	and	r1, r4, #255	; 0xff
    68ec:	e0400001 	sub	r0, r0, r1
    68f0:	e1901c05 	orrs	r1, r0, r5, lsl #24
    68f4:	18bd8070 	popne	{r4, r5, r6, pc}
    68f8:	e6ff0073 	uxth	r0, r3
    68fc:	e6ff1074 	uxth	r1, r4
    6900:	e0400001 	sub	r0, r0, r1
    6904:	e1901805 	orrs	r1, r0, r5, lsl #16
    6908:	18bd8070 	popne	{r4, r5, r6, pc}
    690c:	e3c304ff 	bic	r0, r3, #-16777216	; 0xff000000
    6910:	e3c414ff 	bic	r1, r4, #-16777216	; 0xff000000
    6914:	e0400001 	sub	r0, r0, r1
    6918:	e1901405 	orrs	r1, r0, r5, lsl #8
    691c:	01a00c23 	lsreq	r0, r3, #24
    6920:	00400c24 	subeq	r0, r0, r4, lsr #24
    6924:	e8bd8070 	pop	{r4, r5, r6, pc}
    6928:	e1530004 	cmp	r3, r4
    692c:	0affffe4 	beq	0x68c4
    6930:	e6bf0f33 	rev	r0, r3
    6934:	e6bf1f34 	rev	r1, r4
    6938:	e1500001 	cmp	r0, r1
    693c:	93e00000 	mvnls	r0, #0
    6940:	83a00001 	movhi	r0, #1
    6944:	e8bd8070 	pop	{r4, r5, r6, pc}
    6948:	e3520000 	cmp	r2, #0
    694c:	03a00000 	moveq	r0, #0
    6950:	08bd8070 	popeq	{r4, r5, r6, pc}
    6954:	e4d03001 	ldrb	r3, [r0], #1
    6958:	e4d14001 	ldrb	r4, [r1], #1
    695c:	e3530000 	cmp	r3, #0
    6960:	0a00000b 	beq	0x6994
    6964:	e1530004 	cmp	r3, r4
    6968:	1a000009 	bne	0x6994
    696c:	e2522001 	subs	r2, r2, #1
    6970:	0a000007 	beq	0x6994
    6974:	e4d03001 	ldrb	r3, [r0], #1
    6978:	e4d14001 	ldrb	r4, [r1], #1
    697c:	e3530000 	cmp	r3, #0
    6980:	0a000003 	beq	0x6994
    6984:	e1530004 	cmp	r3, r4
    6988:	1a000001 	bne	0x6994
    698c:	e2522001 	subs	r2, r2, #1
    6990:	1affffef 	bne	0x6954
    6994:	e0430004 	sub	r0, r3, r4
    6998:	e8bd8070 	pop	{r4, r5, r6, pc}
    699c:	01010101 	tsteq	r1, r1, lsl #2
    69a0:	e3520003 	cmp	r2, #3
    69a4:	9a000017 	bls	0x6a08
    69a8:	e210c003 	ands	ip, r0, #3
    69ac:	0a000008 	beq	0x69d4
    69b0:	e4d13001 	ldrb	r3, [r1], #1
    69b4:	e35c0002 	cmp	ip, #2
    69b8:	e082200c 	add	r2, r2, ip
    69bc:	94d1c001 	ldrbls	ip, [r1], #1
    69c0:	e4c03001 	strb	r3, [r0], #1
    69c4:	34d13001 	ldrbcc	r3, [r1], #1
    69c8:	94c0c001 	strbls	ip, [r0], #1
    69cc:	e2422004 	sub	r2, r2, #4
    69d0:	34c03001 	strbcc	r3, [r0], #1
    69d4:	e2113003 	ands	r3, r1, #3
    69d8:	0a000012 	beq	0x6a28
    69dc:	e2522008 	subs	r2, r2, #8
    69e0:	3a000004 	bcc	0x69f8
    69e4:	e4913004 	ldr	r3, [r1], #4
    69e8:	e2522008 	subs	r2, r2, #8
    69ec:	e491c004 	ldr	ip, [r1], #4
    69f0:	e8a01008 	stmia	r0!, {r3, ip}
    69f4:	eafffff9 	b	0x69e0
    69f8:	e2922004 	adds	r2, r2, #4
    69fc:	54913004 	ldrpl	r3, [r1], #4
    6a00:	54803004 	strpl	r3, [r0], #4
    6a04:	e1a00000 	nop			; (mov r0, r0)
    6a08:	e1b02f82 	lsls	r2, r2, #31
    6a0c:	24d13001 	ldrbcs	r3, [r1], #1
    6a10:	24d1c001 	ldrbcs	ip, [r1], #1
    6a14:	44d12001 	ldrbmi	r2, [r1], #1
    6a18:	24c03001 	strbcs	r3, [r0], #1
    6a1c:	24c0c001 	strbcs	ip, [r0], #1
    6a20:	44c02001 	strbmi	r2, [r0], #1
    6a24:	e12fff1e 	bx	lr
    6a28:	e92d4010 	push	{r4, lr}
    6a2c:	e2522020 	subs	r2, r2, #32
    6a30:	3a000005 	bcc	0x6a4c
    6a34:	e8b15018 	ldm	r1!, {r3, r4, ip, lr}
    6a38:	e2522020 	subs	r2, r2, #32
    6a3c:	e8a05018 	stmia	r0!, {r3, r4, ip, lr}
    6a40:	e8b15018 	ldm	r1!, {r3, r4, ip, lr}
    6a44:	e8a05018 	stmia	r0!, {r3, r4, ip, lr}
    6a48:	2afffff9 	bcs	0x6a34
    6a4c:	e1b0ce02 	lsls	ip, r2, #28
    6a50:	28b15018 	ldmcs	r1!, {r3, r4, ip, lr}
    6a54:	28a05018 	stmiacs	r0!, {r3, r4, ip, lr}
    6a58:	48b10018 	ldmmi	r1!, {r3, r4}
    6a5c:	48a00018 	stmiami	r0!, {r3, r4}
    6a60:	e8bd4010 	pop	{r4, lr}
    6a64:	e1b0cf02 	lsls	ip, r2, #30
    6a68:	24913004 	ldrcs	r3, [r1], #4
    6a6c:	24803004 	strcs	r3, [r0], #4
    6a70:	012fff1e 	bxeq	lr
    6a74:	e1b02f82 	lsls	r2, r2, #31
    6a78:	20d130b2 	ldrhcs	r3, [r1], #2
    6a7c:	44d12001 	ldrbmi	r2, [r1], #1
    6a80:	20c030b2 	strhcs	r3, [r0], #2
    6a84:	44c02001 	strbmi	r2, [r0], #1
    6a88:	e12fff1e 	bx	lr

    6a8c:	0200f04f 	andeq	pc, r0, #79	; 0x4f
    6a90:	4613b500 	ldrmi	fp, [r3], -r0, lsl #10
    6a94:	46964694 			; <UNDEFINED> instruction: 0x46964694
    6a98:	bf223920 	svclt	0x00223920
    6a9c:	500ce8a0 	andpl	lr, ip, r0, lsr #17
    6aa0:	500ce8a0 	andpl	lr, ip, r0, lsr #17
    6aa4:	0120f1b1 	msreq	CPSR_, r1	; <illegal shifter operand>
    6aa8:	aff7f4bf 	svcge	0x00f7f4bf
    6aac:	bf280709 	svclt	0x00280709
    6ab0:	500ce8a0 	andpl	lr, ip, r0, lsr #17
    6ab4:	c00cbf48 	andgt	fp, ip, r8, asr #30
    6ab8:	eb04f85d 	bl	0x144c34
    6abc:	bf280089 	svclt	0x00280089
    6ac0:	2b04f840 	blcs	0x144bc8
    6ac4:	4770bf08 	ldrbmi	fp, [r0, -r8, lsl #30]!
    6ac8:	f820bf48 			; <UNDEFINED> instruction: 0xf820bf48
    6acc:	f0112b02 			; <UNDEFINED> instruction: 0xf0112b02
    6ad0:	bf184f80 	svclt	0x00184f80
    6ad4:	2b01f800 	blcs	0x84adc
    6ad8:	00004770 	andeq	r4, r0, r0, ror r7
    6adc:	e3a00000 	mov	r0, #0
    6ae0:	ee070f15 	mcr	15, 0, r0, cr7, cr5, {0}
    6ae4:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
    6ae8:	e3800a01 	orr	r0, r0, #4096	; 0x1000
    6aec:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
    6af0:	e1a0f00e 	mov	pc, lr
    6af4:	e3a00000 	mov	r0, #0
    6af8:	ee070f15 	mcr	15, 0, r0, cr7, cr5, {0}
    6afc:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
    6b00:	e3c00004 	bic	r0, r0, #4
    6b04:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
    6b08:	e1a0f00e 	mov	pc, lr
    6b0c:	e3a00000 	mov	r0, #0
    6b10:	ee070f15 	mcr	15, 0, r0, cr7, cr5, {0}
    6b14:	e1a0f00e 	mov	pc, lr
    6b18:	e1a0f000 	mov	pc, r0
    6b1c:	ee020f10 	mcr	15, 0, r0, cr2, cr0, {0}
    6b20:	e1a0f00e 	mov	pc, lr
    6b24:	ee130f10 	mrc	15, 0, r0, cr3, cr0, {0}
    6b28:	e59f001c 	ldr	r0, [pc, #28]	; 0x6b4c
    6b2c:	ee030f10 	mcr	15, 0, r0, cr3, cr0, {0}
    6b30:	e1a0f00e 	mov	pc, lr
    6b34:	e3a00000 	mov	r0, #0
    6b38:	ee080f17 	mcr	15, 0, r0, cr8, cr7, {0}
    6b3c:	e1a0f00e 	mov	pc, lr
    6b40:	ee110f30 	mrc	15, 0, r0, cr1, cr0, {1}
    6b44:	e3800040 	orr	r0, r0, #64	; 0x40
    6b48:	ee010f30 	mcr	15, 0, r0, cr1, cr0, {1}
    6b4c:	55555555 	ldrbpl	r5, [r5, #-1365]	; 0x555
    6b50:	00002710 	andeq	r2, r0, r0, lsl r7
    6b54:	000186a0 	andeq	r8, r1, r0, lsr #13
    6b58:	000f4240 	andeq	r4, pc, r0, asr #4
    6b5c:	00989680 	addseq	r9, r8, r0, lsl #13
    6b60:	00000000 	andeq	r0, r0, r0
    6b64:	0000000a 	andeq	r0, r0, sl
    6b68:	0000000c 	andeq	r0, r0, ip
    6b6c:	0000000d 	andeq	r0, r0, sp
    6b70:	0000000f 	andeq	r0, r0, pc
    6b74:	00000014 	andeq	r0, r0, r4, lsl r0
    6b78:	00000019 	andeq	r0, r0, r9, lsl r0
    6b7c:	0000001e 	andeq	r0, r0, lr, lsl r0
    6b80:	00000023 	andeq	r0, r0, r3, lsr #32
    6b84:	00000028 	andeq	r0, r0, r8, lsr #32
    6b88:	0000002d 	andeq	r0, r0, sp, lsr #32
    6b8c:	00000032 	andeq	r0, r0, r2, lsr r0
    6b90:	00000037 	andeq	r0, r0, r7, lsr r0
    6b94:	0000003c 	andeq	r0, r0, ip, lsr r0
    6b98:	00000046 	andeq	r0, r0, r6, asr #32
    6b9c:	00000050 	andeq	r0, r0, r0, asr r0
    6ba0:	"SDMMC_PhyWrite",0
    6baf:	"SDMMC_PhyErase",0
    6bbe:	"SDMMC_LogicalWrite",0
    6bd1:	"SDMMC_LogicaErase",0,0
    6be4:	00000000 	andeq	r0, r0, r0
    6be8:	00000001 	andeq	r0, r0, r1
    6bec:	00000001 	andeq	r0, r0, r1
    6bf0:	00000001 	andeq	r0, r0, r1
    6bf4:	"0123456789abcdef"
    6c04:	00000000
    6c08:	00000000
