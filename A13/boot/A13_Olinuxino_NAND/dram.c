void mctl_ddr3_reset(void)
{
	__u32 reg_val;

	reg_val = mctl_read_w(SDR_CR);
	reg_val &= ~(0x1<<12);
	mctl_write_w(SDR_CR, reg_val);
	sdelay(0x100);
	reg_val = mctl_read_w(SDR_CR);
	reg_val |= (0x1<<12);
	mctl_write_w(SDR_CR, reg_val);
}

void mctl_set_drive(void)
{
    __u32 reg_val;

    reg_val = mctl_read_w(SDR_CR);
    reg_val |= (0x6<<12);
		reg_val |= 0xFFC;
    reg_val &= ~0x3;
    mctl_write_w(SDR_CR, reg_val);
}

void mctl_itm_disable(void)
{
    __u32 reg_val = 0x0;

    reg_val = mctl_read_w(SDR_CCR);
    reg_val |= 0x1<<28;
    mctl_write_w(SDR_CCR, reg_val);
}

void mctl_itm_enable(void)
{
    __u32 reg_val = 0x0;

    reg_val = mctl_read_w(SDR_CCR);
    reg_val &= ~(0x1<<28);
    mctl_write_w(SDR_CCR, reg_val);
}

void mctl_enable_dll0(void)
{
    mctl_write_w(SDR_DLLCR0, (mctl_read_w(SDR_DLLCR0) & ~0x40000000) | 0x80000000);
	sdelay(0x100);

    mctl_write_w(SDR_DLLCR0, mctl_read_w(SDR_DLLCR0) & ~0xC0000000);
	sdelay(0x1000);

    mctl_write_w(SDR_DLLCR0, (mctl_read_w(SDR_DLLCR0) & ~0x80000000) | 0x40000000);
    sdelay(0x1000);
}

/*
 * Note: This differs from pm/standby in that it checks the bus width
 */
void mctl_enable_dllx(void)
{
    __u32 i = 0;
    __u32 n;
    __u32 bus_width;
/*
    4d30:	e92d4030 	push	{r4, r5, lr}
    4d34:	e3a03000 	mov	r3, #0
*/

    bus_width = mctl_read_w(SDR_DCR);
    bus_width >>= 6;
    bus_width &= 7;

    if (bus_width == 3) {
	n = 5;
    } else {
	n = 3;
	i = 1;
    }

    for(i=1; i<n; i++)
    {
        mctl_write_w(SDR_DLLCR0+(i<<2), (mctl_read_w(SDR_DLLCR0+(i<<2)) & ~0x40000000) | 0x80000000);
    }

	sdelay(0x100);

    for(i=1; i<n; i++)
    {
        mctl_write_w(SDR_DLLCR0+(i<<2), mctl_read_w(SDR_DLLCR0+(i<<2)) & ~0xC0000000);
    }
	sdelay(0x1000);

    for(i=1; i<5; i++)
    {
        mctl_write_w(SDR_DLLCR0+(i<<2), (mctl_read_w(SDR_DLLCR0+(i<<2)) & ~0x80000000) | 0x40000000);
    }
    sdelay(0x1000);
}

void mctl_disable_dll(void)
{
	__u32 reg_val;

	reg_val = mctl_read_w(SDR_DLLCR0);
	reg_val &= ~(0x1<<30);
	reg_val |= 0x1U<<31;
	mctl_write_w(SDR_DLLCR0, reg_val);

	reg_val = mctl_read_w(SDR_DLLCR1);
	reg_val &= ~(0x1<<30);
	reg_val |= 0x1U<<31;
	mctl_write_w(SDR_DLLCR1, reg_val);

	reg_val = mctl_read_w(SDR_DLLCR2);
	reg_val &= ~(0x1<<30);
	reg_val |= 0x1U<<31;
	mctl_write_w(SDR_DLLCR2, reg_val);

	reg_val = mctl_read_w(SDR_DLLCR3);
	reg_val &= ~(0x1<<30);
	reg_val |= 0x1U<<31;
	mctl_write_w(SDR_DLLCR3, reg_val);

	reg_val = mctl_read_w(SDR_DLLCR4);
	reg_val &= ~(0x1<<30);
	reg_val |= 0x1U<<31;
	mctl_write_w(SDR_DLLCR4, reg_val);
}

__u32 hpcr_value[32] = {
	0, 0, 0, 0,
	0, 0, 0, 0,
	0, 0, 0, 0,
	0, 0, 0, 0,
	0x1031, 0x1031, 0x735, 0x1035,
	0x1035, 0x731, 0x1031, 0,
	0x301, 0x301, 0x301, 0x301,
	0x301, 0x301, 0x301, 0
};

void mctl_configure_hostport(void)
{
    __u32 i;

    for(i=0; i<32; i++)
    {
        mctl_write_w(SDR_HPCR + (i<<2), hpcr_value[i]);
    }
}

void mctl_setup_dram_clock(__u32 clk)
{
    __u32 reg_val;

    //setup DRAM PLL
    reg_val = mctl_read_w(DRAM_CCM_SDRAM_PLL_REG);
    reg_val &= ~0x3;
    reg_val |= 0x1;                     //m factor
    reg_val &= ~(0x3<<4);
    reg_val |= 0x1<<4;                  //k factor
    reg_val &= ~(0x1f<<8);
    reg_val |= ((clk/24)&0x1f)<<8;      //n factor
    reg_val &= ~(0x3<<16);
    reg_val |= 0x1<<16;                 //p factor
    reg_val &= ~(0x1<<29);                                         //PLL on
    reg_val |= (__u32)0x1<<31;          //PLL En
    mctl_write_w(DRAM_CCM_SDRAM_PLL_REG, reg_val);

    sdelay(0x100000);

    reg_val = mctl_read_w(DRAM_CCM_SDRAM_PLL_REG);
	reg_val |= 0x1<<29;
    mctl_write_w(DRAM_CCM_SDRAM_PLL_REG, reg_val);

    //setup MBUS clock
    reg_val = (0x1<<31)|(0x2<<24)|(0x1); 	
    mctl_write_w(DRAM_CCM_MUS_CLK_REG, reg_val);
        
    //open DRAMC AHB & DLL register clock
    //close it first
    reg_val = mctl_read_w(DRAM_CCM_AHB_GATE_REG);
    reg_val &= ~(0x3<<14);
    mctl_write_w(DRAM_CCM_AHB_GATE_REG, reg_val);
	sdelay(0x1000);
    //then open it
    reg_val |= 0x3<<14;
    mctl_write_w(DRAM_CCM_AHB_GATE_REG, reg_val);
	sdelay(0x1000);
}


/*
**********************************************************************************************************************
*                                               GET DRAM SIZE
*
* Description: Get DRAM Size in MB unit;
*
* Arguments  : None
*
* Returns    : 32/64/128
*
* Notes      :
*
**********************************************************************************************************************
*/
unsigned DRAMC_get_dram_size(void)
{
    __u32 reg_val;
    __u32 dram_size;
    __u32 chip_den;

    reg_val = mctl_read_w(SDR_DCR);
    chip_den = (reg_val>>3)&0x7;
    if(chip_den == 0)
        dram_size = 32;
    else if(chip_den == 1)
        dram_size = 64;
    else if(chip_den == 2)
        dram_size = 128;
    else if(chip_den == 3)
        dram_size = 256;
    else if(chip_den == 4)
        dram_size = 512;
    else
        dram_size = 1024;

    if( ((reg_val>>1)&0x3) == 0x1)
        dram_size<<=1;
    if( ((reg_val>>6)&0x7) == 0x3)
        dram_size<<=1;
    if( ((reg_val>>10)&0x3) == 0x1)
        dram_size<<=1;

    return dram_size;
}

/*
*********************************************************************************************************
*                                   CHECK DDR READPIPE
*
* Description: check ddr readpipe;
*
* Arguments  : none
*
* Returns    : result, -1:fail, 0:success;
*
* Note       :
*********************************************************************************************************
*/
int DRAMC_scan_readpipe(void)
{
    __u32 reg_val;

    //data training trigger
    reg_val = mctl_read_w(SDR_CCR);
    reg_val |= 0x1<<30;
    mctl_write_w(SDR_CCR, reg_val);

    //check whether data training process is end
    while(mctl_read_w(SDR_CCR) & (0x1<<30)) {};

    //check data training result
    reg_val = mctl_read_w(SDR_CSR);
    if(reg_val & (0x1<<20))
    {
        return -1;
    }

    return (0);
}

/*
*********************************************************************************************************
* Description: Set autorefresh cycle
*
* Arguments  : clock value in MHz unit
*
* Returns    : none
*
* Note       : differs significantly from arch-sun5i/pm/standby/dram_ini.c
*********************************************************************************************************
*/
void DRAMC_set_autorefresh_cycle(__u32 clk)
{
	__u32 reg_val;
	__u32 tmp_val;

	reg_val = 131;
	tmp_val = (7987*clk)>>10;
	tmp_val = tmp_val*9 - 200;
	reg_val |= tmp_val<<8;
	reg_val |= 0x8<<24;
	mctl_write_w(SDR_DRR, reg_val);
}

/*
*********************************************************************************************************
*                                   DRAM CLOCK CONTROL
*
* Description: dram get clock
*
* Arguments  : on   dram clock output (0: disable, 1: enable)
*
* Returns    : none
*
* Note       :
*********************************************************************************************************
*/
void DRAMC_clock_output_en(__u32 on)
{
    __u32 reg_val;

    reg_val = mctl_read_w(SDR_CR);

    if(on)
        reg_val |= 0x1<<16;
    else
        reg_val &= ~(0x1<<16);

    mctl_write_w(SDR_CR, reg_val);
}


__s32 DRAMC_init(__dram_para_t *para)
{
    __u32 i;
    __u32 reg_val;
    __s32 ret_val;

    //check input dram parameter structure
    if(!para)
    {
        //dram parameter is invalid
        return -1;
    }

    //setup DRAM relative clock
    mctl_setup_dram_clock(para->dram_clk);

    // This is new unknown code!
    mctl_write_w(SDR_0x23c, 0);

    //reset external DRAM
    mctl_ddr3_reset();
    mctl_set_drive();

    //dram clock off
    DRAMC_clock_output_en(0);

    mctl_itm_disable();
    mctl_enable_dll0();

    //configure external DRAM
    reg_val = 0;
    if(para->dram_type == 3)
        reg_val |= 0x1;
    reg_val |= (para->dram_io_width>>3) <<1;

    if(para->dram_chip_density == 256)
        reg_val |= 0x0<<3;
    else if(para->dram_chip_density == 512)
        reg_val |= 0x1<<3;
    else if(para->dram_chip_density == 1024)
        reg_val |= 0x2<<3;
    else if(para->dram_chip_density == 2048)
        reg_val |= 0x3<<3;
    else if(para->dram_chip_density == 4096)
        reg_val |= 0x4<<3;
    else if(para->dram_chip_density == 8192)
        reg_val |= 0x5<<3;
    else
        reg_val |= 0x0<<3;

    reg_val |= ((para->dram_bus_width>>3) - 1)<<6;

    reg_val |= (para->dram_rank_num -1)<<10;

    reg_val |= 0x1<<12;
    reg_val |= ((0x1)&0x3)<<13;

    mctl_write_w(SDR_DCR, reg_val);

	//set odt impendance divide ratio
	reg_val=((para->dram_zq)>>8)&0xfffff;
	reg_val |= ((para->dram_zq)&0xff)<<20;

	reg_val |= (para->dram_zq)&0xf0000000;
    mctl_write_w(SDR_ZQCR0, reg_val);

    //dram clock on
    DRAMC_clock_output_en(1);

	sdelay(0x10);

    while(mctl_read_w(SDR_CCR) & (0x1U<<31)) {};

    mctl_enable_dllx();

    //set refresh period
    DRAMC_set_autorefresh_cycle(para->dram_clk);

    //set timing parameters
    mctl_write_w(SDR_TPR0, para->dram_tpr0);
    mctl_write_w(SDR_TPR1, para->dram_tpr1);
    mctl_write_w(SDR_TPR2, para->dram_tpr2);

#if NOT_DONE
    //set I/O configure register
    reg_val = 0x00cc0000;
    reg_val |= (para->dram_odt_en)&0x3;
    reg_val |= ((para->dram_odt_en)&0x3)<<30;
    mctl_write_w(SDR_IOCR, reg_val);
#endif

    //set mode register
    if(para->dram_type==3)                  //ddr3
    {
        reg_val = 0x1000;
        reg_val |= (para->dram_cas - 4)<<4;
        reg_val |= 0x5<<9;
    }
    else if(para->dram_type==2)             //ddr2
    {
        reg_val = 0x2;
        reg_val |= para->dram_cas<<4;
        reg_val |= 0x5<<9;
    }
    mctl_write_w(SDR_MR, reg_val);

    mctl_write_w(SDR_EMR, para->dram_emr1);
		mctl_write_w(SDR_EMR2, para->dram_emr2);
		mctl_write_w(SDR_EMR3, para->dram_emr3);

	//set DQS window mode
	reg_val = mctl_read_w(SDR_CCR);
	reg_val |= 0x1U<<14;
	reg_val &= ~(0x1U<<17);
	mctl_write_w(SDR_CCR, reg_val);

    //initial external DRAM
    reg_val = mctl_read_w(SDR_CCR);
    reg_val |= 0x1U<<31;
    mctl_write_w(SDR_CCR, reg_val);

    while(mctl_read_w(SDR_CCR) & (0x1U<<31)) {};

    //scan read pipe value
    mctl_itm_enable();
    ret_val = DRAMC_scan_readpipe();

    if(ret_val < 0)
    {
        return 0;
    }
    //configure all host port
    mctl_configure_hostport();

    return DRAMC_get_dram_size();
}



f_52b8_:
    52b8:	e92d4070 	push	{r4, r5, r6, lr}
    52bc:	e24dd050 	sub	sp, sp, #80	; 0x50
    52c0:	e1a06000 	mov	r6, r0
    52c4:	e1a0000d 	mov	r0, sp
    52c8:	ebfff273 	bl	f_1c9c_
    52cc:	e59d0004 	ldr	r0, [sp, #4]
    52d0:	e3500e7d 	cmp	r0, #2000	; 0x7d0
    52d4:	9a000003 	bls	0x52e8
    52d8:	e59d0004 	ldr	r0, [sp, #4]
    52dc:	e59f104c 	ldr	r1, =0x000f4240
    52e0:	ebfffe4b 	bl	standby_uldiv
    52e4:	e58d0004 	str	r0, [sp, #4]
    52e8:	e3a05000 	mov	r5, #0
    52ec:	e3a04000 	mov	r4, #0
    52f0:	ea000003 	b	0x5304
    52f4:	e1a0000d 	mov	r0, sp
    52f8:	ebffff5d 	bl	DRAMC_init
    52fc:	e1a05000 	mov	r5, r0
    5300:	e2844001 	add	r4, r4, #1
    5304:	e3550000 	cmp	r5, #0
    5308:	1a000001 	bne	0x5314
    530c:	e3540004 	cmp	r4, #4
    5310:	3afffff7 	bcc	0x52f4
    5314:	e1a00005 	mov	r0, r5
    5318:	e28dd050 	add	sp, sp, #80	; 0x50
    531c:	e8bd8070 	pop	{r4, r5, r6, pc}

    5330:	000f4240

    5334:	e3a00000 	mov	r0, #0
    5338:	ee070f15 	mcr	15, 0, r0, cr7, cr5, {0}
    533c:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
    5340:	e3800a01 	orr	r0, r0, #0x1000
    5344:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
    5348:	e1a0f00e 	mov	pc, lr

    534c:	e3a00000 	mov	r0, #0
    5350:	ee070f15 	mcr	15, 0, r0, cr7, cr5, {0}
    5354:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
    5358:	e3800a01 	orr	r0, r0, #0x1000
    535c:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
    5360:	e1a0f00e 	mov	pc, lr

    5364:	e3a00000 	mov	r0, #0
    5368:	ee070f15 	mcr	15, 0, r0, cr7, cr5, {0}
    536c:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
    5370:	e3c00004 	bic	r0, r0, #4
    5374:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
    5378:	e1a0f00e 	mov	pc, lr

    537c:	e3a00000 	mov	r0, #0
    5380:	ee070f15 	mcr	15, 0, r0, cr7, cr5, {0}
    5384:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
    5388:	e3c00004 	bic	r0, r0, #4
    538c:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
    5390:	e1a0f00e 	mov	pc, lr

f_5394_:
    5394:	ee300f30 	mrc	15, 1, r0, cr0, cr0, {1}
    5398:	e2103407 	ands	r3, r0, #0x7000000
    539c:	e1a03ba3 	lsr	r3, r3, #23
    53a0:	0a00001a 	beq	0x5410
    53a4:	e3a0a000 	mov	sl, #0
    53a8:	e08a20aa 	add	r2, sl, sl, lsr #1
    53ac:	e1a01230 	lsr	r1, r0, r2
    53b0:	e2011007 	and	r1, r1, #7
    53b4:	e3510002 	cmp	r1, #2
    53b8:	ba000011 	blt	0x5404
    53bc:	ee40af10 	mcr	15, 2, sl, cr0, cr0, {0}
    53c0:	f57ff06f 	isb	sy
    53c4:	ee301f10 	mrc	15, 1, r1, cr0, cr0, {0}
    53c8:	e2012007 	and	r2, r1, #7
    53cc:	e2822004 	add	r2, r2, #4
    53d0:	e30043ff 	movw	r4, #1023	; 0x3ff
    53d4:	e01441a1 	ands	r4, r4, r1, lsr #3
    53d8:	e16f5f14 	clz	r5, r4
    53dc:	e3077fff 	movw	r7, #32767	; 0x7fff
    53e0:	e01776a1 	ands	r7, r7, r1, lsr #13
    53e4:	e1a09004 	mov	r9, r4
    53e8:	e18ab519 	orr	fp, sl, r9, lsl r5
    53ec:	e18bb217 	orr	fp, fp, r7, lsl r2
    53f0:	ee07bf56 	mcr	15, 0, fp, cr7, cr6, {2}
    53f4:	e2599001 	subs	r9, r9, #1
    53f8:	aafffffa 	bge	0x53e8
    53fc:	e2577001 	subs	r7, r7, #1
    5400:	aafffff7 	bge	0x53e4
    5404:	e28aa002 	add	sl, sl, #2
    5408:	e153000a 	cmp	r3, sl
    540c:	caffffe5 	bgt	0x53a8
    5410:	e3a0a000 	mov	sl, #0
    5414:	ee40af10 	mcr	15, 2, sl, cr0, cr0, {0}
    5418:	f57ff06f 	isb	sy
    541c:	e1a0f00e 	mov	pc, lr

f_5420_:
    5420:	e3a00000 	mov	r0, #0
    5424:	ee070f15 	mcr	15, 0, r0, cr7, cr5, {0}
    5428:	e1a0f00e 	mov	pc, lr

    542c:	e92d4001 	push	{r0, lr}
    5430:	ebffffff 	bl	f_5434_
f_5434_:
    5434:	ebffffff 	bl	f_5438_
f_5438_:
    5438:	ebffffff 	bl	f_543c_
f_543c_:
    543c:	ebffffff 	bl	f_5440_
f_5440_:
    5440:	ebffffff 	bl	f_5444_
f_5444_:
    5444:	ebffffff 	bl	f_5448_
f_5448_:
    5448:	ebffffff 	bl	f_544c_
f_544c_:
    544c:	ebffffff 	bl	f_5450_
f_5450_:
    5450:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
    5454:	e3800b02 	orr	r0, r0, #0x800
    5458:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
    545c:	e8bd4001 	pop	{r0, lr}
    5460:	e1a0f00e 	mov	pc, lr

    5464:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
    5468:	e3a02040 	mov	r2, #64	; 0x40
    546c:	e2423001 	sub	r3, r2, #1
    5470:	e1c00003 	bic	r0, r0, r3
    5474:	ee070f3b 	mcr	15, 0, r0, cr7, cr11, {1}
    5478:	f57ff04f 	dsb	sy
    547c:	ee070f35 	mcr	15, 0, r0, cr7, cr5, {1}
    5480:	e0800002 	add	r0, r0, r2
    5484:	e1500001 	cmp	r0, r1
    5488:	3afffff9 	bcc	0x5474
    548c:	e3a00000 	mov	r0, #0
    5490:	ee070fd5 	mcr	15, 0, r0, cr7, cr5, {6}
    5494:	f57ff04f 	dsb	sy
    5498:	f57ff06f 	isb	sy
    549c:	e8bd5fff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
    54a0:	e1a0f00e 	mov	pc, lr

f_54a4_:
    54a4:	e3a02040 	mov	r2, #64	; 0x40
    54a8:	e2423001 	sub	r3, r2, #1
    54ac:	e1c00003 	bic	r0, r0, r3
    54b0:	ee070f3e 	mcr	15, 0, r0, cr7, cr14, {1}
    54b4:	e0800002 	add	r0, r0, r2
    54b8:	e1500001 	cmp	r0, r1
    54bc:	3afffffb 	bcc	0x54b0
    54c0:	f57ff04f 	dsb	sy
    54c4:	e1a0f00e 	mov	pc, lr

f_54c8_:
    54c8:	e3a02040 	mov	r2, #64	; 0x40
    54cc:	e2423001 	sub	r3, r2, #1
    54d0:	e1c00003 	bic	r0, r0, r3
    54d4:	ee070f3a 	mcr	15, 0, r0, cr7, cr10, {1}
    54d8:	e0800002 	add	r0, r0, r2
    54dc:	e1500001 	cmp	r0, r1
    54e0:	3afffffb 	bcc	0x54d4
    54e4:	f57ff04f 	dsb	sy
    54e8:	e1a0f00e 	mov	pc, lr

call_r0:
    54ec:	e1a0f000 	mov	pc, r0

    54f0:	ee020f10 	mcr	15, 0, r0, cr2, cr0, {0}
    54f4:	e1a0f00e 	mov	pc, lr

f_54f8_:
    54f8:	ee130f10 	mrc	15, 0, r0, cr3, cr0, {0}
    54fc:	e59f0010 	ldr	r0, [0x5514]
    5500:	ee030f10 	mcr	15, 0, r0, cr3, cr0, {0}
    5504:	e1a0f00e 	mov	pc, lr

    5508:	e3a00000 	mov	r0, #0
    550c:	ee080f17 	mcr	15, 0, r0, cr8, cr7, {0}
    5510:	e1a0f00e 	mov	pc, lr

    5514:	55555555
    5518:	0bd02b75
    551c:	62d15ca3
    5520:	07e91c93
    5524:	3a722162
    5528:	67f90d67
    552c:	077d1be7
    5530:	0dac032f
    5534:	24362716
    5538:	15107922
    553c:	52873860
    5540:	4252480f
    5544:	5a2d1789
    5548:	5e102a49
    554c:	4b4e437f
    5550:	216e2f45
    5554:	71305cb7
    5558:	60e42a3f
    555c:	0ef04dc9
    5560:	1bb90f52
    5564:	7a566211
    5568:	4ea7226d
    556c:	36926f36
    5570:	0c6238bf
    5574:	4c5505eb
    5578:	728c60f4
    557c:	20373b6f
    5580:	09367f69
    5584:	4ceb651a
    5588:	79f36218
    558c:	18d9383f
    5590:	5c824f05
    5594:	6f172912
    5598:	59386856
    559c:	61ab1007
    55a0:	57c23e7f
    55a4:	4f62542f
    55a8:	2eac7454
    55ac:	42d47739
    55b0:	435a2f90
    55b4:	20642e52
    55b8:	66ad637c
    55bc:	0bad2c90
    55c0:	0029759c
    55c4:	71260986
    55c8:	16051ca7
    55cc:	27f5386a
    55d0:	6d751380
    55d4:	0f8e24c3
    55d8:	14182b7a
    55dc:	7dc11fd1
    55e0:	43af2d8e
    55e4:	7da32267
    55e8:	13384e3d
    55ec:	454d50db
    55f0:	40a3764d
    55f4:	262b42e6
    55f8:	1aea2d2e
    55fc:	173d2e17
    5600:	71bf3a6e
    5604:	0a5d25f9
    5608:	0fbe7c57
    560c:	493946ce
    5610:	37bb6b17
    5614:	76db3e91

    5618:	"wrong chip number ,rb_mode = %d, bank = %d, chip = %d, chip info = %x\n",0
    5660:	"[Read_single_page] NFC_ReadRetry %d cycles, chip = %d, block = %d, page = %d, RetryCount = %d\n",0
    56c4:	"PHY_GetDefaultParam: chip 0x%x, Read Retry Default Value is 0x%x, 0x%x, 0x%x, 0x%x\n",0
    571c:	"PHY_SetDefaultParam: chip 0x%x, Read Retry Default Value is 0x%x, 0x%x, 0x%x, 0x%x\n";0
    5774:	"PHY_SetDefaultParam: chip 0x%x, Read Default Value After Set value is 0x%x, 0x%x, 0x%x, 0x%x\n",0
    57d4:	"PHY_SynchBank : read status invalid ,chip = %x, bank = %x, cmd value = %x, status = %x\n",0
    582c:	"PHY_SynchBank : wait nand ready timeout,chip = %x, bank = %x, cmd value = %x, status = %x\n";0
    5888:	"PHY_SynchBank : last W/E operation fail,chip = %x, bank = %x, cmd value = %x, status = %x\n",0
    58e4:	"[SCAN_DBG] get nand id from boot0 is 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x.\n",0
    5934:	"[SCAN_DBG] =======================================================\n\n",0

    597c:	0000005c
    5980:	000000c5
    5984:	00060000
    5988:	0006000a
    598c:	fffd0000
    5990:	fff8fff9
    5994:	fffa0000
    5998:	fff1fff3
    599c:	fff50000
    59a0:	ffe9ffec
    59a4:	00000000
    59a8:	ffe2ffe6
    59ac:	00000000
    59b0:	ffdbffe0
    59b4:	00060000
    59b8:	0006000a
    59bc:	fffd0000
    59c0:	fff8fff9
    59c4:	fffa0000
    59c8:	fff1fff3
    59cc:	fff70000
    59d0:	ffe9ffec
    59d4:	00000000
    59d8:	ffe2ffe6
    59dc:	00000000
    59e0:	ffdbffe0
    59e4:	007c0004
    59e8:	00740078
    59ec:	00000008
    59f0:	00000000
    59f4:	00000000
    59f8:	000a0005
    59fc:	00000000
    5a00:	00000028
    5a04:	00d800ec
    5a08:	00f500ed
    5a0c:	00e600ed
    5a10:	000f000a
    5a14:	00000005
    5a18:	000a000f
    5a1c:	00ec00fb
    5a20:	00ef00e8
    5a24:	00dc00e8
    5a28:	00fb00f1
    5a2c:	00f000fe
    5a30:	0000000a
    5a34:	00ec00fb
    5a38:	00e200d0
    5a3c:	00c200d0
    5a40:	000f0014
    5a44:	00ec00fb
    5a48:	00fb00e8
    5a4c:	00dc00e8
    5a50:	0014001e
    5a54:	00ec00fb
    5a58:	00ff00fb
    5a5c:	00f800fb
    5a60:	000c0007
    5a64:	00000002

    5ae8:	00000000
    5aec:	00000000
    5af0:	00000000
    5af4:	00000000
    5af8:	00000000
    5afc:	00000000
    5b00:	00000000
    5b04:	01c02300	; DMAC_IO_BASE + 0x300 = DMAC_DYN_CHANNEL_BASE
    5b08:	00000000
    5b0c:	00000000
    5b10:	00000000
    5b14:	00000000
    5b18:	00000000
    5b1c:	00000000
    5b20:	00000000
    5b24:	00000000
    5b28:	00000000
    5b2c:	00000000
    5b30:	00000000
    5b34:	00000000
    5b38: END (FF padded)
