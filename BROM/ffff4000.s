BROM:
ffff4000:	ea000006 	b	start

ffff4004:	"eGON.BRM ",0
ffff4010:	"110011001623",0

start:
ffff4020:	e30004e2 	movw	r0, #0x4e2		; r0 = 1250;
ffff4024:	e2500001 	subs	r0, r0, #0x1		; r0 = r0 - 1;
ffff4028:	1afffffd 	bne	0xffff4024		; loop until r0 reaches 0
ffff402c:	e10f0000 	mrs	r0, CPSR		; read current program status register
ffff4030:	e3c0001f 	bic	r0, r0, #0x1f		; load System (ARMv4+) R0-R14, CPSR, PC as MASK
ffff4034:	e3800013 	orr	r0, r0, #0x13		; set SVC mode (supervisor) R0-R12, R13_svc R14_svc CPSR, SPSR_IRQ, PC
ffff4038:	e3800040 	orr	r0, r0, #0x40		; enable FIQ interrupts
ffff403c:	e3c00c02 	bic	r0, r0, #0x200		; set little endianess
ffff4040:	e121f000 	msr	CPSR_c, r0		; write current program status register flag bits
ffff4044:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}; read from CoProcessor
ffff4048:	e3c00005 	bic	r0, r0, #0x5		; MMU disabled, data caching disabled
ffff404c:	e3c00b06 	bic	r0, r0, #0x1800		; program flow prediction disabled, instruction caching disabled
ffff4050:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}; write to CoProcessor
ffff4054:	e59f1050 	ldr	r1, =0x01c20c94		; load WDT_MODE (watchdog timer) address
ffff4058:	e5912000 	ldr	r2, [r1]		; load WDT_MODE value
ffff405c:	e3c22001 	bic	r2, r2, #0x1		; disable watchdog reset
ffff4060:	e5812000 	str	r2, [r1]		; store WDT_MODE register
ffff4064:	e59f1044 	ldr	r1, =0x01c20000		; load CCM_PLL1_CFG
ffff4068:	e5912054 	ldr	r2, [r1, #0x54]		; load CCM_CPU_AXI_AHB_APB0_CFG
ffff406c:	e3003333 	movw	r3, #0x333		; CCM_AXI_CLK_DIV = 0x11, CCM_AHB_CLK_DIV = 0x11, CCM_APB0_CLK_DIV = 0x11
ffff4070:	e1c22003 	bic	r2, r2, r3		; CCM_AXI_CLK_DIV = 0x00, CCM_AHB_CLK_DIV = 0x00, CCM_APB0_CLK_DIV = 0x00
ffff4074:	e3a03000 	mov	r3, #0x0		; r3 = 0;
ffff4078:	e1822003 	orr	r2, r2, r3		; verify?
ffff407c:	e5812054 	str	r2, [r1, #0x54]		; store CCM_CPU_AXI_AHB_APB0_CFG
ffff4080:	e5912060 	ldr	r2, [r1, #0x60]		; load CCM_AHB_GATING0
ffff4084:	e3a03040 	mov	r3, #0x40		; CCM_AHB_GATE_DMA = 0x1
ffff4088:	e1822003 	orr	r2, r2, r3		; enable CCM_AHB_GATE_DMA in r2
ffff408c:	e5812060 	str	r2, [r1, #0x60]		; store CCM_AHB_GATING0
ffff4090:	e5912068 	ldr	r2, [r1, #0x68]		; load CCM_APB0_GATING
ffff4094:	e3a03020 	mov	r3, #0x20		; CCM_APB_GATE_PIO = 0x1
ffff4098:	e1822003 	orr	r2, r2, r3		; enable CCM_APB_GATE_PIO in r2
ffff409c:	e5812068 	str	r2, [r1, #0x68]		; store CCM_APB0_GATING
ffff40a0:	e3a0d902 	mov	sp, #0x8000		; setup stackpointer to 32k (SRAM_BASE + SRAM_SIZE)
ffff40a4:	eb000002 	bl	boot			; jump to boot
ffff40a8:	eafffffe 	b	0xffff40a8		; loop forever

void main(void) {
	int i;
	int reg_val;

	for (i = 1250; i > 0; i--);

	asm("mrs r0, CPSR");
	asm("bic r0, r0, #0x1f");
	asm("orr r0, r0, #0x13");
	asm("orr r0, r0, #0x40");
	asm("bic r0, r0, #0x200");
	asm("msr CPSRc, r0);
	asm("mrc 15, 0, r0, cr1, cr0, {0}");
	asm("bic r0, r0, #0x5");
	asm("bic r0, r0, #0x18000");
	asm("mcr 15, 0, r0, cr1, cr0, {0}");

	reg_val = readl(TMR_WDT_MODE);
	reg_val &= !TMR_WDT_RST;
	writel(reg_val, TMR_WDT_MODE);

	reg_val = readl(CCM_CPU_AXI_AHB_APB0_CFG);
	reg_val &= !(CCM_AXI_DIV(4) | CCM_AHB_CLK_DIV(8), CCM_APB0_CLK_DIV(8));
	writel(reg_val, CCM_CPU_AXI_AHB_APB0_CFG);

	reg_val = readl(CCM_AHB_GATING0);
	reg_val |= CCM_AHB_GATE_DMA;
	writel(reg_val, CCM_AHB_gATING0);

	reg_val = readl(CCM_APB0_GATING);
	reg_val |= CCM_APB_GATE_PIO;
	writel(reg_val, CCM_APB0_GATING);

	asm("mov sp, 0x8000");

	boot();

	while (TRUE);
}

boot:
ffff40b4:	e92d4010 	push	{r4, lr}		; push r4 and link register (return address) onto the stack
ffff40b8:	eb0008b1 	bl	check_uboot		; check if uboot button is pressed, return value in r0
ffff40bc:	e1a04000 	mov	r4, r0			; r4 = check_uboot();
ffff40c0:	e3540000 	cmp	r4, #0x0		; see if check_uboot returned 0
ffff40c4:	0a000000 	beq	.try_boot_MMC0		; if check_uboot was 0, try to boot from MMC0
ffff40c8:	ea000016 	b	.boot_fel		; else boot FEL mode
.try_boot_MMC0:
ffff40cc:	e3a00000 	mov	r0, #0x0		; r0 = 0x0; (which mmc to boot, 0 = mmc0)
ffff40d0:	eb0003fa 	bl	load_from_mmc		; load SPL from mmc0
ffff40d4:	e1a04000 	mov	r4, r0			; r4 = load_from_mmc();
ffff40d8:	e3540000 	cmp	r4, #0x0		; see if load_from_mmc returned 0
ffff40dc:	1a000000 	bne	.try_boot_NAND		; if load_from_mmc returned 0 try to boot from NAND-flash
ffff40e0:	ea000013 	b	.boot_spl		; else skip to .boot_spl
.try_boot_NAND:
ffff40e4:	eb0004c9 	bl	load_from_nand		; load SPL from NAND
ffff40e8:	e1a04000 	mov	r4, r0			; r4 = load_from_nand();
ffff40ec:	e3540000 	cmp	r4, #0x0		; see if load_from_nand returned 0
ffff40f0:	1a000000 	bne	.try_boot_MMC2		; if load_from_nand returned 0 try to boot from MMC2
ffff40f4:	ea00000e 	b	.boot_spl		; else skip to .boot_spl
.try_boot_MMC2:
ffff40f8:	e3a00002 	mov	r0, #0x2		; r0 = 0x2; (which mmc to boot, 2 = mmc2)
ffff40fc:	eb0003ef 	bl	load_from_mmc		; load SPL from mmc0
ffff4100:	e1a04000 	mov	r4, r0			; r4 = load_from_mmc();
ffff4104:	e3540000 	cmp	r4, #0x0		; see if load_from_mmc returned 0
ffff4108:	1a000000 	bne	.try_boot_SPINOR	; if load_from_mmc returned 0 try to boot from SPI NOR-flash
ffff410c:	ea000008 	b	.boot_spl		; else skip to .boot_spl
.try_boot_SPINOR:
ffff4110:	eb0006e6 	bl	load_from_spinor	; load SPL from SPI NOR-flash
ffff4114:	e1a04000 	mov	r4, r0			; r4 = load_from_spinor();
ffff4118:	e3540000 	cmp	r4, #0x0		; see if load_from_spinor returned 0
ffff411c:	1a000000 	bne	.none_found		; if load_from_spinor returned 0 boot from FEL mode (via .none_found)
ffff4120:	ea000003 	b	.boot			; else skip to .boot_spl
.none_found:
ffff4124:	e320f000 	nop	{0}
.boot_fel:
ffff4128:	e59f0010 	ldr	r0, =0xffff0020		; load interrupt vector 'fel_setup' into r0
ffff412c:	eb0008ca 	bl	call_r0			; execute 'fel_setup' (via call_r0)
ffff4130:	e320f000 	nop	{0}
.boot_spl
ffff4134:	e3a00000 	mov	r0, #0x0		; r0 = 0;
ffff4138:	eb0008c7 	bl	call_r0			; execute from address 0 (SRAM_BASE, via call_r0) which was put here by load_from_*
ffff413c:	e8bd8010 	pop	{r4, pc}		; pop r4 and program counter back from th stack and return to ffff40a8

void boot(void) {
	int pin;

	pin = check_uboot();
	if (!pin)
		if (load_from_mmc(MMC0))
			call_r0(SRAM_BASE);
		else if (load_from_nand())
			call_r0(SRAM_BASE);
		else if (load_from_mmc(MMC2))
			call_r0(SRAM_BASE);
		else if (load_from_spinor())
			call_r0(SRAM_BASE);

	call_r0(FEL_SETUP);
}

f_4144:
ffff4144:	e92d401f 	push	{r0, r1, r2, r3, r4, lr}
ffff4148:	e1a04000 	mov	r4, r0
ffff414c:	e1a0000d 	mov	r0, sp
ffff4150:	e3a01000 	mov	r1, #0x0
ffff4154:	e1a02001 	mov	r2, r1
ffff4158:	e1a03001 	mov	r3, r1
ffff415c:	e1a0c001 	mov	ip, r1
ffff4160:	e880100e 	stm	r0, {r1, r2, r3, ip}
ffff4164:	e3a00000 	mov	r0, #0x0
ffff4168:	e58d0000 	str	r0, [sp]
ffff416c:	e58d0004 	str	r0, [sp, #0x4]
ffff4170:	e58d0008 	str	r0, [sp, #0x8]
ffff4174:	e59d000c 	ldr	r0, [sp, #0xc]
ffff4178:	e3c0003f 	bic	r0, r0, #0x3f
ffff417c:	e58d000c 	str	r0, [sp, #0xc]
ffff4180:	e59d000c 	ldr	r0, [sp, #0xc]
ffff4184:	e3c00b02 	bic	r0, r0, #0x800
ffff4188:	e2800b02 	add	r0, r0, #0x800
ffff418c:	e58d000c 	str	r0, [sp, #0xc]
ffff4190:	e1a02004 	mov	r2, r4
ffff4194:	e1a0000d 	mov	r0, sp
ffff4198:	eb000311 	bl	f_4de4
ffff419c:	e3500000 	cmp	r0, #0x0
ffff41a0:	0a000002 	beq	0xffff41b0
ffff41a4:	e3e00000 	mvn	r0, #0x0
ffff41a8:	e28dd010 	add	sp, sp, #0x10
ffff41ac:	e8bd8010 	pop	{r4, pc}
ffff41b0:	e3a00000 	mov	r0, #0x0
ffff41b4:	eafffffb 	b	0xffff41a8

f_41b8:
ffff41b8:	e92d4030 	push	{r4, r5, lr}
ffff41bc:	e24dd094 	sub	sp, sp, #0x94
ffff41c0:	e1a04000 	mov	r4, r0
ffff41c4:	e1a05001 	mov	r5, r1
ffff41c8:	e28d0084 	add	r0, sp, #0x84
ffff41cc:	e3a01000 	mov	r1, #0x0
ffff41d0:	e1a02001 	mov	r2, r1
ffff41d4:	e1a03001 	mov	r3, r1
ffff41d8:	e1a0c001 	mov	ip, r1
ffff41dc:	e880100e 	stm	r0, {r1, r2, r3, ip}
ffff41e0:	e3a00000 	mov	r0, #0x0
ffff41e4:	e58d0084 	str	r0, [sp, #0x84]
ffff41e8:	e3a00002 	mov	r0, #0x2
ffff41ec:	e58d0088 	str	r0, [sp, #0x88]
ffff41f0:	e5940008 	ldr	r0, [r4, #0x8]
ffff41f4:	e1a00800 	lsl	r0, r0, #0x10
ffff41f8:	e58d008c 	str	r0, [sp, #0x8c]
ffff41fc:	e59d0090 	ldr	r0, [sp, #0x90]
ffff4200:	e3c0003f 	bic	r0, r0, #0x3f
ffff4204:	e2800007 	add	r0, r0, #0x7
ffff4208:	e58d0090 	str	r0, [sp, #0x90]
ffff420c:	e59d0090 	ldr	r0, [sp, #0x90]
ffff4210:	e3c00040 	bic	r0, r0, #0x40
ffff4214:	e58d0090 	str	r0, [sp, #0x90]
ffff4218:	e59d0090 	ldr	r0, [sp, #0x90]
ffff421c:	e3c00c01 	bic	r0, r0, #0x100
ffff4220:	e2800c01 	add	r0, r0, #0x100
ffff4224:	e58d0090 	str	r0, [sp, #0x90]
ffff4228:	e1a02005 	mov	r2, r5
ffff422c:	e28d1004 	add	r1, sp, #0x4
ffff4230:	e28d0084 	add	r0, sp, #0x84
ffff4234:	eb0002ea 	bl	f_4de4
ffff4238:	e3500000 	cmp	r0, #0x0
ffff423c:	0a000002 	beq	0xffff424c
ffff4240:	e3e00000 	mvn	r0, #0x0
ffff4244:	e28dd094 	add	sp, sp, #0x94
ffff4248:	e8bd8030 	pop	{r4, r5, pc}
ffff424c:	e3a00000 	mov	r0, #0x0
ffff4250:	eafffffb 	b	0xffff4244

f_4254:
ffff4254:	e92d4030 	push	{r4, r5, lr}
ffff4258:	e24dd094 	sub	sp, sp, #0x94
ffff425c:	e1a04000 	mov	r4, r0
ffff4260:	e1a05001 	mov	r5, r1
ffff4264:	e28d0084 	add	r0, sp, #0x84
ffff4268:	e3a01000 	mov	r1, #0x0
ffff426c:	e1a02001 	mov	r2, r1
ffff4270:	e1a03001 	mov	r3, r1
ffff4274:	e1a0c001 	mov	ip, r1
ffff4278:	e880100e 	stm	r0, {r1, r2, r3, ip}
ffff427c:	e1a00005 	mov	r0, r5
ffff4280:	ebffffaf 	bl	f_4144
ffff4284:	e3500000 	cmp	r0, #0x0
ffff4288:	0a000002 	beq	0xffff4298
ffff428c:	e3e00000 	mvn	r0, #0x0
ffff4290:	e28dd094 	add	sp, sp, #0x94
ffff4294:	e8bd8030 	pop	{r4, r5, pc}
ffff4298:	e3a00000 	mov	r0, #0x0
ffff429c:	e58d0084 	str	r0, [sp, #0x84]
ffff42a0:	e3a00001 	mov	r0, #0x1
ffff42a4:	e58d0088 	str	r0, [sp, #0x88]
ffff42a8:	e30001aa 	movw	r0, #0x1aa
ffff42ac:	e58d008c 	str	r0, [sp, #0x8c]
ffff42b0:	e59d0090 	ldr	r0, [sp, #0x90]
ffff42b4:	e3c0003f 	bic	r0, r0, #0x3f
ffff42b8:	e2800008 	add	r0, r0, #0x8
ffff42bc:	e58d0090 	str	r0, [sp, #0x90]
ffff42c0:	e1a02005 	mov	r2, r5
ffff42c4:	e28d1004 	add	r1, sp, #0x4
ffff42c8:	e28d0084 	add	r0, sp, #0x84
ffff42cc:	eb0002c4 	bl	f_4de4
ffff42d0:	e3500000 	cmp	r0, #0x0
ffff42d4:	1a000008 	bne	0xffff42fc
ffff42d8:	e59d0004 	ldr	r0, [sp, #0x4]
ffff42dc:	e7df061f 	bfc	r0, #0xc, #0x14
ffff42e0:	e30011aa 	movw	r1, #0x1aa
ffff42e4:	e1500001 	cmp	r0, r1
ffff42e8:	1a000003 	bne	0xffff42fc
ffff42ec:	e3a00001 	mov	r0, #0x1
ffff42f0:	e5840004 	str	r0, [r4, #0x4]
ffff42f4:	e3a00000 	mov	r0, #0x0
ffff42f8:	eaffffe4 	b	0xffff4290
ffff42fc:	e3a00001 	mov	r0, #0x1
ffff4300:	e58d0084 	str	r0, [sp, #0x84]
ffff4304:	e3a00002 	mov	r0, #0x2
ffff4308:	e58d0088 	str	r0, [sp, #0x88]
ffff430c:	e3a00000 	mov	r0, #0x0
ffff4310:	e58d008c 	str	r0, [sp, #0x8c]
ffff4314:	e59d0090 	ldr	r0, [sp, #0x90]
ffff4318:	e3c0003f 	bic	r0, r0, #0x3f
ffff431c:	e2800037 	add	r0, r0, #0x37
ffff4320:	e58d0090 	str	r0, [sp, #0x90]
ffff4324:	e1a02005 	mov	r2, r5
ffff4328:	e28d1004 	add	r1, sp, #0x4
ffff432c:	e28d0084 	add	r0, sp, #0x84
ffff4330:	eb0002ab 	bl	f_4de4
ffff4334:	e3500000 	cmp	r0, #0x0
ffff4338:	1a000011 	bne	0xffff4384
ffff433c:	e3a00001 	mov	r0, #0x1
ffff4340:	e58d0088 	str	r0, [sp, #0x88]
ffff4344:	e59f07b8 	ldr	r0, =0x40ff0000
ffff4348:	e58d008c 	str	r0, [sp, #0x8c]
ffff434c:	e59d0090 	ldr	r0, [sp, #0x90]
ffff4350:	e3c0003f 	bic	r0, r0, #0x3f
ffff4354:	e2800029 	add	r0, r0, #0x29
ffff4358:	e58d0090 	str	r0, [sp, #0x90]
ffff435c:	e1a02005 	mov	r2, r5
ffff4360:	e28d1004 	add	r1, sp, #0x4
ffff4364:	e28d0084 	add	r0, sp, #0x84
ffff4368:	eb00029d 	bl	f_4de4
ffff436c:	e3500000 	cmp	r0, #0x0
ffff4370:	1a000003 	bne	0xffff4384
ffff4374:	e3a00001 	mov	r0, #0x1
ffff4378:	e5840004 	str	r0, [r4, #0x4]
ffff437c:	e3a00000 	mov	r0, #0x0
ffff4380:	eaffffc2 	b	0xffff4290
ffff4384:	e3a00002 	mov	r0, #0x2
ffff4388:	e5840004 	str	r0, [r4, #0x4]
ffff438c:	e3a00000 	mov	r0, #0x0
ffff4390:	eaffffbe 	b	0xffff4290

f_4394:
ffff4394:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
ffff4398:	e24dd090 	sub	sp, sp, #0x90
ffff439c:	e1a04000 	mov	r4, r0
ffff43a0:	e1a05001 	mov	r5, r1
ffff43a4:	e3a07000 	mov	r7, #0x0
ffff43a8:	e3a080c8 	mov	r8, #0xc8
ffff43ac:	e28d0080 	add	r0, sp, #0x80
ffff43b0:	e3a01000 	mov	r1, #0x0
ffff43b4:	e1a02001 	mov	r2, r1
ffff43b8:	e1a03001 	mov	r3, r1
ffff43bc:	e1a0c001 	mov	ip, r1
ffff43c0:	e880100e 	stm	r0, {r1, r2, r3, ip}
ffff43c4:	e1a00005 	mov	r0, r5
ffff43c8:	ebffff5d 	bl	f_4144
ffff43cc:	e3500000 	cmp	r0, #0x0
ffff43d0:	0a000002 	beq	0xffff43e0
ffff43d4:	e3e00000 	mvn	r0, #0x0
ffff43d8:	e28dd090 	add	sp, sp, #0x90
ffff43dc:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
ffff43e0:	e28d0080 	add	r0, sp, #0x80
ffff43e4:	e3a01000 	mov	r1, #0x0
ffff43e8:	e1a02001 	mov	r2, r1
ffff43ec:	e1a03001 	mov	r3, r1
ffff43f0:	e1a0c001 	mov	ip, r1
ffff43f4:	e880100e 	stm	r0, {r1, r2, r3, ip}
ffff43f8:	e3a00000 	mov	r0, #0x0
ffff43fc:	e58d0080 	str	r0, [sp, #0x80]
ffff4400:	e3a00001 	mov	r0, #0x1
ffff4404:	e58d0084 	str	r0, [sp, #0x84]
ffff4408:	e30001aa 	movw	r0, #0x1aa
ffff440c:	e58d0088 	str	r0, [sp, #0x88]
ffff4410:	e59d008c 	ldr	r0, [sp, #0x8c]
ffff4414:	e3c0003f 	bic	r0, r0, #0x3f
ffff4418:	e2800008 	add	r0, r0, #0x8
ffff441c:	e58d008c 	str	r0, [sp, #0x8c]
ffff4420:	e1a02005 	mov	r2, r5
ffff4424:	e1a0100d 	mov	r1, sp
ffff4428:	e28d0080 	add	r0, sp, #0x80
ffff442c:	eb00026c 	bl	f_4de4
ffff4430:	e3500000 	cmp	r0, #0x0
ffff4434:	1a000005 	bne	0xffff4450
ffff4438:	e59d0000 	ldr	r0, [sp]
ffff443c:	e7df061f 	bfc	r0, #0xc, #0x14
ffff4440:	e30011aa 	movw	r1, #0x1aa
ffff4444:	e1500001 	cmp	r0, r1
ffff4448:	1a000000 	bne	0xffff4450
ffff444c:	e3a07001 	mov	r7, #0x1
ffff4450:	ea000043 	b	0xffff4564
ffff4454:	e3580000 	cmp	r8, #0x0
ffff4458:	ca000001 	bgt	0xffff4464
ffff445c:	e3e00000 	mvn	r0, #0x0
ffff4460:	eaffffdc 	b	0xffff43d8
ffff4464:	e2488001 	sub	r8, r8, #0x1
ffff4468:	e28d0080 	add	r0, sp, #0x80
ffff446c:	e3a01000 	mov	r1, #0x0
ffff4470:	e1a02001 	mov	r2, r1
ffff4474:	e1a03001 	mov	r3, r1
ffff4478:	e1a0c001 	mov	ip, r1
ffff447c:	e880100e 	stm	r0, {r1, r2, r3, ip}
ffff4480:	e3a00001 	mov	r0, #0x1
ffff4484:	e58d0080 	str	r0, [sp, #0x80]
ffff4488:	e3a00002 	mov	r0, #0x2
ffff448c:	e58d0084 	str	r0, [sp, #0x84]
ffff4490:	e3a00000 	mov	r0, #0x0
ffff4494:	e58d0088 	str	r0, [sp, #0x88]
ffff4498:	e59d008c 	ldr	r0, [sp, #0x8c]
ffff449c:	e3c0003f 	bic	r0, r0, #0x3f
ffff44a0:	e2800037 	add	r0, r0, #0x37
ffff44a4:	e58d008c 	str	r0, [sp, #0x8c]
ffff44a8:	e1a02005 	mov	r2, r5
ffff44ac:	e1a0100d 	mov	r1, sp
ffff44b0:	e28d0080 	add	r0, sp, #0x80
ffff44b4:	eb00024a 	bl	f_4de4
ffff44b8:	e3500000 	cmp	r0, #0x0
ffff44bc:	0a000001 	beq	0xffff44c8
ffff44c0:	e3e00000 	mvn	r0, #0x0
ffff44c4:	eaffffc3 	b	0xffff43d8
ffff44c8:	e3a00001 	mov	r0, #0x1
ffff44cc:	e58d0084 	str	r0, [sp, #0x84]
ffff44d0:	e3570000 	cmp	r7, #0x0
ffff44d4:	0a000002 	beq	0xffff44e4
ffff44d8:	e59d0088 	ldr	r0, [sp, #0x88]
ffff44dc:	e3800101 	orr	r0, r0, #0x40000000
ffff44e0:	e58d0088 	str	r0, [sp, #0x88]
ffff44e4:	e59d0088 	ldr	r0, [sp, #0x88]
ffff44e8:	e380073f 	orr	r0, r0, #0xfc0000
ffff44ec:	e58d0088 	str	r0, [sp, #0x88]
ffff44f0:	e59d008c 	ldr	r0, [sp, #0x8c]
ffff44f4:	e3c0003f 	bic	r0, r0, #0x3f
ffff44f8:	e2800029 	add	r0, r0, #0x29
ffff44fc:	e58d008c 	str	r0, [sp, #0x8c]
ffff4500:	e1a02005 	mov	r2, r5
ffff4504:	e1a0100d 	mov	r1, sp
ffff4508:	e28d0080 	add	r0, sp, #0x80
ffff450c:	eb000234 	bl	f_4de4
ffff4510:	e3500000 	cmp	r0, #0x0
ffff4514:	0a000001 	beq	0xffff4520
ffff4518:	e3e00000 	mvn	r0, #0x0
ffff451c:	eaffffad 	b	0xffff43d8
ffff4520:	e59d0000 	ldr	r0, [sp]
ffff4524:	e200073f 	and	r0, r0, #0xfc0000
ffff4528:	e350073f 	cmp	r0, #0xfc0000
ffff452c:	0a000001 	beq	0xffff4538
ffff4530:	e3e00000 	mvn	r0, #0x0
ffff4534:	eaffffa7 	b	0xffff43d8
ffff4538:	e3a06000 	mov	r6, #0x0
ffff453c:	e320f000 	nop	{0}
ffff4540:	e1a00006 	mov	r0, r6
ffff4544:	e2866001 	add	r6, r6, #0x1
ffff4548:	e30014e2 	movw	r1, #0x4e2
ffff454c:	e1500001 	cmp	r0, r1
ffff4550:	3afffffa 	bcc	0xffff4540
ffff4554:	e59d0000 	ldr	r0, [sp]
ffff4558:	e3100102 	tst	r0, #-0x80000000	; 0x80000000
ffff455c:	0a000000 	beq	0xffff4564
ffff4560:	ea000000 	b	0xffff4568
ffff4564:	eaffffba 	b	0xffff4454
ffff4568:	e320f000 	nop	{0}
ffff456c:	e3570000 	cmp	r7, #0x0
ffff4570:	0a000005 	beq	0xffff458c
ffff4574:	e59d0000 	ldr	r0, [sp]
ffff4578:	e3100101 	tst	r0, #0x40000000
ffff457c:	0a000002 	beq	0xffff458c
ffff4580:	e5940004 	ldr	r0, [r4, #0x4]
ffff4584:	e3800020 	orr	r0, r0, #0x20
ffff4588:	e5840004 	str	r0, [r4, #0x4]
ffff458c:	e3a00000 	mov	r0, #0x0
ffff4590:	eaffff90 	b	0xffff43d8

f_4594:
ffff4594:	e92d40f0 	push	{r4, r5, r6, r7, lr}
ffff4598:	e24dd094 	sub	sp, sp, #0x94
ffff459c:	e1a04000 	mov	r4, r0
ffff45a0:	e1a05001 	mov	r5, r1
ffff45a4:	e3a070c8 	mov	r7, #0xc8
ffff45a8:	e28d0084 	add	r0, sp, #0x84
ffff45ac:	e3a01000 	mov	r1, #0x0
ffff45b0:	e1a02001 	mov	r2, r1
ffff45b4:	e1a03001 	mov	r3, r1
ffff45b8:	e1a0c001 	mov	ip, r1
ffff45bc:	e880100e 	stm	r0, {r1, r2, r3, ip}
ffff45c0:	e1a00005 	mov	r0, r5
ffff45c4:	ebfffede 	bl	f_4144
ffff45c8:	e3500000 	cmp	r0, #0x0
ffff45cc:	0a000002 	beq	0xffff45dc
ffff45d0:	e3e00000 	mvn	r0, #0x0
ffff45d4:	e28dd094 	add	sp, sp, #0x94
ffff45d8:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
ffff45dc:	e3a00002 	mov	r0, #0x2
ffff45e0:	e58d0084 	str	r0, [sp, #0x84]
ffff45e4:	e3a00001 	mov	r0, #0x1
ffff45e8:	e58d0088 	str	r0, [sp, #0x88]
ffff45ec:	e59f0514 	ldr	r0, =0x40ff8000
ffff45f0:	e58d008c 	str	r0, [sp, #0x8c]
ffff45f4:	e59d0090 	ldr	r0, [sp, #0x90]
ffff45f8:	e3c0003f 	bic	r0, r0, #0x3f
ffff45fc:	e2800001 	add	r0, r0, #0x1
ffff4600:	e58d0090 	str	r0, [sp, #0x90]
ffff4604:	ea00001e 	b	0xffff4684
ffff4608:	e3570000 	cmp	r7, #0x0
ffff460c:	ca000001 	bgt	0xffff4618
ffff4610:	e3e00000 	mvn	r0, #0x0
ffff4614:	eaffffee 	b	0xffff45d4
ffff4618:	e2477001 	sub	r7, r7, #0x1
ffff461c:	e1a02005 	mov	r2, r5
ffff4620:	e28d1004 	add	r1, sp, #0x4
ffff4624:	e28d0084 	add	r0, sp, #0x84
ffff4628:	eb0001ed 	bl	f_4de4
ffff462c:	e3500000 	cmp	r0, #0x0
ffff4630:	0a000001 	beq	0xffff463c
ffff4634:	e3e00000 	mvn	r0, #0x0
ffff4638:	eaffffe5 	b	0xffff45d4
ffff463c:	e59d0004 	ldr	r0, [sp, #0x4]
ffff4640:	e59f14c4 	ldr	r1, =0x00ff8000
ffff4644:	e0000001 	and	r0, r0, r1
ffff4648:	e1500001 	cmp	r0, r1
ffff464c:	0a000001 	beq	0xffff4658
ffff4650:	e3e00000 	mvn	r0, #0x0
ffff4654:	eaffffde 	b	0xffff45d4
ffff4658:	e59d0004 	ldr	r0, [sp, #0x4]
ffff465c:	e3100102 	tst	r0, #-0x80000000	; 0x80000000
ffff4660:	0a000000 	beq	0xffff4668
ffff4664:	ea000007 	b	0xffff4688
ffff4668:	e3a06000 	mov	r6, #0x0
ffff466c:	e320f000 	nop	{0}
ffff4670:	e1a00006 	mov	r0, r6
ffff4674:	e2866001 	add	r6, r6, #0x1
ffff4678:	e30014e2 	movw	r1, #0x4e2
ffff467c:	e1500001 	cmp	r0, r1
ffff4680:	3afffffa 	bcc	0xffff4670
ffff4684:	eaffffdf 	b	0xffff4608
ffff4688:	e320f000 	nop	{0}
ffff468c:	e59d0004 	ldr	r0, [sp, #0x4]
ffff4690:	e3100101 	tst	r0, #0x40000000
ffff4694:	0a000002 	beq	0xffff46a4
ffff4698:	e5940004 	ldr	r0, [r4, #0x4]
ffff469c:	e3800020 	orr	r0, r0, #0x20
ffff46a0:	e5840004 	str	r0, [r4, #0x4]
ffff46a4:	e3a00000 	mov	r0, #0x0
ffff46a8:	eaffffc9 	b	0xffff45d4

f_46ac:
ffff46ac:	e92d4010 	push	{r4, lr}
ffff46b0:	e24dd090 	sub	sp, sp, #0x90
ffff46b4:	e1a04000 	mov	r4, r0
ffff46b8:	e28d0080 	add	r0, sp, #0x80
ffff46bc:	e3a01000 	mov	r1, #0x0
ffff46c0:	e1a02001 	mov	r2, r1
ffff46c4:	e1a03001 	mov	r3, r1
ffff46c8:	e1a0c001 	mov	ip, r1
ffff46cc:	e880100e 	stm	r0, {r1, r2, r3, ip}
ffff46d0:	e3a00000 	mov	r0, #0x0
ffff46d4:	e58d0080 	str	r0, [sp, #0x80]
ffff46d8:	e3a00001 	mov	r0, #0x1
ffff46dc:	e58d0084 	str	r0, [sp, #0x84]
ffff46e0:	e3a00000 	mov	r0, #0x0
ffff46e4:	e58d0088 	str	r0, [sp, #0x88]
ffff46e8:	e59d008c 	ldr	r0, [sp, #0x8c]
ffff46ec:	e3c0003f 	bic	r0, r0, #0x3f
ffff46f0:	e2800002 	add	r0, r0, #0x2
ffff46f4:	e58d008c 	str	r0, [sp, #0x8c]
ffff46f8:	e59d008c 	ldr	r0, [sp, #0x8c]
ffff46fc:	e3c00040 	bic	r0, r0, #0x40
ffff4700:	e2800040 	add	r0, r0, #0x40
ffff4704:	e58d008c 	str	r0, [sp, #0x8c]
ffff4708:	e1a02004 	mov	r2, r4
ffff470c:	e1a0100d 	mov	r1, sp
ffff4710:	e28d0080 	add	r0, sp, #0x80
ffff4714:	eb0001b2 	bl	f_4de4
ffff4718:	e3500000 	cmp	r0, #0x0
ffff471c:	0a000002 	beq	0xffff472c
ffff4720:	e3e00000 	mvn	r0, #0x0
ffff4724:	e28dd090 	add	sp, sp, #0x90
ffff4728:	e8bd8010 	pop	{r4, pc}
ffff472c:	e3a00000 	mov	r0, #0x0
ffff4730:	eafffffb 	b	0xffff4724

f_4734:
ffff4734:	e92d4030 	push	{r4, r5, lr}
ffff4738:	e24dd094 	sub	sp, sp, #0x94
ffff473c:	e1a04000 	mov	r4, r0
ffff4740:	e1a05001 	mov	r5, r1
ffff4744:	e28d0084 	add	r0, sp, #0x84
ffff4748:	e3a01000 	mov	r1, #0x0
ffff474c:	e1a02001 	mov	r2, r1
ffff4750:	e1a03001 	mov	r3, r1
ffff4754:	e1a0c001 	mov	ip, r1
ffff4758:	e880100e 	stm	r0, {r1, r2, r3, ip}
ffff475c:	e3a00000 	mov	r0, #0x0
ffff4760:	e58d0084 	str	r0, [sp, #0x84]
ffff4764:	e3a00001 	mov	r0, #0x1
ffff4768:	e58d0088 	str	r0, [sp, #0x88]
ffff476c:	e3a00000 	mov	r0, #0x0
ffff4770:	e58d008c 	str	r0, [sp, #0x8c]
ffff4774:	e59d0090 	ldr	r0, [sp, #0x90]
ffff4778:	e3c0003f 	bic	r0, r0, #0x3f
ffff477c:	e2800003 	add	r0, r0, #0x3
ffff4780:	e58d0090 	str	r0, [sp, #0x90]
ffff4784:	e59d0090 	ldr	r0, [sp, #0x90]
ffff4788:	e3c00040 	bic	r0, r0, #0x40
ffff478c:	e58d0090 	str	r0, [sp, #0x90]
ffff4790:	e59d0090 	ldr	r0, [sp, #0x90]
ffff4794:	e3c00c01 	bic	r0, r0, #0x100
ffff4798:	e2800c01 	add	r0, r0, #0x100
ffff479c:	e58d0090 	str	r0, [sp, #0x90]
ffff47a0:	e1a02005 	mov	r2, r5
ffff47a4:	e28d1004 	add	r1, sp, #0x4
ffff47a8:	e28d0084 	add	r0, sp, #0x84
ffff47ac:	eb00018c 	bl	f_4de4
ffff47b0:	e3500000 	cmp	r0, #0x0
ffff47b4:	0a000002 	beq	0xffff47c4
ffff47b8:	e3e00000 	mvn	r0, #0x0
ffff47bc:	e28dd094 	add	sp, sp, #0x94
ffff47c0:	e8bd8030 	pop	{r4, r5, pc}
ffff47c4:	e30f1fff 	movw	r1, #0xffff
ffff47c8:	e59d0004 	ldr	r0, [sp, #0x4]
ffff47cc:	e0010820 	and	r0, r1, r0, lsr #0x10
ffff47d0:	e5840008 	str	r0, [r4, #0x8]
ffff47d4:	e3a00000 	mov	r0, #0x0
ffff47d8:	eafffff7 	b	0xffff47bc

f_47dc:
ffff47dc:	e92d4030 	push	{r4, r5, lr}
ffff47e0:	e24dd01c 	sub	sp, sp, #0x1c
ffff47e4:	e1a04000 	mov	r4, r0
ffff47e8:	e1a05001 	mov	r5, r1
ffff47ec:	e3a02018 	mov	r2, #0x18
ffff47f0:	e59f1318 	ldr	r1, =d_6460
ffff47f4:	e28d0004 	add	r0, sp, #0x4
ffff47f8:	eb0006f6 	bl	memcpy
ffff47fc:	e3a0003c 	mov	r0, #0x3c
ffff4800:	e58d0004 	str	r0, [sp, #0x4]
ffff4804:	e1a01005 	mov	r1, r5
ffff4808:	e28d0004 	add	r0, sp, #0x4
ffff480c:	eb00013c 	bl	f_4d04
ffff4810:	e3500000 	cmp	r0, #0x0
ffff4814:	0a000002 	beq	0xffff4824
ffff4818:	e3e00000 	mvn	r0, #0x0
ffff481c:	e28dd01c 	add	sp, sp, #0x1c
ffff4820:	e8bd8030 	pop	{r4, r5, pc}
ffff4824:	e1a01005 	mov	r1, r5
ffff4828:	e1a00004 	mov	r0, r4
ffff482c:	ebfffe88 	bl	f_4254
ffff4830:	e3500000 	cmp	r0, #0x0
ffff4834:	0a000001 	beq	0xffff4840
ffff4838:	e3e00000 	mvn	r0, #0x0
ffff483c:	eafffff6 	b	0xffff481c
ffff4840:	e5940004 	ldr	r0, [r4, #0x4]
ffff4844:	e3500001 	cmp	r0, #0x1
ffff4848:	1a000006 	bne	0xffff4868
ffff484c:	e1a01005 	mov	r1, r5
ffff4850:	e1a00004 	mov	r0, r4
ffff4854:	ebfffece 	bl	f_4394
ffff4858:	e3700001 	cmn	r0, #0x1
ffff485c:	1a000008 	bne	0xffff4884
ffff4860:	e3e00000 	mvn	r0, #0x0
ffff4864:	eaffffec 	b	0xffff481c
ffff4868:	e1a01005 	mov	r1, r5
ffff486c:	e1a00004 	mov	r0, r4
ffff4870:	ebffff47 	bl	f_4594
ffff4874:	e3700001 	cmn	r0, #0x1
ffff4878:	1a000001 	bne	0xffff4884
ffff487c:	e3e00000 	mvn	r0, #0x0
ffff4880:	eaffffe5 	b	0xffff481c
ffff4884:	e1a00005 	mov	r0, r5
ffff4888:	ebffff87 	bl	f_46ac
ffff488c:	e3500000 	cmp	r0, #0x0
ffff4890:	0a000001 	beq	0xffff489c
ffff4894:	e3e00000 	mvn	r0, #0x0
ffff4898:	eaffffdf 	b	0xffff481c
ffff489c:	e1a01005 	mov	r1, r5
ffff48a0:	e1a00004 	mov	r0, r4
ffff48a4:	ebffffa2 	bl	f_4734
ffff48a8:	e3500000 	cmp	r0, #0x0
ffff48ac:	0a000001 	beq	0xffff48b8
ffff48b0:	e3e00000 	mvn	r0, #0x0
ffff48b4:	eaffffd8 	b	0xffff481c
ffff48b8:	e5940004 	ldr	r0, [r4, #0x4]
ffff48bc:	e3c00010 	bic	r0, r0, #0x10
ffff48c0:	e5840004 	str	r0, [r4, #0x4]
ffff48c4:	e3a00001 	mov	r0, #0x1
ffff48c8:	e5840000 	str	r0, [r4]
ffff48cc:	e3a00000 	mov	r0, #0x0
ffff48d0:	eaffffd1 	b	0xffff481c

f_48d4:
ffff48d4:	e92d4030 	push	{r4, r5, lr}
ffff48d8:	e24dd01c 	sub	sp, sp, #0x1c
ffff48dc:	e1a04000 	mov	r4, r0
ffff48e0:	e1a05001 	mov	r5, r1
ffff48e4:	e1a01005 	mov	r1, r5
ffff48e8:	e1a00004 	mov	r0, r4
ffff48ec:	ebfffe31 	bl	f_41b8
ffff48f0:	e3500000 	cmp	r0, #0x0
ffff48f4:	0a000002 	beq	0xffff4904
ffff48f8:	e3e00000 	mvn	r0, #0x0
ffff48fc:	e28dd01c 	add	sp, sp, #0x1c
ffff4900:	e8bd8030 	pop	{r4, r5, pc}
ffff4904:	e3a00000 	mov	r0, #0x0
ffff4908:	e58d0004 	str	r0, [sp, #0x4]
ffff490c:	e3a00001 	mov	r0, #0x1
ffff4910:	e58d000c 	str	r0, [sp, #0xc]
ffff4914:	e3a00000 	mov	r0, #0x0
ffff4918:	e58d0008 	str	r0, [sp, #0x8]
ffff491c:	e3a00c02 	mov	r0, #0x200
ffff4920:	e58d0010 	str	r0, [sp, #0x10]
ffff4924:	e3e004ff 	mvn	r0, #-0x1000000	; 0xff000000
ffff4928:	e58d0014 	str	r0, [sp, #0x14]
ffff492c:	e3a000ff 	mov	r0, #0xff
ffff4930:	e58d0018 	str	r0, [sp, #0x18]
ffff4934:	e1a01005 	mov	r1, r5
ffff4938:	e28d0004 	add	r0, sp, #0x4
ffff493c:	eb0000f0 	bl	f_4d04
ffff4940:	e3500000 	cmp	r0, #0x0
ffff4944:	0a000001 	beq	0xffff4950
ffff4948:	e3e00000 	mvn	r0, #0x0
ffff494c:	eaffffea 	b	0xffff48fc
ffff4950:	e3a00000 	mov	r0, #0x0
ffff4954:	eaffffe8 	b	0xffff48fc

f_4958:
ffff4958:	e92d4070 	push	{r4, r5, r6, lr}
ffff495c:	e1a04000 	mov	r4, r0
ffff4960:	e1a05001 	mov	r5, r1
ffff4964:	e1a06002 	mov	r6, r2
ffff4968:	e1a00004 	mov	r0, r4
ffff496c:	eb000082 	bl	configurePIO_MMC(n)
ffff4970:	e1a00006 	mov	r0, r6
ffff4974:	eb0000a7 	bl	f_4c18
ffff4978:	e3500000 	cmp	r0, #0x0
ffff497c:	0a000001 	beq	0xffff4988
ffff4980:	e3e00000 	mvn	r0, #0x0
ffff4984:	e8bd8070 	pop	{r4, r5, r6, pc}
ffff4988:	e1a01006 	mov	r1, r6
ffff498c:	e1a00005 	mov	r0, r5
ffff4990:	ebffff91 	bl	f_47dc
ffff4994:	e3500000 	cmp	r0, #0x0
ffff4998:	1a000006 	bne	0xffff49b8
ffff499c:	e1a01006 	mov	r1, r6
ffff49a0:	e1a00005 	mov	r0, r5
ffff49a4:	ebffffca 	bl	f_48d4
ffff49a8:	e3500000 	cmp	r0, #0x0
ffff49ac:	0a000003 	beq	0xffff49c0
ffff49b0:	e3e00000 	mvn	r0, #0x0
ffff49b4:	eafffff2 	b	0xffff4984
ffff49b8:	e3e00000 	mvn	r0, #0x0
ffff49bc:	eafffff0 	b	0xffff4984
ffff49c0:	e3a00000 	mov	r0, #0x0
ffff49c4:	eaffffee 	b	0xffff4984

f_49c8:
ffff49c8:	e92d4010 	push	{r4, lr}
ffff49cc:	e1a04000 	mov	r4, r0
ffff49d0:	e1a00004 	mov	r0, r4
ffff49d4:	eb0000ac 	bl	f_4c8c
ffff49d8:	e8bd8010 	pop	{r4, pc}

f_49dc:
ffff49dc:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
ffff49e0:	e24dd014 	sub	sp, sp, #0x14
ffff49e4:	e1a04000 	mov	r4, r0
ffff49e8:	e1a05001 	mov	r5, r1
ffff49ec:	e1a06002 	mov	r6, r2
ffff49f0:	e1a07003 	mov	r7, r3
ffff49f4:	e1cd83d0 	ldrd	r8, [sp, #0x30]
ffff49f8:	e28d0004 	add	r0, sp, #0x4
ffff49fc:	e3a01000 	mov	r1, #0x0
ffff4a00:	e1a02001 	mov	r2, r1
ffff4a04:	e1a03001 	mov	r3, r1
ffff4a08:	e1a0c001 	mov	ip, r1
ffff4a0c:	e880100e 	stm	r0, {r1, r2, r3, ip}
ffff4a10:	e3a00003 	mov	r0, #0x3
ffff4a14:	e58d0008 	str	r0, [sp, #0x8]
ffff4a18:	e59d0010 	ldr	r0, [sp, #0x10]
ffff4a1c:	e3c00c01 	bic	r0, r0, #0x100
ffff4a20:	e2800c01 	add	r0, r0, #0x100
ffff4a24:	e58d0010 	str	r0, [sp, #0x10]
ffff4a28:	e59d0010 	ldr	r0, [sp, #0x10]
ffff4a2c:	e3c00040 	bic	r0, r0, #0x40
ffff4a30:	e58d0010 	str	r0, [sp, #0x10]
ffff4a34:	e59d0010 	ldr	r0, [sp, #0x10]
ffff4a38:	e3c00c02 	bic	r0, r0, #0x200
ffff4a3c:	e58d0010 	str	r0, [sp, #0x10]
ffff4a40:	e59d0010 	ldr	r0, [sp, #0x10]
ffff4a44:	e3c00b01 	bic	r0, r0, #0x400
ffff4a48:	e58d0010 	str	r0, [sp, #0x10]
ffff4a4c:	e3a00000 	mov	r0, #0x0
ffff4a50:	e58d0004 	str	r0, [sp, #0x4]
ffff4a54:	e3550001 	cmp	r5, #0x1
ffff4a58:	1a000004 	bne	0xffff4a70
ffff4a5c:	e59d0010 	ldr	r0, [sp, #0x10]
ffff4a60:	e3c0003f 	bic	r0, r0, #0x3f
ffff4a64:	e2800011 	add	r0, r0, #0x11
ffff4a68:	e58d0010 	str	r0, [sp, #0x10]
ffff4a6c:	ea000007 	b	0xffff4a90
ffff4a70:	e59d0010 	ldr	r0, [sp, #0x10]
ffff4a74:	e3c0003f 	bic	r0, r0, #0x3f
ffff4a78:	e2800012 	add	r0, r0, #0x12
ffff4a7c:	e58d0010 	str	r0, [sp, #0x10]
ffff4a80:	e59d0010 	ldr	r0, [sp, #0x10]
ffff4a84:	e3c00080 	bic	r0, r0, #0x80
ffff4a88:	e2800080 	add	r0, r0, #0x80
ffff4a8c:	e58d0010 	str	r0, [sp, #0x10]
ffff4a90:	e5970004 	ldr	r0, [r7, #0x4]
ffff4a94:	e3100020 	tst	r0, #0x20
ffff4a98:	0a000001 	beq	0xffff4aa4
ffff4a9c:	e58d400c 	str	r4, [sp, #0xc]
ffff4aa0:	ea000001 	b	0xffff4aac
ffff4aa4:	e1a00484 	lsl	r0, r4, #0x9
ffff4aa8:	e58d000c 	str	r0, [sp, #0xc]
ffff4aac:	e1a02485 	lsl	r2, r5, #0x9
ffff4ab0:	e1a03008 	mov	r3, r8
ffff4ab4:	e1a01006 	mov	r1, r6
ffff4ab8:	e58d9000 	str	r9, [sp]
ffff4abc:	e28d0004 	add	r0, sp, #0x4
ffff4ac0:	eb00011a 	bl	f_4f30
ffff4ac4:	e3500000 	cmp	r0, #0x0
ffff4ac8:	0a000002 	beq	0xffff4ad8
ffff4acc:	e3e00000 	mvn	r0, #0x0
ffff4ad0:	e28dd014 	add	sp, sp, #0x14
ffff4ad4:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
ffff4ad8:	e3a00000 	mov	r0, #0x0
ffff4adc:	eafffffb 	b	0xffff4ad0

f_4ae0:
ffff4ae0:	e1a02000 	mov	r2, r0
ffff4ae4:	e5920000 	ldr	r0, [r2]
ffff4ae8:	e3c00c02 	bic	r0, r0, #0x200
ffff4aec:	e5820000 	str	r0, [r2]
ffff4af0:	e5920000 	ldr	r0, [r2]
ffff4af4:	e1800481 	orr	r0, r0, r1, lsl #0x9
ffff4af8:	e5820000 	str	r0, [r2]
ffff4afc:	e3a00000 	mov	r0, #0x0
ffff4b00:	e12fff1e 	bx	lr

f_4b14:
ffff4b14:	e92d4010 	push	{r4, lr}
ffff4b18:	e1a02000 	mov	r2, r0
ffff4b1c:	e30f3fff 	movw	r3, #0xffff
ffff4b20:	e5812018 	str	r2, [r1, #0x18]
ffff4b24:	ea00000b 	b	0xffff4b58
ffff4b28:	e5910018 	ldr	r0, [r1, #0x18]
ffff4b2c:	e3100102 	tst	r0, #-0x80000000	; 0x80000000
ffff4b30:	1a000001 	bne	0xffff4b3c
ffff4b34:	e3a00000 	mov	r0, #0x0
ffff4b38:	e8bd8010 	pop	{r4, pc}
ffff4b3c:	e5910038 	ldr	r0, [r1, #0x38]
ffff4b40:	e3100a01 	tst	r0, #0x1000
ffff4b44:	0a000003 	beq	0xffff4b58
ffff4b48:	e3a00a01 	mov	r0, #0x1000
ffff4b4c:	e5810038 	str	r0, [r1, #0x38]
ffff4b50:	e3e00000 	mvn	r0, #0x0
ffff4b54:	eafffff7 	b	0xffff4b38
ffff4b58:	e1b00003 	movs	r0, r3
ffff4b5c:	e2433001 	sub	r3, r3, #0x1
ffff4b60:	1afffff0 	bne	0xffff4b28
ffff4b64:	e3530000 	cmp	r3, #0x0
ffff4b68:	aa000001 	bge	0xffff4b74
ffff4b6c:	e3e00000 	mvn	r0, #0x0
ffff4b70:	eafffff0 	b	0xffff4b38
ffff4b74:	e3a00000 	mov	r0, #0x0
ffff4b78:	eaffffee 	b	0xffff4b38

configurePIO_MMC(n):
ffff4b7c:	e1a02000 	mov	r2, r0
ffff4b80:	e3520000 	cmp	r2, #0x0
ffff4b84:	1a00000b 	bne	0xffff4bb8
ffff4b88:	e59f0510 	ldr	r0, =0x01c20000
ffff4b8c:	e5901060 	ldr	r1, [r0, #0x60]
ffff4b90:	e3811c01 	orr	r1, r1, #0x100]
ffff4b94:	e5801060 	str	r1, [r0, #0x60]
ffff4b98:	e3a00102 	mov	r0, #0x80000000
ffff4b9c:	e59f34fc 	ldr	r3, =0x01c20000
ffff4ba0:	e5830088 	str	r0, [r3, #0x88]
ffff4ba4:	e59f04f8 	ldr	r0, =0x00222222		; SDC0
ffff4ba8:	e58308b4 	str	r0, [r3, #0x8b4]	; PF_CFG0
ffff4bac:	e3000555 	movw	r0, #0x555
ffff4bb0:	e58308d0 	str	r0, [r3, #0x8d0]	; PF_PULL0
ffff4bb4:	ea000015 	b	0xffff4c10
ffff4bb8:	e3520002 	cmp	r2, #0x2
ffff4bbc:	1a000013 	bne	0xffff4c10
ffff4bc0:	e59f04d8 	ldr	r0, =0x01c20000
ffff4bc4:	e5901060 	ldr	r1, [r0, #0x60]
ffff4bc8:	e3811b01 	orr	r1, r1, #0x400
ffff4bcc:	e5801060 	str	r1, [r0, #0x60]
ffff4bd0:	e3a00102 	mov	r0, #0x80000000
ffff4bd4:	e59f34c4 	ldr	r3, =0x01c20000
ffff4bd8:	e5830090 	str	r0, [r3, #0x90]
ffff4bdc:	e3a00433 	mov	r0, #0x33000000		; SDC2
ffff4be0:	e5830848 	str	r0, [r3, #0x848]	; PC_CFG0
ffff4be4:	e3030333 	movw	r0, #0x3333		; SDC2
ffff4be8:	e583084c 	str	r0, [r3, #0x84c]	; PC_CFG1
ffff4bec:	e1c30000 	bic	r0, r3, r0
ffff4bf0:	e5901864 	ldr	r1, [r0, #0x864]	; PC_PULL0
ffff4bf4:	e1a00001 	mov	r0, r1
ffff4bf8:	e7d7061f 	bfc	r0, #0xc, #0xc
ffff4bfc:	e1a01000 	mov	r1, r0
ffff4c00:	e3811605 	orr	r1, r1, #0x500000
ffff4c04:	e3811a55 	orr	r1, r1, #0x55000
ffff4c08:	e1a00003 	mov	r0, r3
ffff4c0c:	e5801864 	str	r1, [r0, #0x864]	; PC_PULL0
ffff4c10:	e3a00000 	mov	r0, #0x0
ffff4c14:	e12fff1e 	bx	lr

f_4c18:
ffff4c18:	e92d4010 	push	{r4, lr}
ffff4c1c:	e1a01000 	mov	r1, r0
ffff4c20:	e30f4fff 	movw	r4, #0xffff
ffff4c24:	e3a02007 	mov	r2, #0x7
ffff4c28:	e5812000 	str	r2, [r1]
ffff4c2c:	ea000005 	b	0xffff4c48
ffff4c30:	e2444001 	sub	r4, r4, #0x1
ffff4c34:	e3540000 	cmp	r4, #0x0
ffff4c38:	aa000001 	bge	0xffff4c44
ffff4c3c:	e3e00000 	mvn	r0, #0x0
ffff4c40:	e8bd8010 	pop	{r4, pc}
ffff4c44:	e5912000 	ldr	r2, [r1]
ffff4c48:	e3120007 	tst	r2, #0x7
ffff4c4c:	1afffff7 	bne	0xffff4c30
ffff4c50:	e3a03000 	mov	r3, #0x0
ffff4c54:	ea000000 	b	0xffff4c5c
ffff4c58:	e2833001 	add	r3, r3, #0x1
ffff4c5c:	e3530032 	cmp	r3, #0x32
ffff4c60:	3afffffc 	bcc	0xffff4c58
ffff4c64:	e5912038 	ldr	r2, [r1, #0x38]
ffff4c68:	e30f0fff 	movw	r0, #0xffff
ffff4c6c:	e1822000 	orr	r2, r2, r0
ffff4c70:	e5812038 	str	r2, [r1, #0x38]
ffff4c74:	e3a02c02 	mov	r2, #0x200
ffff4c78:	e5812000 	str	r2, [r1]
ffff4c7c:	e59f2424 	ldr	r2, =0x00070008
ffff4c80:	e5812040 	str	r2, [r1, #0x40]
ffff4c84:	e3a00000 	mov	r0, #0x0
ffff4c88:	eaffffec 	b	0xffff4c40

f_4c8c:
ffff4c8c:	e1a01000 	mov	r1, r0
ffff4c90:	e3510000 	cmp	r1, #0x0
ffff4c94:	1a00000b 	bne	0xffff4cc8
ffff4c98:	e59f0400 	ldr	r0, =0x01c20000
ffff4c9c:	e5902060 	ldr	r2, [r0, #0x60]
ffff4ca0:	e3c22c01 	bic	r2, r2, #0x100
ffff4ca4:	e5802060 	str	r2, [r0, #0x60]
ffff4ca8:	e3a00000 	mov	r0, #0x0
ffff4cac:	e59f33ec 	ldr	r3, =0x01c20000
ffff4cb0:	e5830088 	str	r0, [r3, #0x88]
ffff4cb4:	e59f03f0 	ldr	r0, =0x00404044	; JTAG1
ffff4cb8:	e58308b4 	str	r0, [r3, #0x8b4] ; PF_CFG0
ffff4cbc:	e3a00000 	mov	r0, #0x0
ffff4cc0:	e58308d0 	str	r0, [r3, #0x8d0] ; PF_PULL0
ffff4cc4:	ea00000c 	b	0xffff4cfc
ffff4cc8:	e3510002 	cmp	r1, #0x2
ffff4ccc:	1a00000a 	bne	0xffff4cfc
ffff4cd0:	e59f03c8 	ldr	r0, =0x01c20000
ffff4cd4:	e5902060 	ldr	r2, [r0, #0x60]
ffff4cd8:	e3c22b01 	bic	r2, r2, #0x400]
ffff4cdc:	e5802060 	str	r2, [r0, #0x60]
ffff4ce0:	e3a00000 	mov	r0, #0x0
ffff4ce4:	e59f33b4 	ldr	r3, =0x01c20000
ffff4ce8:	e5830090 	str	r0, [r3, #0x90]
ffff4cec:	e5830848 	str	r0, [r3, #0x848] ; PC_CFG0
ffff4cf0:	e583084c 	str	r0, [r3, #0x84c] ; PC_CFG1
ffff4cf4:	e3050140 	movw	r0, #0x5140
ffff4cf8:	e5830864 	str	r0, [r3, #0x864] ; PC_PULL0
ffff4cfc:	e3a00000 	mov	r0, #0x0
ffff4d00:	e12fff1e 	bx	lr

f_4d04:
ffff4d04:	e92d4070 	push	{r4, r5, r6, lr}
ffff4d08:	e1a04000 	mov	r4, r0
ffff4d0c:	e1a05001 	mov	r5, r1
ffff4d10:	e5940014 	ldr	r0, [r4, #0x14]
ffff4d14:	e5941010 	ldr	r1, [r4, #0x10]
ffff4d18:	e7df0411 	bfi	r0, r1, #0x8, #0x18
ffff4d1c:	e1a06000 	mov	r6, r0
ffff4d20:	e5856008 	str	r6, [r5, #0x8]
ffff4d24:	e594000c 	ldr	r0, [r4, #0xc]
ffff4d28:	e6ff6070 	uxth	r6, r0
ffff4d2c:	e5856010 	str	r6, [r5, #0x10]
ffff4d30:	e3a00000 	mov	r0, #0x0
ffff4d34:	e585000c 	str	r0, [r5, #0xc]
ffff4d38:	e5950004 	ldr	r0, [r5, #0x4]
ffff4d3c:	e3c00801 	bic	r0, r0, #0x10000
ffff4d40:	e5850004 	str	r0, [r5, #0x4]
ffff4d44:	e59f6364 	ldr	r6, =0x80202000
ffff4d48:	e1a01005 	mov	r1, r5
ffff4d4c:	e1a00006 	mov	r0, r6
ffff4d50:	ebffff6f 	bl	f_4b14
ffff4d54:	e3500000 	cmp	r0, #0x0
ffff4d58:	0a000001 	beq	0xffff4d64
ffff4d5c:	e3e00000 	mvn	r0, #0x0
ffff4d60:	e8bd8070 	pop	{r4, r5, r6, pc}
ffff4d64:	e5950004 	ldr	r0, [r5, #0x4]
ffff4d68:	e3c000ff 	bic	r0, r0, #0xff
ffff4d6c:	e5850004 	str	r0, [r5, #0x4]
ffff4d70:	e5950004 	ldr	r0, [r5, #0x4]
ffff4d74:	e5941000 	ldr	r1, [r4]
ffff4d78:	e1800001 	orr	r0, r0, r1
ffff4d7c:	e5850004 	str	r0, [r5, #0x4]
ffff4d80:	e59f6328 	ldr	r6, =0x80202000
ffff4d84:	e1a01005 	mov	r1, r5
ffff4d88:	e1a00006 	mov	r0, r6
ffff4d8c:	ebffff60 	bl	f_4b14
ffff4d90:	e3500000 	cmp	r0, #0x0
ffff4d94:	0a000001 	beq	0xffff4da0
ffff4d98:	e3e00000 	mvn	r0, #0x0
ffff4d9c:	eaffffef 	b	0xffff4d60
ffff4da0:	e5950004 	ldr	r0, [r5, #0x4]
ffff4da4:	e5941004 	ldr	r1, [r4, #0x4]
ffff4da8:	e2011001 	and	r1, r1, #0x1
ffff4dac:	e3a02801 	mov	r2, #0x10000
ffff4db0:	e1821881 	orr	r1, r2, r1, lsl #0x11
ffff4db4:	e1800001 	orr	r0, r0, r1
ffff4db8:	e5850004 	str	r0, [r5, #0x4]
ffff4dbc:	e59f62ec 	ldr	r6, =0x80202000
ffff4dc0:	e1a01005 	mov	r1, r5
ffff4dc4:	e1a00006 	mov	r0, r6
ffff4dc8:	ebffff51 	bl	f_4b14
ffff4dcc:	e3500000 	cmp	r0, #0x0
ffff4dd0:	0a000001 	beq	0xffff4ddc
ffff4dd4:	e3e00000 	mvn	r0, #0x0
ffff4dd8:	eaffffe0 	b	0xffff4d60
ffff4ddc:	e3a00000 	mov	r0, #0x0
ffff4de0:	eaffffde 	b	0xffff4d60

f_4de4:
ffff4de4:	e92d4070 	push	{r4, r5, r6, lr}
ffff4de8:	e1a03000 	mov	r3, r0
ffff4dec:	e5930008 	ldr	r0, [r3, #0x8]
ffff4df0:	e582001c 	str	r0, [r2, #0x1c]
ffff4df4:	e593000c 	ldr	r0, [r3, #0xc]
ffff4df8:	e200403f 	and	r4, r0, #0x3f
ffff4dfc:	e593000c 	ldr	r0, [r3, #0xc]
ffff4e00:	e7e005d0 	ubfx	r0, r0, #0xb, #0x1
ffff4e04:	e1844780 	orr	r4, r4, r0, lsl #0xf
ffff4e08:	e593000c 	ldr	r0, [r3, #0xc]
ffff4e0c:	e7e003d0 	ubfx	r0, r0, #0x7, #0x1
ffff4e10:	e1844600 	orr	r4, r4, r0, lsl #0xc
ffff4e14:	e5930004 	ldr	r0, [r3, #0x4]
ffff4e18:	e3500000 	cmp	r0, #0x0
ffff4e1c:	0a000006 	beq	0xffff4e3c
ffff4e20:	e3844040 	orr	r4, r4, #0x40
ffff4e24:	e593000c 	ldr	r0, [r3, #0xc]
ffff4e28:	e7e00350 	ubfx	r0, r0, #0x6, #0x1
ffff4e2c:	e1844380 	orr	r4, r4, r0, lsl #0x7
ffff4e30:	e593000c 	ldr	r0, [r3, #0xc]
ffff4e34:	e7e00450 	ubfx	r0, r0, #0x8, #0x1
ffff4e38:	e1844400 	orr	r4, r4, r0, lsl #0x8
ffff4e3c:	e5930004 	ldr	r0, [r3, #0x4]
ffff4e40:	e3500003 	cmp	r0, #0x3
ffff4e44:	1a000006 	bne	0xffff4e64
ffff4e48:	e3844c22 	orr	r4, r4, #0x2200
ffff4e4c:	e593000c 	ldr	r0, [r3, #0xc]
ffff4e50:	e7e004d0 	ubfx	r0, r0, #0x9, #0x1
ffff4e54:	e1844500 	orr	r4, r4, r0, lsl #0xa
ffff4e58:	e593000c 	ldr	r0, [r3, #0xc]
ffff4e5c:	e7e00550 	ubfx	r0, r0, #0xa, #0x1
ffff4e60:	e1844580 	orr	r4, r4, r0, lsl #0xb
ffff4e64:	e3844102 	orr	r4, r4, #-0x80000000	; 0x80000000
ffff4e68:	e5824018 	str	r4, [r2, #0x18]
ffff4e6c:	e30f5fff 	movw	r5, #0xffff
ffff4e70:	e320f000 	nop	{0}
ffff4e74:	e1b00005 	movs	r0, r5
ffff4e78:	e2455001 	sub	r5, r5, #0x1
ffff4e7c:	0a000002 	beq	0xffff4e8c
ffff4e80:	e5920038 	ldr	r0, [r2, #0x38]
ffff4e84:	e3100004 	tst	r0, #0x4
ffff4e88:	0afffff9 	beq	0xffff4e74
ffff4e8c:	e3a00004 	mov	r0, #0x4
ffff4e90:	e5820038 	str	r0, [r2, #0x38]
ffff4e94:	e3550000 	cmp	r5, #0x0
ffff4e98:	aa000001 	bge	0xffff4ea4
ffff4e9c:	e3e00000 	mvn	r0, #0x0
ffff4ea0:	e8bd8070 	pop	{r4, r5, r6, pc}
ffff4ea4:	e5924038 	ldr	r4, [r2, #0x38]
ffff4ea8:	e5930004 	ldr	r0, [r3, #0x4]
ffff4eac:	e3500000 	cmp	r0, #0x0
ffff4eb0:	0a00001c 	beq	0xffff4f28
ffff4eb4:	e3000102 	movw	r0, #0x102
ffff4eb8:	e1100004 	tst	r0, r4
ffff4ebc:	0a000003 	beq	0xffff4ed0
ffff4ec0:	e3000102 	movw	r0, #0x102
ffff4ec4:	e5820038 	str	r0, [r2, #0x38]
ffff4ec8:	e3e00000 	mvn	r0, #0x0
ffff4ecc:	eafffff3 	b	0xffff4ea0
ffff4ed0:	e593000c 	ldr	r0, [r3, #0xc]
ffff4ed4:	e7e00450 	ubfx	r0, r0, #0x8, #0x1
ffff4ed8:	e3500000 	cmp	r0, #0x0
ffff4edc:	0a000005 	beq	0xffff4ef8
ffff4ee0:	e3140040 	tst	r4, #0x40
ffff4ee4:	0a000003 	beq	0xffff4ef8
ffff4ee8:	e3a00040 	mov	r0, #0x40
ffff4eec:	e5820038 	str	r0, [r2, #0x38]
ffff4ef0:	e3e00000 	mvn	r0, #0x0
ffff4ef4:	eaffffe9 	b	0xffff4ea0
ffff4ef8:	e5920020 	ldr	r0, [r2, #0x20]
ffff4efc:	e5810000 	str	r0, [r1]
ffff4f00:	e593000c 	ldr	r0, [r3, #0xc]
ffff4f04:	e7e00350 	ubfx	r0, r0, #0x6, #0x1
ffff4f08:	e3500001 	cmp	r0, #0x1
ffff4f0c:	1a000005 	bne	0xffff4f28
ffff4f10:	e5920024 	ldr	r0, [r2, #0x24]
ffff4f14:	e5810004 	str	r0, [r1, #0x4]
ffff4f18:	e5920028 	ldr	r0, [r2, #0x28]
ffff4f1c:	e5810008 	str	r0, [r1, #0x8]
ffff4f20:	e592002c 	ldr	r0, [r2, #0x2c]
ffff4f24:	e581000c 	str	r0, [r1, #0xc]
ffff4f28:	e3a00000 	mov	r0, #0x0
ffff4f2c:	eaffffdb 	b	0xffff4ea0

f_4f30:
ffff4f30:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
ffff4f34:	e24dd084 	sub	sp, sp, #0x84
ffff4f38:	e1a04000 	mov	r4, r0
ffff4f3c:	e1a05001 	mov	r5, r1
ffff4f40:	e1a06002 	mov	r6, r2
ffff4f44:	e1a07003 	mov	r7, r3
ffff4f48:	e59d80a8 	ldr	r8, [sp, #0xa8]
ffff4f4c:	e3e00000 	mvn	r0, #0x0
ffff4f50:	e58d0080 	str	r0, [sp, #0x80]
ffff4f54:	e5970000 	ldr	r0, [r7]
ffff4f58:	e3800102 	orr	r0, r0, #-0x80000000	; 0x80000000
ffff4f5c:	e5870000 	str	r0, [r7]
ffff4f60:	e5876014 	str	r6, [r7, #0x14]
ffff4f64:	e1a02007 	mov	r2, r7
ffff4f68:	e1a0100d 	mov	r1, sp
ffff4f6c:	e1a00004 	mov	r0, r4
ffff4f70:	ebffff9b 	bl	f_4de4
ffff4f74:	e3500000 	cmp	r0, #0x0
ffff4f78:	0a000002 	beq	0xffff4f88
ffff4f7c:	e3a00c02 	mov	r0, #0x200
ffff4f80:	e5870010 	str	r0, [r7, #0x10]
ffff4f84:	ea00003e 	b	0xffff5084
ffff4f88:	e3a0a000 	mov	sl, #0x0
ffff4f8c:	ea000010 	b	0xffff4fd4
ffff4f90:	e59fb11c 	ldr	fp, =0x0007ffff
ffff4f94:	e597903c 	ldr	r9, [r7, #0x3c]
ffff4f98:	ea000006 	b	0xffff4fb8
ffff4f9c:	e1b0000b 	movs	r0, fp
ffff4fa0:	e24bb001 	sub	fp, fp, #0x1
ffff4fa4:	1a000002 	bne	0xffff4fb4
ffff4fa8:	e3e00000 	mvn	r0, #0x0
ffff4fac:	e28dd084 	add	sp, sp, #0x84
ffff4fb0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
ffff4fb4:	e597903c 	ldr	r9, [r7, #0x3c]
ffff4fb8:	e3190004 	tst	r9, #0x4
ffff4fbc:	1afffff6 	bne	0xffff4f9c
ffff4fc0:	e59f10f0 	ldr	r1, =0x01c0f000
ffff4fc4:	e0810608 	add	r0, r1, r8, lsl #0xc
ffff4fc8:	e5900100 	ldr	r0, [r0, #0x100]
ffff4fcc:	e785010a 	str	r0, [r5, sl, lsl #0x2]
ffff4fd0:	e28aa001 	add	sl, sl, #0x1
ffff4fd4:	e15a0126 	cmp	sl, r6, lsr #0x2
ffff4fd8:	3affffec 	bcc	0xffff4f90
ffff4fdc:	e3a00c02 	mov	r0, #0x200
ffff4fe0:	e5870010 	str	r0, [r7, #0x10]
ffff4fe4:	e59fb0c8 	ldr	fp, =0x0007ffff
ffff4fe8:	e320f000 	nop	{0}
ffff4fec:	e1b0000b 	movs	r0, fp
ffff4ff0:	e24bb001 	sub	fp, fp, #0x1
ffff4ff4:	0a000002 	beq	0xffff5004
ffff4ff8:	e5970038 	ldr	r0, [r7, #0x38]
ffff4ffc:	e3100008 	tst	r0, #0x8
ffff5000:	0afffff9 	beq	0xffff4fec
ffff5004:	e3a00008 	mov	r0, #0x8
ffff5008:	e5870038 	str	r0, [r7, #0x38]
ffff500c:	e35b0000 	cmp	fp, #0x0
ffff5010:	aa000000 	bge	0xffff5018
ffff5014:	ea00001a 	b	0xffff5084
ffff5018:	e594000c 	ldr	r0, [r4, #0xc]
ffff501c:	e7e003d0 	ubfx	r0, r0, #0x7, #0x1
ffff5020:	e3500000 	cmp	r0, #0x0
ffff5024:	0a00000c 	beq	0xffff505c
ffff5028:	e59fb08c 	ldr	fp, =0x000fffff
ffff502c:	e320f000 	nop	{0}
ffff5030:	e1b0000b 	movs	r0, fp
ffff5034:	e24bb001 	sub	fp, fp, #0x1
ffff5038:	0a000002 	beq	0xffff5048
ffff503c:	e5970038 	ldr	r0, [r7, #0x38]
ffff5040:	e3100901 	tst	r0, #0x4000
ffff5044:	0afffff9 	beq	0xffff5030
ffff5048:	e3a00901 	mov	r0, #0x4000
ffff504c:	e5870038 	str	r0, [r7, #0x38]
ffff5050:	e35b0000 	cmp	fp, #0x0
ffff5054:	aa000000 	bge	0xffff505c
ffff5058:	ea000009 	b	0xffff5084
ffff505c:	e5979038 	ldr	r9, [r7, #0x38]
ffff5060:	e30a0a80 	movw	r0, #0xaa80
ffff5064:	e1100009 	tst	r0, r9
ffff5068:	0a000002 	beq	0xffff5078
ffff506c:	e30a0a80 	movw	r0, #0xaa80
ffff5070:	e5870038 	str	r0, [r7, #0x38]
ffff5074:	ea000002 	b	0xffff5084
ffff5078:	e3a00000 	mov	r0, #0x0
ffff507c:	e58d0080 	str	r0, [sp, #0x80]
ffff5080:	e320f000 	nop	{0}
ffff5084:	e5970000 	ldr	r0, [r7]
ffff5088:	e3c00102 	bic	r0, r0, #-0x80000000	; 0x80000000
ffff508c:	e5870000 	str	r0, [r7]
ffff5090:	e3e00000 	mvn	r0, #0x0
ffff5094:	e5870038 	str	r0, [r7, #0x38]
ffff5098:	e59d0080 	ldr	r0, [sp, #0x80]
ffff509c:	eaffffc2 	b	0xffff4fac

load_from_mmc:
ffff50c0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
ffff50c4:	e24dd038 	sub	sp, sp, #0x38
ffff50c8:	e1a05000 	mov	r5, r0
ffff50cc:	e3a07000 	mov	r7, #0x0
ffff50d0:	e3e08000 	mvn	r8, #0x0
ffff50d4:	e59f1150 	ldr	r1, =0x01c0f000
ffff50d8:	e0817605 	add	r7, r1, r5, lsl #0xc
ffff50dc:	e1a02007 	mov	r2, r7
ffff50e0:	e28d1008 	add	r1, sp, #0x8
ffff50e4:	e1a00005 	mov	r0, r5
ffff50e8:	ebfffe1a 	bl	f_4958
ffff50ec:	e3700001 	cmn	r0, #0x1
ffff50f0:	1a000000 	bne	0xffff50f8
ffff50f4:	ea000047 	b	0xffff5218
ffff50f8:	e3a01000 	mov	r1, #0x0
ffff50fc:	e1a00007 	mov	r0, r7
ffff5100:	ebfffe76 	bl	f_4ae0
ffff5104:	e58d5004 	str	r5, [sp, #0x4]
ffff5108:	e58d7000 	str	r7, [sp]
ffff510c:	e28d3008 	add	r3, sp, #0x8
ffff5110:	e3a02000 	mov	r2, #0x0
ffff5114:	e3a01008 	mov	r1, #0x8
ffff5118:	e3a00010 	mov	r0, #0x10
ffff511c:	ebfffe2e 	bl	f_49dc
ffff5120:	e3500000 	cmp	r0, #0x0
ffff5124:	0a00000c 	beq	0xffff515c
ffff5128:	e3a01001 	mov	r1, #0x1
ffff512c:	e1a00007 	mov	r0, r7
ffff5130:	ebfffe6a 	bl	f_4ae0
ffff5134:	e58d5004 	str	r5, [sp, #0x4]
ffff5138:	e58d7000 	str	r7, [sp]
ffff513c:	e28d3008 	add	r3, sp, #0x8
ffff5140:	e3a02000 	mov	r2, #0x0
ffff5144:	e3a01008 	mov	r1, #0x8
ffff5148:	e3a00010 	mov	r0, #0x10
ffff514c:	ebfffe22 	bl	f_49dc
ffff5150:	e3500000 	cmp	r0, #0x0
ffff5154:	0a000000 	beq	0xffff515c
ffff5158:	ea00002e 	b	0xffff5218
ffff515c:	e28f10cc 	ldr	r1, =eGON_BT0
ffff5160:	e3a00000 	mov	r0, #0x0
ffff5164:	eb000435 	bl	f_6240
ffff5168:	e3500000 	cmp	r0, #0x0
ffff516c:	0a000000 	beq	0xffff5174
ffff5170:	ea000028 	b	0xffff5218
ffff5174:	e3a04000 	mov	r4, #0x0
ffff5178:	e5946010 	ldr	r6, [r4, #0x10]
ffff517c:	e3560a06 	cmp	r6, #0x6000
ffff5180:	8a000003 	bhi	0xffff5194
ffff5184:	e1a00006 	mov	r0, r6
ffff5188:	e7df049f 	bfc	r0, #0x9, #0x17
ffff518c:	e3500000 	cmp	r0, #0x0
ffff5190:	0a000000 	beq	0xffff5198
ffff5194:	ea00001f 	b	0xffff5218
ffff5198:	e3a01000 	mov	r1, #0x0
ffff519c:	e1a00007 	mov	r0, r7
ffff51a0:	ebfffe4e 	bl	f_4ae0
ffff51a4:	e1a014a6 	lsr	r1, r6, #0x9
ffff51a8:	e58d5004 	str	r5, [sp, #0x4]
ffff51ac:	e58d7000 	str	r7, [sp]
ffff51b0:	e28d3008 	add	r3, sp, #0x8
ffff51b4:	e3a02000 	mov	r2, #0x0
ffff51b8:	e3a00010 	mov	r0, #0x10
ffff51bc:	ebfffe06 	bl	f_49dc
ffff51c0:	e3500000 	cmp	r0, #0x0
ffff51c4:	0a00000c 	beq	0xffff51fc
ffff51c8:	e3a01001 	mov	r1, #0x1
ffff51cc:	e1a00007 	mov	r0, r7
ffff51d0:	ebfffe42 	bl	f_4ae0
ffff51d4:	e1a014a6 	lsr	r1, r6, #0x9
ffff51d8:	e58d5004 	str	r5, [sp, #0x4]
ffff51dc:	e58d7000 	str	r7, [sp]
ffff51e0:	e28d3008 	add	r3, sp, #0x8
ffff51e4:	e3a02000 	mov	r2, #0x0
ffff51e8:	e3a00010 	mov	r0, #0x10
ffff51ec:	ebfffdfa 	bl	f_49dc
ffff51f0:	e3500000 	cmp	r0, #0x0
ffff51f4:	0a000000 	beq	0xffff51fc
ffff51f8:	ea000006 	b	0xffff5218
ffff51fc:	e1a01006 	mov	r1, r6
ffff5200:	e3a00000 	mov	r0, #0x0
ffff5204:	eb000420 	bl	f_628c
ffff5208:	e3500000 	cmp	r0, #0x0
ffff520c:	1a000000 	bne	0xffff5214
ffff5210:	e3a08000 	mov	r8, #0x0
ffff5214:	e320f000 	nop	{0}
ffff5218:	e1a00005 	mov	r0, r5
ffff521c:	ebfffde9 	bl	f_49c8
ffff5220:	e1a00008 	mov	r0, r8
ffff5224:	e28dd038 	add	sp, sp, #0x38
ffff5228:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

eGON_BT0:	"eGON.BT0",0

f_523c:
ffff523c:	e92d5ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
ffff5240:	e1a04000 	mov	r4, r0
ffff5244:	e1a05001 	mov	r5, r1
ffff5248:	e5949000 	ldr	r9, [r4]
ffff524c:	e594a018 	ldr	sl, [r4, #0x18]
ffff5250:	e1a0300a 	mov	r3, sl
ffff5254:	e3a02000 	mov	r2, #0x0
ffff5258:	e3a01001 	mov	r1, #0x1
ffff525c:	e1a00005 	mov	r0, r5
ffff5260:	e12fff39 	blx	r9
ffff5264:	e1a06000 	mov	r6, r0
ffff5268:	e3560002 	cmp	r6, #0x2
ffff526c:	1a000001 	bne	0xffff5278
ffff5270:	e3a00002 	mov	r0, #0x2
ffff5274:	e8bd9ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}
ffff5278:	e3560003 	cmp	r6, #0x3
ffff527c:	1a000001 	bne	0xffff5288
ffff5280:	e3a00003 	mov	r0, #0x3
ffff5284:	eafffffa 	b	0xffff5274
ffff5288:	e28f1f6d 	ldr	r1, =eGON_BT0
ffff528c:	e3a00000 	mov	r0, #0x0
ffff5290:	eb0003ea 	bl	f_6240
ffff5294:	e3500000 	cmp	r0, #0x0
ffff5298:	0a000001 	beq	0xffff52a4
ffff529c:	e3e00000 	mvn	r0, #0x0
ffff52a0:	eafffff3 	b	0xffff5274
ffff52a4:	e3a08000 	mov	r8, #0x0
ffff52a8:	e598b010 	ldr	fp, [r8, #0x10]
ffff52ac:	e1a0000b 	mov	r0, fp
ffff52b0:	e7df069f 	bfc	r0, #0xd, #0x13
ffff52b4:	e3500000 	cmp	r0, #0x0
ffff52b8:	0a000001 	beq	0xffff52c4
ffff52bc:	e3e00000 	mvn	r0, #0x0
ffff52c0:	eaffffeb 	b	0xffff5274
ffff52c4:	e1a0752b 	lsr	r7, fp, #0xa
ffff52c8:	e1a0300a 	mov	r3, sl
ffff52cc:	e3a02000 	mov	r2, #0x0
ffff52d0:	e1a01007 	mov	r1, r7
ffff52d4:	e1a00005 	mov	r0, r5
ffff52d8:	e12fff39 	blx	r9
ffff52dc:	e1a06000 	mov	r6, r0
ffff52e0:	e3560002 	cmp	r6, #0x2
ffff52e4:	1a000001 	bne	0xffff52f0
ffff52e8:	e3a00002 	mov	r0, #0x2
ffff52ec:	eaffffe0 	b	0xffff5274
ffff52f0:	e3560003 	cmp	r6, #0x3
ffff52f4:	1a000001 	bne	0xffff5300
ffff52f8:	e3a00003 	mov	r0, #0x3
ffff52fc:	eaffffdc 	b	0xffff5274
ffff5300:	e1a0100b 	mov	r1, fp
ffff5304:	e3a00000 	mov	r0, #0x0
ffff5308:	eb0003df 	bl	f_628c
ffff530c:	e3500000 	cmp	r0, #0x0
ffff5310:	1a000001 	bne	0xffff531c
ffff5314:	e3a00000 	mov	r0, #0x0
ffff5318:	eaffffd5 	b	0xffff5274
ffff531c:	e3e00000 	mvn	r0, #0x0
ffff5320:	eaffffd3 	b	0xffff5274

f_5324:
ffff5324:	e92d4070 	push	{r4, r5, r6, lr}
ffff5328:	e24dd028 	sub	sp, sp, #0x28
ffff532c:	e3a04000 	mov	r4, #0x0
ffff5330:	ea000019 	b	0xffff539c
ffff5334:	e1a01004 	mov	r1, r4
ffff5338:	e1a0000d 	mov	r0, sp
ffff533c:	eb000043 	bl	f_5450
ffff5340:	e1a0000d 	mov	r0, sp
ffff5344:	eb000205 	bl	f_5b60
ffff5348:	e3a06040 	mov	r6, #0x40
ffff534c:	ea00000d 	b	0xffff5388
ffff5350:	e1a01006 	mov	r1, r6
ffff5354:	e1a0000d 	mov	r0, sp
ffff5358:	ebffffb7 	bl	f_523c
ffff535c:	e1a05000 	mov	r5, r0
ffff5360:	e3550000 	cmp	r5, #0x0
ffff5364:	1a000003 	bne	0xffff5378
ffff5368:	eb0001c5 	bl	f_5a84
ffff536c:	e3a00000 	mov	r0, #0x0
ffff5370:	e28dd028 	add	sp, sp, #0x28
ffff5374:	e8bd8070 	pop	{r4, r5, r6, pc}
ffff5378:	e3550002 	cmp	r5, #0x2
ffff537c:	1a000000 	bne	0xffff5384
ffff5380:	ea000002 	b	0xffff5390
ffff5384:	e2866040 	add	r6, r6, #0x40
ffff5388:	e3560c02 	cmp	r6, #0x200
ffff538c:	3affffef 	bcc	0xffff5350
ffff5390:	e320f000 	nop	{0}
ffff5394:	eb0001ba 	bl	f_5a84
ffff5398:	e2844001 	add	r4, r4, #0x1
ffff539c:	e354000a 	cmp	r4, #0xa
ffff53a0:	3affffe3 	bcc	0xffff5334
ffff53a4:	e3e00000 	mvn	r0, #0x0
ffff53a8:	eafffff0 	b	0xffff5370

f_53ac:
ffff53ac:	e92d4030 	push	{r4, r5, lr}
ffff53b0:	e24dd02c 	sub	sp, sp, #0x2c
ffff53b4:	e3a05000 	mov	r5, #0x0
ffff53b8:	ea000010 	b	0xffff5400
ffff53bc:	e1a01005 	mov	r1, r5
ffff53c0:	e28d0004 	add	r0, sp, #0x4
ffff53c4:	eb000021 	bl	f_5450
ffff53c8:	e28d0004 	add	r0, sp, #0x4
ffff53cc:	eb0001e3 	bl	f_5b60
ffff53d0:	e3a01000 	mov	r1, #0x0
ffff53d4:	e28d0004 	add	r0, sp, #0x4
ffff53d8:	ebffff97 	bl	f_523c
ffff53dc:	e1a04000 	mov	r4, r0
ffff53e0:	e3540000 	cmp	r4, #0x0
ffff53e4:	1a000003 	bne	0xffff53f8
ffff53e8:	eb0001a5 	bl	f_5a84
ffff53ec:	e3a00000 	mov	r0, #0x0
ffff53f0:	e28dd02c 	add	sp, sp, #0x2c
ffff53f4:	e8bd8030 	pop	{r4, r5, pc}
ffff53f8:	eb0001a1 	bl	f_5a84
ffff53fc:	e2855001 	add	r5, r5, #0x1
ffff5400:	e355000a 	cmp	r5, #0xa
ffff5404:	3affffec 	bcc	0xffff53bc
ffff5408:	e3e00000 	mvn	r0, #0x0
ffff540c:	eafffff7 	b	0xffff53f0

load_from_nand:
ffff5410:	e92d4010 	push	{r4, lr}
ffff5414:	ebffffe4 	bl	f_53ac
ffff5418:	e3500000 	cmp	r0, #0x0
ffff541c:	1a000001 	bne	0xffff5428
ffff5420:	e3a00000 	mov	r0, #0x0
ffff5424:	e8bd8010 	pop	{r4, pc}
ffff5428:	ebffffbd 	bl	f_5324
ffff542c:	e3500000 	cmp	r0, #0x0
ffff5430:	1a000001 	bne	0xffff543c
ffff5434:	e3a00000 	mov	r0, #0x0
ffff5438:	eafffff9 	b	0xffff5424
ffff543c:	e3e00000 	mvn	r0, #0x0
ffff5440:	eafffff7 	b	0xffff5424

f_5450:
ffff5450:	e92d4070 	push	{r4, r5, r6, lr}
ffff5454:	e1a05000 	mov	r5, r0
ffff5458:	e1a04001 	mov	r4, r1
ffff545c:	e0840104 	add	r0, r4, r4, lsl #0x2	; r1 * 5
ffff5460:	e59f2010 	ldr	r2, =d_6478 
ffff5464:	e0821180 	add	r1, r2, r0, lsl #3	; r1 = &d_6478 + r1 * 5 * 8 = r1 * 40
ffff5468:	e3a02028 	mov	r2, #0x28
ffff546c:	e1a00005 	mov	r0, r5
ffff5470:	eb0003d8 	bl	memcpy
ffff5474:	e8bd8070 	pop	{r4, r5, r6, pc}

f_547c:
ffff547c:	e92d4010 	push	{r4, lr}
ffff5480:	e1a02000 	mov	r2, r0
ffff5484:	e3a03000 	mov	r3, #0x0
ffff5488:	e3a04000 	mov	r4, #0x0
ffff548c:	ea000002 	b	0xffff549c
ffff5490:	e3a00001 	mov	r0, #0x1
ffff5494:	e1844310 	orr	r4, r4, r0, lsl r3
ffff5498:	e2833001 	add	r3, r3, #0x1
ffff549c:	e1530001 	cmp	r3, r1
ffff54a0:	3afffffa 	bcc	0xffff5490
ffff54a4:	e0020004 	and	r0, r2, r4
ffff54a8:	e8bd8010 	pop	{r4, pc}

f_54ac:
ffff54ac:	e3a02000 	mov	r2, #0x0
ffff54b0:	e59f3488 	ldr	r3, =0x01c02000
ffff54b4:	e5832000 	str	r2, [r3]
ffff54b8:	e59f2484 	ldr	r2, =0x01c03030
ffff54bc:	e5832304 	str	r2, [r3, #0x304]
ffff54c0:	e0032002 	and	r2, r3, r2
ffff54c4:	e5820308 	str	r0, [r2, #0x308]
ffff54c8:	e3072f0f 	movw	r2, #0x7f0f
ffff54cc:	e5832318 	str	r2, [r3, #0x318]
ffff54d0:	e1c32142 	bic	r2, r3, r2, asr #0x2
ffff54d4:	e582130c 	str	r1, [r2, #0x30c]
ffff54d8:	e59f2468 	ldr	r2, =0x84000423
ffff54dc:	e5832300 	str	r2, [r3, #0x300]
ffff54e0:	e12fff1e 	bx	lr

int wait_dma_finished(timeout):
ffff54e4:	e1a01000 	mov	r1, r0
ffff54e8:	e320f000 	nop	{0}
ffff54ec:	e59f044c 	ldr	r0, =0x01c02000
ffff54f0:	e5900300 	ldr	r0, [r0, #0x300]
ffff54f4:	e3100102 	tst	r0, #-0x80000000	; 0x80000000
ffff54f8:	1a000001 	bne	0xffff5504
ffff54fc:	e3a00000 	mov	r0, #0x0
ffff5500:	e12fff1e 	bx	lr
ffff5504:	e2410001 	sub	r0, r1, #0x1
ffff5508:	e1b01000 	movs	r1, r0
ffff550c:	1afffff6 	bne	0xffff54ec
ffff5510:	e3a00002 	mov	r0, #0x2
ffff5514:	eafffff9 	b	0xffff5500


int nand_wait_cmd_finish(int timeout)
{
	do {
		if (readl(&nfc->st) & NFC_ST_CMD_INT_FLAG)
			return 0;
	} while (--timeout);
	return 2;
}

nand_wait_cmd_finish:
ffff5518:	e1a01000 	mov	r1, r0
ffff551c:	e320f000 	nop	{0}
ffff5520:	e59f0424 	ldr	r0, =0x01c03000
ffff5524:	e5900004 	ldr	r0, [r0, #0x4]	;	NANDC_ST
ffff5528:	e3100002 	tst	r0, #0x2		; 	NFC_ST_CMD_INT_FLAG
ffff552c:	0a000001 	beq	0xffff5538
ffff5530:	e3a00000 	mov	r0, #0x0
ffff5534:	e12fff1e 	bx	lr
ffff5538:	e2410001 	sub	r0, r1, #0x1
ffff553c:	e1b01000 	movs	r1, r0
ffff5540:	1afffff6 	bne	0xffff5520
ffff5544:	e3a00002 	mov	r0, #0x2
ffff5548:	eafffff9 	b	0xffff5534

int nand_waid_cmd_fifo_free(int timeout)
{
	do {
		if (readl(&nfc->st) & NFC_ST_CMD_FIFO_FLAG)
			return 0;
	} while(--timeout);
	return 2;
}

nand_wait_cmd_fifo_free:
ffff554c:	e1a01000 	mov	r1, r0
ffff5550:	e320f000 	nop	{0}
ffff5554:	e59f03f0 	ldr	r0, =0x01c03000
ffff5558:	e5900004 	ldr	r0, [r0, #0x4]	;	NANDC_ST
ffff555c:	e3100008 	tst	r0, #0x8		;	NFC_ST_CMD_FIFO_FLAG
ffff5560:	1a000001 	bne	0xffff556c
ffff5564:	e3a00000 	mov	r0, #0x0
ffff5568:	e12fff1e 	bx	lr
ffff556c:	e2410001 	sub	r0, r1, #0x1
ffff5570:	e1b01000 	movs	r1, r0
ffff5574:	1afffff6 	bne	0xffff5554
ffff5578:	e3a00002 	mov	r0, #0x2
ffff557c:	eafffff9 	b	0xffff5568


nand_wait_dma_transfer_complete(timeout_fifo,timeout_cmd,timeout_dma):
ffff5580:	e92d4070 	push	{r4, r5, r6, lr}
ffff5584:	e1a04000 	mov	r4, r0
ffff5588:	e1a05001 	mov	r5, r1
ffff558c:	e1a06002 	mov	r6, r2
ffff5590:	e1a00004 	mov	r0, r4
ffff5594:	ebffffec 	bl	nand_wait_cmd_fifo_free
ffff5598:	e3500002 	cmp	r0, #0x2
ffff559c:	1a000001 	bne	0xffff55a8
ffff55a0:	e3a00002 	mov	r0, #0x2
ffff55a4:	e8bd8070 	pop	{r4, r5, r6, pc}
ffff55a8:	e1a00005 	mov	r0, r5
ffff55ac:	ebffffd9 	bl	nand_wait_cmd_finish
ffff55b0:	e3500002 	cmp	r0, #0x2
ffff55b4:	1a000001 	bne	0xffff55c0
ffff55b8:	e3a00002 	mov	r0, #0x2
ffff55bc:	eafffff8 	b	0xffff55a4
ffff55c0:	e1a00006 	mov	r0, r6
ffff55c4:	ebffffc6 	bl	wait_dma_finished(timeout)
ffff55c8:	e3500002 	cmp	r0, #0x2
ffff55cc:	1a000001 	bne	0xffff55d8
ffff55d0:	e3a00002 	mov	r0, #0x2
ffff55d4:	eafffff2 	b	0xffff55a4
ffff55d8:	e3a00000 	mov	r0, #0x0
ffff55dc:	eafffff0 	b	0xffff55a4

int nand_reset_chip(void)
{
	writel(&nfc->cmd, NAND_CMD_RESET | NFC_CMD_SEND_CMD1 | NFC_CMD_WAIT_FLAG);
	if (nand_wait_cmd_fifo_free(4800) == 2)
		return 2;
	if (nand_wait_cmd_finish(4920) == 2)
		return 2;
	return 0;

}
nand_reset_chip:
ffff55e0:	e92d4010 	push	{r4, lr}
ffff55e4:	e59f0364 	ldr	r0, =0x00c000ff			 CMD=0x00ff(RESET), SEND_CMD1, WAIT_FLAG RB
ffff55e8:	e59f135c 	ldr	r1, =0x01c03000
ffff55ec:	e5810024 	str	r0, [r1, #0x24]	;		 NFC_CMD
ffff55f0:	e3a00d4b 	mov	r0, #0x12c0
ffff55f4:	ebffffd4 	bl	nand_wait_cmd_fifo_free
ffff55f8:	e3500002 	cmp	r0, #0x2
ffff55fc:	1a000001 	bne	0xffff5608
ffff5600:	e3a00002 	mov	r0, #0x2
ffff5604:	e8bd8010 	pop	{r4, pc}
ffff5608:	e3010338 	movw	r0, #0x1338
ffff560c:	ebffffc1 	bl	nand_wait_cmd_finish
ffff5610:	e3500002 	cmp	r0, #0x2
ffff5614:	1a000001 	bne	0xffff5620
ffff5618:	e3a00002 	mov	r0, #0x2
ffff561c:	eafffff8 	b	0xffff5604
ffff5620:	e3a00000 	mov	r0, #0x0
ffff5624:	eafffff6 	b	0xffff5604

nand_read_a(a,b,c):
nand_read_a:
ffff5628:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
ffff562c:	e1a04000 	mov	r4, r0
ffff5630:	e1a05001 	mov	r5, r1
ffff5634:	e1a06002 	mov	r6, r2
ffff5638:	e59f030c 	ldr	r0, =0x01c03000
ffff563c:	e5900000 	ldr	r0, [r0]
ffff5640:	e3800901 	orr	r0, r0, #0x4000		; RAM_ACCESS_MODE=DMA
ffff5644:	e59f1300 	ldr	r1, =0x01c03000
ffff5648:	e5810000 	str	r0, [r1]		; CTL
ffff564c:	e3a07001 	mov	r7, #0x1
ffff5650:	e3019318 	movw	r9, #0x1318
ffff5654:	e3a00016 	mov	r0, #0x16
ffff5658:	e1600087 	smulbb	r0, r7, r0
ffff565c:	e280ad4b 	add	sl, r0, #0x12c0
ffff5660:	e59f02ec 	ldr	r0, =0x00e00530
ffff5664:	e5810028 	str	r0, [r1, #0x28]		; RCMD_SET = RCMD0=05, RCMD1=E0, CMD2=30
ffff5668:	e3a01b01 	mov	r1, #0x400
ffff566c:	e1a00005 	mov	r0, r5
ffff5670:	ebffff8d 	bl	f_54ac
ffff5674:	e59f02d0 	ldr	r0, =0x01c03000
ffff5678:	e580701c 	str	r7, [r0, #0x1c]		; SECTOR_NUM=?
ffff567c:	e1a00009 	mov	r0, r9
ffff5680:	ebffffb1 	bl	nand_wait_cmd_fifo_free
ffff5684:	e3500002 	cmp	r0, #0x2
ffff5688:	1a000006 	bne	0xffff56a8
ffff568c:	e59f02ac 	ldr	r0, =0x01c02000
ffff5690:	e5900300 	ldr	r0, [r0, #0x300]	; 0x01c02300 DMA
ffff5694:	e3c00102 	bic	r0, r0, #-0x80000000	; 0x80000000
ffff5698:	e59f12a0 	ldr	r1, =0x01c02000
ffff569c:	e5810300 	str	r0, [r1, #0x300]
ffff56a0:	e3a00002 	mov	r0, #0x2
ffff56a4:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
ffff56a8:	e1a08004 	mov	r8, r4
ffff56ac:	e1a04008 	mov	r4, r8
ffff56b0:	e1a00808 	lsl	r0, r8, #0x10
ffff56b4:	e59f1290 	ldr	r1, =0x01c03000
ffff56b8:	e5810014 	str	r0, [r1, #0x14]		; ADDR_LOW
ffff56bc:	e1a04008 	mov	r4, r8
ffff56c0:	e1a00828 	lsr	r0, r8, #0x10
ffff56c4:	e5810018 	str	r0, [r1, #0x18]		; ADDR_HIGH
ffff56c8:	e2860003 	add	r0, r6, #0x3
ffff56cc:	e59f1284 	ldr	r1, =0x87e80000		; PAGE_CMD, SEND_CMD2, SEQ, DATA_SWAP_METHOD, SEND_ADR, DATA_TRANS, SEND_CMD1, WAIT_FLAG, CMD1=00
ffff56d0:	e1810800 	orr	r0, r1, r0, lsl #0x10	; r0 = number of addres bits
ffff56d4:	e59f1270 	ldr	r1, =0x01c03000
ffff56d8:	e5810024 	str	r0, [r1, #0x24]	;	NFC_CMD
ffff56dc:	e1a0200a 	mov	r2, sl
ffff56e0:	e1a0100a 	mov	r1, sl
ffff56e4:	e1a0000a 	mov	r0, sl
ffff56e8:	ebffffa4 	bl	nand_wait_dma_transfer_complete
ffff56ec:	e3500002 	cmp	r0, #0x2
ffff56f0:	1a000006 	bne	0xffff5710
ffff56f4:	e59f0244 	ldr	r0, =0x01c02000
ffff56f8:	e5900300 	ldr	r0, [r0, #0x300]	; DMA
ffff56fc:	e3c00102 	bic	r0, r0, #-0x80000000	; 0x80000000
ffff5700:	e59f1238 	ldr	r1, =0x01c02000
ffff5704:	e5810300 	str	r0, [r1, #0x300]
ffff5708:	e3a00002 	mov	r0, #0x2
ffff570c:	eaffffe4 	b	0xffff56a4
ffff5710:	e59f1234 	ldr	r1, =0x01c03000
ffff5714:	e5910038 	ldr	r0, [r1, #0x38]		; ECC_ST
ffff5718:	e1a01007 	mov	r1, r7
ffff571c:	ebffff56 	bl	f_547c
ffff5720:	e3500000 	cmp	r0, #0x0		; All sectors OK?
ffff5724:	0a000006 	beq	0xffff5744
ffff5728:	e59f0210 	ldr	r0, =0x01c02000
ffff572c:	e5900300 	ldr	r0, [r0, #0x300]	; DMA
ffff5730:	e3c00102 	bic	r0, r0, #-0x80000000	; 0x80000000
ffff5734:	e59f1204 	ldr	r1, =0x01c02000
ffff5738:	e5810300 	str	r0, [r1, #0x300]
ffff573c:	e3a00003 	mov	r0, #0x3
ffff5740:	eaffffd7 	b	0xffff56a4
ffff5744:	e59f01f4 	ldr	r0, =0x01c02000
ffff5748:	e5900300 	ldr	r0, [r0, #0x300]	; DMA
ffff574c:	e3c00102 	bic	r0, r0, #-0x80000000	; 0x80000000
ffff5750:	e59f11e8 	ldr	r1, =0x01c02000
ffff5754:	e5810300 	str	r0, [r1, #0x300]
ffff5758:	e3a00000 	mov	r0, #0x0
ffff575c:	eaffffd0 	b	0xffff56a4

f_5760:
ffff5760:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
ffff5764:	e1a04000 	mov	r4, r0
ffff5768:	e1a05001 	mov	r5, r1
ffff576c:	e1a06002 	mov	r6, r2
ffff5770:	e59f01d4 	ldr	r0, =0x01c03000
ffff5774:	e5900000 	ldr	r0, [r0]
ffff5778:	e3800901 	orr	r0, r0, #0x4000
ffff577c:	e59f11c8 	ldr	r1, =0x01c03000
ffff5780:	e5810000 	str	r0, [r1]
ffff5784:	e3a07002 	mov	r7, #0x2
ffff5788:	e3019318 	movw	r9, #0x1318
ffff578c:	e3a00016 	mov	r0, #0x16
ffff5790:	e1600087 	smulbb	r0, r7, r0
ffff5794:	e280ad4b 	add	sl, r0, #0x12c0
ffff5798:	e59f01b4 	ldr	r0, =0x00e00530
ffff579c:	e5810028 	str	r0, [r1, #0x28]
ffff57a0:	e3a01b01 	mov	r1, #0x400
ffff57a4:	e1a00005 	mov	r0, r5
ffff57a8:	ebffff3f 	bl	f_54ac
ffff57ac:	e59f0198 	ldr	r0, =0x01c03000
ffff57b0:	e580701c 	str	r7, [r0, #0x1c]
ffff57b4:	e1a00009 	mov	r0, r9
ffff57b8:	ebffff63 	bl	nand_wait_cmd_fifo_free
ffff57bc:	e3500002 	cmp	r0, #0x2
ffff57c0:	1a000006 	bne	0xffff57e0
ffff57c4:	e59f0174 	ldr	r0, =0x01c02000
ffff57c8:	e5900300 	ldr	r0, [r0, #0x300]
ffff57cc:	e3c00102 	bic	r0, r0, #-0x80000000	; 0x80000000
ffff57d0:	e59f1168 	ldr	r1, =0x01c02000
ffff57d4:	e5810300 	str	r0, [r1, #0x300]
ffff57d8:	e3a00002 	mov	r0, #0x2
ffff57dc:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
ffff57e0:	e1a08004 	mov	r8, r4
ffff57e4:	e1a04008 	mov	r4, r8
ffff57e8:	e1a00808 	lsl	r0, r8, #0x10
ffff57ec:	e59f1158 	ldr	r1, =0x01c03000
ffff57f0:	e5810014 	str	r0, [r1, #0x14]
ffff57f4:	e1a04008 	mov	r4, r8
ffff57f8:	e1a00828 	lsr	r0, r8, #0x10
ffff57fc:	e5810018 	str	r0, [r1, #0x18]
ffff5800:	e2860003 	add	r0, r6, #0x3
ffff5804:	e59f114c 	ldr	r1, =0x87e80000
ffff5808:	e1810800 	orr	r0, r1, r0, lsl #0x10
ffff580c:	e59f1138 	ldr	r1, =0x01c03000
ffff5810:	e5810024 	str	r0, [r1, #0x24]
ffff5814:	e1a0200a 	mov	r2, sl
ffff5818:	e1a0100a 	mov	r1, sl
ffff581c:	e1a0000a 	mov	r0, sl
ffff5820:	ebffff56 	bl	nand_wait_dma_transfer_complete
ffff5824:	e3500002 	cmp	r0, #0x2
ffff5828:	1a000006 	bne	0xffff5848
ffff582c:	e59f010c 	ldr	r0, =0x01c02000
ffff5830:	e5900300 	ldr	r0, [r0, #0x300]
ffff5834:	e3c00102 	bic	r0, r0, #-0x80000000	; 0x80000000
ffff5838:	e59f1100 	ldr	r1, =0x01c02000
ffff583c:	e5810300 	str	r0, [r1, #0x300]
ffff5840:	e3a00002 	mov	r0, #0x2
ffff5844:	eaffffe4 	b	0xffff57dc
ffff5848:	e59f10fc 	ldr	r1, =0x01c03000
ffff584c:	e5910038 	ldr	r0, [r1, #0x38]
ffff5850:	e1a01007 	mov	r1, r7
ffff5854:	ebffff08 	bl	f_547c
ffff5858:	e3500000 	cmp	r0, #0x0
ffff585c:	0a000006 	beq	0xffff587c
ffff5860:	e59f00d8 	ldr	r0, =0x01c02000
ffff5864:	e5900300 	ldr	r0, [r0, #0x300]
ffff5868:	e3c00102 	bic	r0, r0, #-0x80000000	; 0x80000000
ffff586c:	e59f10cc 	ldr	r1, =0x01c02000
ffff5870:	e5810300 	str	r0, [r1, #0x300]
ffff5874:	e3a00003 	mov	r0, #0x3
ffff5878:	eaffffd7 	b	0xffff57dc
ffff587c:	e59f00bc 	ldr	r0, =0x01c02000
ffff5880:	e5900300 	ldr	r0, [r0, #0x300]
ffff5884:	e3c00102 	bic	r0, r0, #-0x80000000	; 0x80000000
ffff5888:	e59f10b0 	ldr	r1, =0x01c02000
ffff588c:	e5810300 	str	r0, [r1, #0x300]
ffff5890:	e3a00000 	mov	r0, #0x0
ffff5894:	eaffffd0 	b	0xffff57dc

nand_read_a_blocks(a,b,c,d)
nand_read_a_blocks:
ffff5898:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
ffff589c:	e1a04000 	mov	r4, r0
ffff58a0:	e1a05001 	mov	r5, r1
ffff58a4:	e1a09002 	mov	r9, r2
ffff58a8:	e1a06003 	mov	r6, r3
ffff58ac:	e3a07000 	mov	r7, #0x0
ffff58b0:	ea000009 	b	0xffff58dc
ffff58b4:	e0891507 	add	r1, r9, r7, lsl #0xa
ffff58b8:	e0840007 	add	r0, r4, r7
ffff58bc:	e1a02006 	mov	r2, r6
ffff58c0:	ebffff58 	bl	nand_read_a
ffff58c4:	e1a08000 	mov	r8, r0
ffff58c8:	e3580000 	cmp	r8, #0x0
ffff58cc:	0a000001 	beq	0xffff58d8
ffff58d0:	e1a00008 	mov	r0, r8
ffff58d4:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
ffff58d8:	e2877001 	add	r7, r7, #0x1
ffff58dc:	e1570005 	cmp	r7, r5
ffff58e0:	3afffff3 	bcc	0xffff58b4
ffff58e4:	e3a00000 	mov	r0, #0x0
ffff58e8:	eafffff9 	b	0xffff58d4

f_58ec:
ffff58ec:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
ffff58f0:	e1a04000 	mov	r4, r0
ffff58f4:	e1a05001 	mov	r5, r1
ffff58f8:	e1a09002 	mov	r9, r2
ffff58fc:	e1a06003 	mov	r6, r3
ffff5900:	e3a07000 	mov	r7, #0x0
ffff5904:	ea000009 	b	0xffff5930
ffff5908:	e0891507 	add	r1, r9, r7, lsl #0xa
ffff590c:	e0840007 	add	r0, r4, r7
ffff5910:	e1a02006 	mov	r2, r6
ffff5914:	ebffff91 	bl	f_5760
ffff5918:	e1a08000 	mov	r8, r0
ffff591c:	e3580000 	cmp	r8, #0x0
ffff5920:	0a000001 	beq	0xffff592c
ffff5924:	e1a00008 	mov	r0, r8
ffff5928:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
ffff592c:	e2877001 	add	r7, r7, #0x1
ffff5930:	e1570005 	cmp	r7, r5
ffff5934:	3afffff3 	bcc	0xffff5908
ffff5938:	e3a00000 	mov	r0, #0x0
ffff593c:	eafffff9 	b	0xffff5928

configurePIO_PC_NAND:
ffff595c:	e59f0330 	ldr	r0, =0x22222222
ffff5960:	e59f1330 	ldr	r1, =0x01c20000
ffff5964:	e5810848 	str	r0, [r1, #0x848] ; PC_CFG0
ffff5968:	e581084c 	str	r0, [r1, #0x84c] ; PC_CFG1
ffff596c:	e1a00240 	asr	r0, r0, #0x4
ffff5970:	e5810850 	str	r0, [r1, #0x850] ; PC_CFG2
ffff5974:	e3a00002 	mov	r0, #0x2
ffff5978:	e5810854 	str	r0, [r1, #0x854] ; PC_CFG3
ffff597c:	e59f0318 	ldr	r0, =0x55555555
ffff5980:	e581085c 	str	r0, [r1, #0x85c] ; PC_DRV0
ffff5984:	e1a00740 	asr	r0, r0, #0xe
ffff5988:	e5810860 	str	r0, [r1, #0x860] ; PC_DRV1
ffff598c:	e3050140 	movw	r0, #0x5140
ffff5990:	e5810864 	str	r0, [r1, #0x864] ; PC_PULL0
ffff5994:	e3040016 	movw	r0, #0x4016
ffff5998:	e5810868 	str	r0, [r1, #0x868] ; PC_PULL1
ffff599c:	e12fff1e 	bx	lr

f_59a0:
ffff59a0:	e92d4070 	push	{r4, r5, r6, lr}
ffff59a4:	ebffffec 	bl	configurePIO_PC_NAND
ffff59a8:	e59f02e8 	ldr	r0, =0x01c20000
ffff59ac:	e5900060 	ldr	r0, [r0, #0x60]
ffff59b0:	e3c00a02 	bic	r0, r0, #0x2000
ffff59b4:	e59f12dc 	ldr	r1, =0x01c20000
ffff59b8:	e5810060 	str	r0, [r1, #0x60]
ffff59bc:	e1a00001 	mov	r0, r1
ffff59c0:	e5900060 	ldr	r0, [r0, #0x60]
ffff59c4:	e3800a02 	orr	r0, r0, #0x2000
ffff59c8:	e5810060 	str	r0, [r1, #0x60]
ffff59cc:	e1a00001 	mov	r0, r1
ffff59d0:	e5900080 	ldr	r0, [r0, #0x80]
ffff59d4:	e3c00102 	bic	r0, r0, #-0x80000000	; 0x80000000
ffff59d8:	e5810080 	str	r0, [r1, #0x80]
ffff59dc:	e59f42bc 	ldr	r4, =0x0303000f
ffff59e0:	e1a00001 	mov	r0, r1
ffff59e4:	e5900080 	ldr	r0, [r0, #0x80]
ffff59e8:	e1c05004 	bic	r5, r0, r4
ffff59ec:	e3855001 	orr	r5, r5, #0x1
ffff59f0:	e1a00001 	mov	r0, r1
ffff59f4:	e5805080 	str	r5, [r0, #0x80]
ffff59f8:	e5900080 	ldr	r0, [r0, #0x80]
ffff59fc:	e3800102 	orr	r0, r0, #-0x80000000	; 0x80000000
ffff5a00:	e5810080 	str	r0, [r1, #0x80]
ffff5a04:	e1a00001 	mov	r0, r1
ffff5a08:	e5900060 	ldr	r0, [r0, #0x60]
ffff5a0c:	e3800040 	orr	r0, r0, #0x40
ffff5a10:	e5810060 	str	r0, [r1, #0x60]
ffff5a14:	e3a00003 	mov	r0, #0x3
ffff5a18:	e2411a1d 	sub	r1, r1, #0x1d000
ffff5a1c:	e5810000 	str	r0, [r1]
ffff5a20:	e3a00000 	mov	r0, #0x0
ffff5a24:	ea000000 	b	0xffff5a2c
ffff5a28:	e2800001 	add	r0, r0, #0x1
ffff5a2c:	e35000f0 	cmp	r0, #0xf0
ffff5a30:	3afffffc 	bcc	0xffff5a28
ffff5a34:	e8bd8070 	pop	{r4, r5, r6, pc}

f_5a38:
ffff5a38:	e3a00000 	mov	r0, #0x0
ffff5a3c:	e59f1254 	ldr	r1, =0x01c20000
ffff5a40:	e5810848 	str	r0, [r1, #0x848]	; PC_CFG0
ffff5a44:	e581084c 	str	r0, [r1, #0x84c]	; PC_CFG1
ffff5a48:	e5810850 	str	r0, [r1, #0x850]	; PC_CFG2
ffff5a4c:	e5810854 	str	r0, [r1, #0x854]	; PC_CFG3
ffff5a50:	e59f0244 	ldr	r0, =0x55555555
ffff5a54:	e581085c 	str	r0, [r1, #0x85c]	; PC_DRV0
ffff5a58:	e1a00740 	asr	r0, r0, #0xe
ffff5a5c:	e5810860 	str	r0, [r1, #0x860]	; PC_DRV1
ffff5a60:	e3050140 	movw	r0, #0x5140
ffff5a64:	e5810864 	str	r0, [r1, #0x864]	; PC_PULL0
ffff5a68:	e3040016 	movw	r0, #0x4016
ffff5a6c:	e5810868 	str	r0, [r1, #0x868]	; PC_PULL1
ffff5a70:	e12fff1e 	bx	lr

nand_set_boot_random_seed:
ffff5a74:	e59f0228 	ldr	r0, =0x4a800008		; RANDOM_EN,RANDOM_SEED=0x4a80
ffff5a78:	e59f1228 	ldr	r1, =0x01c03000		; NAND
ffff5a7c:	e5810034 	str	r0, [r1, #0x34]		; ECC_CTL
ffff5a80:	e12fff1e 	bx	lr

f_5a84:
ffff5a84:	e92d4010 	push	{r4, lr}
ffff5a88:	ebfffff9 	bl	nand_set_boot_random_seed
ffff5a8c:	e59f0214 	ldr	r0, =0x01c03000
ffff5a90:	e5900000 	ldr	r0, [r0]
ffff5a94:	e3c00001 	bic	r0, r0, #0x1
ffff5a98:	e59f1208 	ldr	r1, =0x01c03000
ffff5a9c:	e5810000 	str	r0, [r1]
ffff5aa0:	e2810a1d 	add	r0, r1, #0x1d000
ffff5aa4:	e5900080 	ldr	r0, [r0, #0x80]
ffff5aa8:	e3c00102 	bic	r0, r0, #-0x80000000	; 0x80000000
ffff5aac:	e2811a1d 	add	r1, r1, #0x1d000
ffff5ab0:	e5810080 	str	r0, [r1, #0x80]
ffff5ab4:	e1a00001 	mov	r0, r1
ffff5ab8:	e5900060 	ldr	r0, [r0, #0x60]
ffff5abc:	e3c00a02 	bic	r0, r0, #0x2000
ffff5ac0:	e5810060 	str	r0, [r1, #0x60]
ffff5ac4:	e1a00001 	mov	r0, r1
ffff5ac8:	e5900060 	ldr	r0, [r0, #0x60]
ffff5acc:	e3c00040 	bic	r0, r0, #0x40
ffff5ad0:	e5810060 	str	r0, [r1, #0x60]
ffff5ad4:	ebffffd7 	bl	f_5a38
ffff5ad8:	e8bd8010 	pop	{r4, pc}

f_5adc:
ffff5adc:	e92d40f0 	push	{r4, r5, r6, r7, lr}
ffff5ae0:	e3510c02 	cmp	r1, #0x200
ffff5ae4:	0a000003 	beq	0xffff5af8
ffff5ae8:	e3510b01 	cmp	r1, #0x400
ffff5aec:	1a000004 	bne	0xffff5b04
ffff5af0:	e3a03000 	mov	r3, #0x0
ffff5af4:	ea000005 	b	0xffff5b10
ffff5af8:	e320f000 	nop	{0}
ffff5afc:	e3a03001 	mov	r3, #0x1
ffff5b00:	ea000002 	b	0xffff5b10
ffff5b04:	e320f000 	nop	{0}
ffff5b08:	e3a03000 	mov	r3, #0x0
ffff5b0c:	e320f000 	nop	{0}
ffff5b10:	e320f000 	nop	{0}
ffff5b14:	e3500040 	cmp	r0, #0x40
ffff5b18:	1a000001 	bne	0xffff5b24
ffff5b1c:	e3a05008 	mov	r5, #0x8
ffff5b20:	ea000002 	b	0xffff5b30
ffff5b24:	e320f000 	nop	{0}
ffff5b28:	e3a05008 	mov	r5, #0x8
ffff5b2c:	e320f000 	nop	{0}
ffff5b30:	e320f000 	nop	{0}
ffff5b34:	e59f616c 	ldr	r6, =0x01c03000
ffff5b38:	e5964034 	ldr	r4, [r6, #0x34]
ffff5b3c:	e30f6220 	movw	r6, #0xf220
ffff5b40:	e1c44006 	bic	r4, r4, r6
ffff5b44:	e1846605 	orr	r6, r4, r5, lsl #0xc
ffff5b48:	e1866283 	orr	r6, r6, r3, lsl #0x5
ffff5b4c:	e3866001 	orr	r6, r6, #0x1
ffff5b50:	e1866482 	orr	r6, r6, r2, lsl #0x9
ffff5b54:	e59f714c 	ldr	r7, =0x01c03000
ffff5b58:	e5876034 	str	r6, [r7, #0x34]
ffff5b5c:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}

f_5b60:
ffff5b60:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
ffff5b64:	e1a04000 	mov	r4, r0
ffff5b68:	ebffff8c 	bl	f_59a0
ffff5b6c:	e5940008 	ldr	r0, [r4, #0x8]
ffff5b70:	e3500000 	cmp	r0, #0x0
ffff5b74:	0a000000 	beq	0xffff5b7c
ffff5b78:	ebfffe98 	bl	nand_reset_chip
ffff5b7c:	e594001c 	ldr	r0, [r4, #0x1c]
ffff5b80:	e5942020 	ldr	r2, [r4, #0x20]
ffff5b84:	e5941024 	ldr	r1, [r4, #0x24]
ffff5b88:	ebffffd3 	bl	f_5adc
ffff5b8c:	e59f0114 	ldr	r0, =0x01c03000
ffff5b90:	e5900000 	ldr	r0, [r0]
ffff5b94:	e59f1110 	ldr	r1, =0xfff3b0fb
ffff5b98:	e0005001 	and	r5, r0, r1
ffff5b9c:	e5940014 	ldr	r0, [r4, #0x14]
ffff5ba0:	e3500008 	cmp	r0, #0x8
ffff5ba4:	0a000010 	beq	0xffff5bec
ffff5ba8:	ca000004 	bgt	0xffff5bc0
ffff5bac:	e3500002 	cmp	r0, #0x2
ffff5bb0:	0a000007 	beq	0xffff5bd4
ffff5bb4:	e3500004 	cmp	r0, #0x4
ffff5bb8:	1a000014 	bne	0xffff5c10
ffff5bbc:	ea000007 	b	0xffff5be0
ffff5bc0:	e3500010 	cmp	r0, #0x10
ffff5bc4:	0a00000b 	beq	0xffff5bf8
ffff5bc8:	e3500020 	cmp	r0, #0x20
ffff5bcc:	1a00000f 	bne	0xffff5c10
ffff5bd0:	ea00000b 	b	0xffff5c04
ffff5bd4:	e320f000 	nop	{0}
ffff5bd8:	e3a06000 	mov	r6, #0x0
ffff5bdc:	ea00000e 	b	0xffff5c1c
ffff5be0:	e320f000 	nop	{0}
ffff5be4:	e3a06001 	mov	r6, #0x1
ffff5be8:	ea00000b 	b	0xffff5c1c
ffff5bec:	e320f000 	nop	{0}
ffff5bf0:	e3a06002 	mov	r6, #0x2
ffff5bf4:	ea000008 	b	0xffff5c1c
ffff5bf8:	e320f000 	nop	{0}
ffff5bfc:	e3a06003 	mov	r6, #0x3
ffff5c00:	ea000005 	b	0xffff5c1c
ffff5c04:	e320f000 	nop	{0}
ffff5c08:	e3a06004 	mov	r6, #0x4
ffff5c0c:	ea000002 	b	0xffff5c1c
ffff5c10:	e320f000 	nop	{0}
ffff5c14:	e3a06000 	mov	r6, #0x0
ffff5c18:	e320f000 	nop	{0}
ffff5c1c:	e320f000 	nop	{0}
ffff5c20:	e5940004 	ldr	r0, [r4, #0x4]
ffff5c24:	e2007003 	and	r7, r0, #0x3
ffff5c28:	e1850907 	orr	r0, r5, r7, lsl #0x12
ffff5c2c:	e1800406 	orr	r0, r0, r6, lsl #0x8
ffff5c30:	e3800901 	orr	r0, r0, #0x4000
ffff5c34:	e59f106c 	ldr	r1, =0x01c03000
ffff5c38:	e5810000 	str	r0, [r1]
ffff5c3c:	e1a00001 	mov	r0, r1
ffff5c40:	e590000c 	ldr	r0, [r0, #0xc]
ffff5c44:	e3001f3f 	movw	r1, #0xf3f
ffff5c48:	e1c05001 	bic	r5, r0, r1
ffff5c4c:	e5940004 	ldr	r0, [r4, #0x4]
ffff5c50:	e3500003 	cmp	r0, #0x3
ffff5c54:	1a000004 	bne	0xffff5c6c
ffff5c58:	e594000c 	ldr	r0, [r4, #0xc]
ffff5c5c:	e200800f 	and	r8, r0, #0xf
ffff5c60:	e5940010 	ldr	r0, [r4, #0x10]
ffff5c64:	e200903f 	and	r9, r0, #0x3f
ffff5c68:	ea000001 	b	0xffff5c74
ffff5c6c:	e3a08000 	mov	r8, #0x0
ffff5c70:	e3a09000 	mov	r9, #0x0
ffff5c74:	e1850408 	orr	r0, r5, r8, lsl #0x8
ffff5c78:	e1800009 	orr	r0, r0, r9
ffff5c7c:	e59f1024 	ldr	r1, =0x01c03000
ffff5c80:	e581000c 	str	r0, [r1, #0xc]
ffff5c84:	e5940014 	ldr	r0, [r4, #0x14]
ffff5c88:	e1a00480 	lsl	r0, r0, #0x9
ffff5c8c:	e58100a0 	str	r0, [r1, #0xa0]
ffff5c90:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

load_from_spinor:
ffff5cb0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}; Push vars to stack
ffff5cb4:	eb00003c 	bl	spinor_setup_clk	; spinor_setup_clk();
ffff5cb8:	e3a04000 	mov	r4, #0x0		; r4 = 0;
ffff5cbc:	ea000027 	b	0xffff5d60		; goto err;
ffff5cc0:	e1a00004 	mov	r0, r4
ffff5cc4:	eb00014f 	bl	f_6208
ffff5cc8:	e1a05000 	mov	r5, r0
ffff5ccc:	e3a02001 	mov	r2, #0x1
ffff5cd0:	e3a01000 	mov	r1, #0x0
ffff5cd4:	e1a00001 	mov	r0, r1
ffff5cd8:	e12fff35 	blx	r5
ffff5cdc:	e3500002 	cmp	r0, #0x2
ffff5ce0:	1a000000 	bne	0xffff5ce8
ffff5ce4:	ea00001c 	b	0xffff5d5c
ffff5ce8:	e28f1084 	ldr	r1, =eGON_BT0
ffff5cec:	e3a00000 	mov	r0, #0x0
ffff5cf0:	eb000152 	bl	f_6240
ffff5cf4:	e3500000 	cmp	r0, #0x0
ffff5cf8:	0a000000 	beq	0xffff5d00
ffff5cfc:	ea000016 	b	0xffff5d5c
ffff5d00:	e3a07000 	mov	r7, #0x0
ffff5d04:	e5976010 	ldr	r6, [r7, #0x10]
ffff5d08:	e1a00006 	mov	r0, r6
ffff5d0c:	e7df049f 	bfc	r0, #0x9, #0x17
ffff5d10:	e3500000 	cmp	r0, #0x0
ffff5d14:	0a000000 	beq	0xffff5d1c
ffff5d18:	ea00000f 	b	0xffff5d5c
ffff5d1c:	e1a02426 	lsr	r2, r6, #0x8
ffff5d20:	e3a01000 	mov	r1, #0x0
ffff5d24:	e1a00001 	mov	r0, r1
ffff5d28:	e12fff35 	blx	r5
ffff5d2c:	e3500002 	cmp	r0, #0x2
ffff5d30:	1a000000 	bne	0xffff5d38
ffff5d34:	ea000008 	b	0xffff5d5c
ffff5d38:	e1a01006 	mov	r1, r6
ffff5d3c:	e3a00000 	mov	r0, #0x0
ffff5d40:	eb000151 	bl	f_628c
ffff5d44:	e3500000 	cmp	r0, #0x0
ffff5d48:	1a000002 	bne	0xffff5d58
ffff5d4c:	eb000035 	bl	f_5e28
ffff5d50:	e3a00000 	mov	r0, #0x0
ffff5d54:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
ffff5d58:	e320f000 	nop	{0}
ffff5d5c:	e2844001 	add	r4, r4, #0x1
err:
ffff5d60:	e3540002 	cmp	r4, #0x2
ffff5d64:	3affffd5 	bcc	0xffff5cc0
ffff5d68:	eb00002e 	bl	f_5e28
ffff5d6c:	e3e00000 	mvn	r0, #0x0
ffff5d70:	eafffff7 	b	0xffff5d54
ffff5d74:	4e4f4765 	cdpmi	7, 4, cr4, cr15, cr5, {3}
ffff5d78:	3054422e 	subscc	r4, r4, lr, lsr #0x4
ffff5d7c:	00000000 	andeq	r0, r0, r0

spinor_setup_pinmux:
ffff5d80:	e3001333 	movw	r1, #0x333		; Configure Port C to SPI0_MOSI, SPI0_MISO, SPI0_CLK in r1
ffff5d84:	e59f2498 	ldr	r2, =0x01c20000		; load Port IO register (0x01c20800) to r2
ffff5d88:	e5821848 	str	r1, [r2, #0x848]	; store r1 PC_CFG0 (2 * 0x24 + 0x00)
ffff5d8c:	e3a01203 	mov	r1, #0x30000000		; Configure Port C to SPI0_CS0 in r1
ffff5d90:	e5821850 	str	r1, [r2, #0x850]	; store r1 PC_CFG2 (2 * 0x24 + 0x08)
ffff5d94:	e1c21001 	bic	r1, r2, r1		; load Port IO register (0x01c20800) to r1
ffff5d98:	e5910868 	ldr	r0, [r1, #0x868]	; load PC_PULL1 into r0
ffff5d9c:	e3c00903 	bic	r0, r0, #0xc000]	; clear SPI0_CS0 in PC_PULL1
ffff5da0:	e3800901 	orr	r0, r0, #0x4000]	; set SPI0_CS0 as PULLDOWN
ffff5da4:	e5810868 	str	r0, [r1, #0x868]	; store PC_PULL1
ffff5da8:	e12fff1e 	bx	lr			; return

void spinor_setup_pinmux(void)
{
	int reg_val;

	reg_val = readl(PIO_PC_CFG0);
	reg_val |= SPI0_MOSI, SPI0_MISO, SPI0_CLK;
	writel(reg_val, PIO_PC_CFG0);
	reg_val = readl(PIO_PC_CFG1);
	reg_val |= SPI0_CS0;
	writel(reg_val, PIO_PC_CFG1);

	reg_val = readl(PIO_PC_PULL1);
	reg_val |= PULL_UP < SPI0_CS0;
	writel(reg_val, PIO_PC_PULL1);
}

spinor_setup_clk:
ffff5dac:	e92d4010 	push	{r4, lr}		; store load_from_spinor return point in r4
ffff5db0:	e59f046c 	ldr	r0, =0x01c20000		; load CCM (Clock Control Module) main register into r0
ffff5db4:	e5900060 	ldr	r0, [r0, #0x60]		; load CCM_AHB_GATING0 into r0
ffff5db8:	e3800601 	orr	r0, r0, #0x100000	; enable AHB SPI 0 clock gate in r0
ffff5dbc:	e59f1460 	ldr	r1, =0x01c20000		; load CCM main reg in r1
ffff5dc0:	e5810060 	str	r0, [r1, #0x60]		; store CCM_AHB_GATING
ffff5dc4:	e1a00001 	mov	r0, r1			; load CCM_AHB_GATING0 into r0
ffff5dc8:	e59000a0 	ldr	r0, [r0, #0xa0]		; load CCM_SPI0_CLK into r0
ffff5dcc:	e3800102 	orr	r0, r0, #-0x80000000	; enable CCM_SPI0_GATE (with default factors, M=1; N=1; OSC24M)
ffff5dd0:	e58100a0 	str	r0, [r1, #0xa0]		; store CCM_SPIO_CLK
ffff5dd4:	ebffffe9 	bl	spinor_setup_pinmux	; configure SPI0 pinmuxing	
ffff5dd8:	e59f0444 	ldr	r0, =0x01c20000		; load CCM into r0
ffff5ddc:	e5900060 	ldr	r0, [r0, #0x60]		; load CCM_AHB_GATING into r0
ffff5de0:	e3800040 	orr	r0, r0, #0x40		; enable CCM_AHB_GATE_DMA in r0
ffff5de4:	e59f1438 	ldr	r1, =0x01c20000		; load CCM_AHB_GATING0 into r1
ffff5de8:	e5810060 	str	r0, [r1, #0x60]		; store CCM_AHB_GATE_DMA in CCM_AHB_GATE_DMA
ffff5dec:	e3010002 	movw	r0, #0x1002		; set SPI0_CLK = AHB_CLK / (2 * (2 + 1)) and set SPI0_DIV_RATE to clock divide rate 2 into r0
ffff5df0:	e2411a1b 	sub	r1, r1, #0x1b000	; subtract 0x1b000 from r1 = 0x1c05000, SPI0 Register
ffff5df4:	e581001c 	str	r0, [r1, #0x1c]		; store r0 into SPI0_CCTL
ffff5df8:	e3000202 	movw	r0, #0x202		; enable SPI0_DMA_RX_FULL and SPI0_DMA_TX_HALF
ffff5dfc:	e5810014 	str	r0, [r1, #0x14]		; store r0 in SPI0_DMACTL
ffff5e00:	e59f0420 	ldr	r0, =0x0004831f		; set SPI0_EN, SPI0_MODE_MASTER, SPI0_PHASE_CTL_SETUP, SPI0_CLK_POL_LOW, SPI0_CS_POL_LOW, SPI0_TXFIFO_RST, SPI0_RXFIFO_RST, SPI0_DISCARD_HASH_BURST, SPI0_TX_PAUSE_EN in r0
ffff5e04:	e5810008 	str	r0, [r1, #0x8]		; store r0 in SPI0_CTL
ffff5e08:	e8bd8010 	pop	{r4, pc}		; return to load_from_spinor

void spinor_setup_clk(void)
{
	int reg_val;

	reg_val = readl(CCM_AHB_GATING0);
	reg_val |= CCM_AHB_GATE_SPI0;
	writel(reg_val, CCM_AHB_GATING0);

	reg_val = readl(CCM_SPI0_CLK);
	reg_val |= CCM_SPI0_GATE;
	writel(reg_val, CCM_SPI0_CLK);

	spinor_setup_pinmux();

	reg_val = readl(SPI0_CCTL);
	reg_val |= SPIO_AHB_CLK(6) | SPI0_DIV_RATE(2);
	writel(reg_val, SPIO_CCTL);

	reg_val = readl(SPI0_DMACTL);
	reg_val |= SPI0_DMA_RX_FULL | SPI0_DMA_TX_HALF;
	writel(reg_val, SPI0_DMACTL);

	reg_val = readl(SPI0_CTL);
	reg_val |= SPI0_EN | SPI0_MODE_MASTER | SPI0_PHASE_CTL_SETUP |
		   SPI0_CLK_POL_LOW | SPI0_CS_POL_LOW | SPI0_TXFIFO_RST |
		   SPI0_RXFIFO_RST | SPI0_DISCARD_HASH_BURST | SPI0_TX_PAUSE_EN;
	writel(reg_val, SPI0_CTL);
}

f_5e0c:
ffff5e0c:	e3a00000 	mov	r0, #0x0
ffff5e10:	e59f140c 	ldr	r1, =0x01c20000
ffff5e14:	e5810848 	str	r0, [r1, #0x848]
ffff5e18:	e5810850 	str	r0, [r1, #0x850]
ffff5e1c:	e3040016 	movw	r0, #0x4016	; PC_PULL1=DEFAULT
ffff5e20:	e5810868 	str	r0, [r1, #0x868]
ffff5e24:	e12fff1e 	bx	lr

f_5e28:
ffff5e28:	e92d4010 	push	{r4, lr}
ffff5e2c:	e3a00000 	mov	r0, #0x0
ffff5e30:	e59f13f4 	ldr	r1, =0x01c05000
ffff5e34:	e5810014 	str	r0, [r1, #0x14]
ffff5e38:	e1c10000 	bic	r0, r1, r0
ffff5e3c:	e5900008 	ldr	r0, [r0, #0x8]
ffff5e40:	e3c00001 	bic	r0, r0, #0x1
ffff5e44:	e5810008 	str	r0, [r1, #0x8]
ffff5e48:	ebffffef 	bl	f_5e0c
ffff5e4c:	e59f03d0 	ldr	r0, =0x01c20000
ffff5e50:	e5900060 	ldr	r0, [r0, #0x60]
ffff5e54:	e3c00040 	bic	r0, r0, #0x40
ffff5e58:	e59f13c4 	ldr	r1, =0x01c20000
ffff5e5c:	e5810060 	str	r0, [r1, #0x60]
ffff5e60:	e1a00001 	mov	r0, r1
ffff5e64:	e59000a0 	ldr	r0, [r0, #0xa0]
ffff5e68:	e3c00102 	bic	r0, r0, #-0x80000000	; 0x80000000
ffff5e6c:	e58100a0 	str	r0, [r1, #0xa0]
ffff5e70:	e1a00001 	mov	r0, r1
ffff5e74:	e5900060 	ldr	r0, [r0, #0x60]
ffff5e78:	e3c00601 	bic	r0, r0, #0x100000
ffff5e7c:	e5810060 	str	r0, [r1, #0x60]
ffff5e80:	e8bd8010 	pop	{r4, pc}

f_5e84:
ffff5e84:	e1a01000 	mov	r1, r0
ffff5e88:	e320f000 	nop	{0}
ffff5e8c:	e59f039c 	ldr	r0, =0x01c02000
ffff5e90:	e5900120 	ldr	r0, [r0, #0x120]
ffff5e94:	e3100102 	tst	r0, #-0x80000000	; 0x80000000
ffff5e98:	1a000001 	bne	0xffff5ea4
ffff5e9c:	e3a00000 	mov	r0, #0x0
ffff5ea0:	e12fff1e 	bx	lr
ffff5ea4:	e2410001 	sub	r0, r1, #0x1
ffff5ea8:	e1b01000 	movs	r1, r0
ffff5eac:	1afffff6 	bne	0xffff5e8c
ffff5eb0:	e3a00002 	mov	r0, #0x2
ffff5eb4:	eafffff9 	b	0xffff5ea0

f_5eb8:
ffff5eb8:	e1a01000 	mov	r1, r0
ffff5ebc:	e320f000 	nop	{0}
ffff5ec0:	e59f0368 	ldr	r0, =0x01c02000
ffff5ec4:	e5900140 	ldr	r0, [r0, #0x140]
ffff5ec8:	e3100102 	tst	r0, #-0x80000000	; 0x80000000
ffff5ecc:	1a000001 	bne	0xffff5ed8
ffff5ed0:	e3a00000 	mov	r0, #0x0
ffff5ed4:	e12fff1e 	bx	lr
ffff5ed8:	e2410001 	sub	r0, r1, #0x1
ffff5edc:	e1b01000 	movs	r1, r0
ffff5ee0:	1afffff6 	bne	0xffff5ec0
ffff5ee4:	e3a00002 	mov	r0, #0x2
ffff5ee8:	eafffff9 	b	0xffff5ed4

f_5eec:
ffff5eec:	e30f1fff 	movw	r1, #0xffff
ffff5ef0:	e320f000 	nop	{0}
ffff5ef4:	e1b00001 	movs	r0, r1
ffff5ef8:	e2411001 	sub	r1, r1, #0x1
ffff5efc:	0a000003 	beq	0xffff5f10
ffff5f00:	e59f0324 	ldr	r0, =0x01c05000
ffff5f04:	e5900010 	ldr	r0, [r0, #0x10]
ffff5f08:	e3100102 	tst	r0, #-0x80000000	; 0x80000000
ffff5f0c:	1afffff8 	bne	0xffff5ef4
ffff5f10:	e3510000 	cmp	r1, #0x0
ffff5f14:	da000001 	ble	0xffff5f20
ffff5f18:	e3a00000 	mov	r0, #0x0
ffff5f1c:	e12fff1e 	bx	lr
ffff5f20:	e3a00002 	mov	r0, #0x2
ffff5f24:	eafffffc 	b	0xffff5f1c

f_5f28:
ffff5f28:	e1a01000 	mov	r1, r0
ffff5f2c:	e320f000 	nop	{0}
ffff5f30:	e59f02f4 	ldr	r0, =0x01c05000
ffff5f34:	e5900010 	ldr	r0, [r0, #0x10]
ffff5f38:	e3100801 	tst	r0, #0x10000
ffff5f3c:	0a000001 	beq	0xffff5f48
ffff5f40:	e3a00000 	mov	r0, #0x0
ffff5f44:	e12fff1e 	bx	lr
ffff5f48:	e2410001 	sub	r0, r1, #0x1
ffff5f4c:	e1b01000 	movs	r1, r0
ffff5f50:	1afffff6 	bne	0xffff5f30
ffff5f54:	e3a00002 	mov	r0, #0x2
ffff5f58:	eafffff9 	b	0xffff5f44

f_5f5c:
ffff5f5c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
ffff5f60:	e1a04000 	mov	r4, r0
ffff5f64:	e1a05001 	mov	r5, r1
ffff5f68:	e1a06002 	mov	r6, r2
ffff5f6c:	e1a07003 	mov	r7, r3
ffff5f70:	e0840005 	add	r0, r4, r5
ffff5f74:	e2808e96 	add	r8, r0, #0x960
ffff5f78:	e0840005 	add	r0, r4, r5
ffff5f7c:	e59f12a8 	ldr	r1, =0x01c05000
ffff5f80:	e5810020 	str	r0, [r1, #0x20]
ffff5f84:	e1a00001 	mov	r0, r1
ffff5f88:	e5804024 	str	r4, [r0, #0x24]
ffff5f8c:	e2400a03 	sub	r0, r0, #0x3000
ffff5f90:	e5806144 	str	r6, [r0, #0x144]
ffff5f94:	e2810004 	add	r0, r1, #0x4
ffff5f98:	e2411a03 	sub	r1, r1, #0x3000
ffff5f9c:	e5810148 	str	r0, [r1, #0x148]
ffff5fa0:	e1c101c0 	bic	r0, r1, r0, asr #0x3
ffff5fa4:	e580414c 	str	r4, [r0, #0x14c]
ffff5fa8:	e59f0284 	ldr	r0, =0x9c380415
ffff5fac:	e5810140 	str	r0, [r1, #0x140]
ffff5fb0:	e2810a03 	add	r0, r1, #0x3000
ffff5fb4:	e5810124 	str	r0, [r1, #0x124]
ffff5fb8:	e2400a03 	sub	r0, r0, #0x3000
ffff5fbc:	e5807128 	str	r7, [r0, #0x128]
ffff5fc0:	e580512c 	str	r5, [r0, #0x12c]
ffff5fc4:	e59f026c 	ldr	r0, =0x9c150438
ffff5fc8:	e5810120 	str	r0, [r1, #0x120]
ffff5fcc:	e2810a03 	add	r0, r1, #0x3000
ffff5fd0:	e5900008 	ldr	r0, [r0, #0x8]
ffff5fd4:	e3800b01 	orr	r0, r0, #0x400
ffff5fd8:	e2811a03 	add	r1, r1, #0x3000
ffff5fdc:	e5810008 	str	r0, [r1, #0x8]
ffff5fe0:	e1a00008 	mov	r0, r8
ffff5fe4:	ebffffb3 	bl	f_5eb8
ffff5fe8:	e3500002 	cmp	r0, #0x2
ffff5fec:	1a00000a 	bne	0xffff601c
ffff5ff0:	e59f0238 	ldr	r0, =0x01c02000
ffff5ff4:	e5900140 	ldr	r0, [r0, #0x140]
ffff5ff8:	e3c00102 	bic	r0, r0, #-0x80000000	; 0x80000000
ffff5ffc:	e59f122c 	ldr	r1, =0x01c02000
ffff6000:	e5810140 	str	r0, [r1, #0x140]
ffff6004:	e1a00001 	mov	r0, r1
ffff6008:	e5900120 	ldr	r0, [r0, #0x120]
ffff600c:	e3c00102 	bic	r0, r0, #-0x80000000	; 0x80000000
ffff6010:	e5810120 	str	r0, [r1, #0x120]
ffff6014:	e3a00002 	mov	r0, #0x2
ffff6018:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
ffff601c:	e1a00008 	mov	r0, r8
ffff6020:	ebffff97 	bl	f_5e84
ffff6024:	e3500002 	cmp	r0, #0x2
ffff6028:	1a00000a 	bne	0xffff6058
ffff602c:	e59f01fc 	ldr	r0, =0x01c02000
ffff6030:	e5900140 	ldr	r0, [r0, #0x140]
ffff6034:	e3c00102 	bic	r0, r0, #-0x80000000	; 0x80000000
ffff6038:	e59f11f0 	ldr	r1, =0x01c02000
ffff603c:	e5810140 	str	r0, [r1, #0x140]
ffff6040:	e1a00001 	mov	r0, r1
ffff6044:	e5900120 	ldr	r0, [r0, #0x120]
ffff6048:	e3c00102 	bic	r0, r0, #-0x80000000	; 0x80000000
ffff604c:	e5810120 	str	r0, [r1, #0x120]
ffff6050:	e3a00002 	mov	r0, #0x2
ffff6054:	eaffffef 	b	0xffff6018
ffff6058:	e1a00008 	mov	r0, r8
ffff605c:	ebffffb1 	bl	f_5f28
ffff6060:	e3500002 	cmp	r0, #0x2
ffff6064:	1a00000a 	bne	0xffff6094
ffff6068:	e59f01c0 	ldr	r0, =0x01c02000
ffff606c:	e5900140 	ldr	r0, [r0, #0x140]
ffff6070:	e3c00102 	bic	r0, r0, #-0x80000000	; 0x80000000
ffff6074:	e59f11b4 	ldr	r1, =0x01c02000
ffff6078:	e5810140 	str	r0, [r1, #0x140]
ffff607c:	e1a00001 	mov	r0, r1
ffff6080:	e5900120 	ldr	r0, [r0, #0x120]
ffff6084:	e3c00102 	bic	r0, r0, #-0x80000000	; 0x80000000
ffff6088:	e5810120 	str	r0, [r1, #0x120]
ffff608c:	e3a00002 	mov	r0, #0x2
ffff6090:	eaffffe0 	b	0xffff6018
ffff6094:	e59f0194 	ldr	r0, =0x01c02000
ffff6098:	e5900140 	ldr	r0, [r0, #0x140]
ffff609c:	e3c00102 	bic	r0, r0, #-0x80000000	; 0x80000000
ffff60a0:	e59f1188 	ldr	r1, =0x01c02000
ffff60a4:	e5810140 	str	r0, [r1, #0x140]
ffff60a8:	e1a00001 	mov	r0, r1
ffff60ac:	e5900120 	ldr	r0, [r0, #0x120]
ffff60b0:	e3c00102 	bic	r0, r0, #-0x80000000	; 0x80000000
ffff60b4:	e5810120 	str	r0, [r1, #0x120]
ffff60b8:	e2810a03 	add	r0, r1, #0x3000
ffff60bc:	e5900010 	ldr	r0, [r0, #0x10]
ffff60c0:	e3800801 	orr	r0, r0, #0x10000
ffff60c4:	e2811a03 	add	r1, r1, #0x3000
ffff60c8:	e5810010 	str	r0, [r1, #0x10]
ffff60cc:	ebffff86 	bl	f_5eec
ffff60d0:	e3500002 	cmp	r0, #0x2
ffff60d4:	1a000001 	bne	0xffff60e0
ffff60d8:	e3a00002 	mov	r0, #0x2
ffff60dc:	eaffffcd 	b	0xffff6018
ffff60e0:	e3a00000 	mov	r0, #0x0
ffff60e4:	eaffffcb 	b	0xffff6018

f_60e8:
ffff60e8:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
ffff60ec:	e1a04000 	mov	r4, r0
ffff60f0:	e1a05001 	mov	r5, r1
ffff60f4:	e1a06002 	mov	r6, r2
ffff60f8:	e1a0b005 	mov	fp, r5
ffff60fc:	e3a08000 	mov	r8, #0x0
ffff6100:	e1a07404 	lsl	r7, r4, #0x8
ffff6104:	e1a0a406 	lsl	sl, r6, #0x8
ffff6108:	ea000018 	b	0xffff6170
ffff610c:	e3a00003 	mov	r0, #0x3
ffff6110:	e5cd0000 	strb	r0, [sp]
ffff6114:	e1a00827 	lsr	r0, r7, #0x10
ffff6118:	e5cd0001 	strb	r0, [sp, #0x1]
ffff611c:	e1a00427 	lsr	r0, r7, #0x8
ffff6120:	e5cd0002 	strb	r0, [sp, #0x2]
ffff6124:	e5cd7003 	strb	r7, [sp, #0x3]
ffff6128:	e04a0008 	sub	r0, sl, r8
ffff612c:	e3500b02 	cmp	r0, #0x800
ffff6130:	9a000001 	bls	0xffff613c
ffff6134:	e3a00b02 	mov	r0, #0x800
ffff6138:	ea000000 	b	0xffff6140
ffff613c:	e04a0008 	sub	r0, sl, r8
ffff6140:	e1a09000 	mov	r9, r0
ffff6144:	e08b3008 	add	r3, fp, r8
ffff6148:	e1a0200d 	mov	r2, sp
ffff614c:	e1a01009 	mov	r1, r9
ffff6150:	e3a00004 	mov	r0, #0x4
ffff6154:	ebffff80 	bl	f_5f5c
ffff6158:	e3500002 	cmp	r0, #0x2
ffff615c:	1a000001 	bne	0xffff6168
ffff6160:	e3a00002 	mov	r0, #0x2
ffff6164:	e8bd8ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
ffff6168:	e0877009 	add	r7, r7, r9
ffff616c:	e0888009 	add	r8, r8, r9
ffff6170:	e158000a 	cmp	r8, sl
ffff6174:	3affffe4 	bcc	0xffff610c
ffff6178:	e3a00000 	mov	r0, #0x0
ffff617c:	eafffff8 	b	0xffff6164

f_6180:
ffff6180:	e92d47fc 	push	{r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
ffff6184:	e1a04000 	mov	r4, r0
ffff6188:	e1a05001 	mov	r5, r1
ffff618c:	e1a06002 	mov	r6, r2
ffff6190:	e1a09005 	mov	r9, r5
ffff6194:	e3a00000 	mov	r0, #0x0
ffff6198:	e58d0004 	str	r0, [sp, #0x4]
ffff619c:	e3a07000 	mov	r7, #0x0
ffff61a0:	e3a0a000 	mov	sl, #0x0
ffff61a4:	e1a08484 	lsl	r8, r4, #0x9
ffff61a8:	ea000012 	b	0xffff61f8
ffff61ac:	e3a000e8 	mov	r0, #0xe8
ffff61b0:	e5cd0000 	strb	r0, [sp]
ffff61b4:	e1a00828 	lsr	r0, r8, #0x10
ffff61b8:	e5cd0001 	strb	r0, [sp, #0x1]
ffff61bc:	e1a00428 	lsr	r0, r8, #0x8
ffff61c0:	e5cd0002 	strb	r0, [sp, #0x2]
ffff61c4:	e5cd8003 	strb	r8, [sp, #0x3]
ffff61c8:	e089300a 	add	r3, r9, sl
ffff61cc:	e1a0200d 	mov	r2, sp
ffff61d0:	e3a01c01 	mov	r1, #0x100
ffff61d4:	e3a00008 	mov	r0, #0x8
ffff61d8:	ebffff5f 	bl	f_5f5c
ffff61dc:	e3500002 	cmp	r0, #0x2
ffff61e0:	1a000001 	bne	0xffff61ec
ffff61e4:	e3a00002 	mov	r0, #0x2
ffff61e8:	e8bd87fc 	pop	{r2, r3, r4, r5, r6, r7, r8, r9, sl, pc}
ffff61ec:	e2877001 	add	r7, r7, #0x1
ffff61f0:	e28aac01 	add	sl, sl, #0x100
ffff61f4:	e2888c02 	add	r8, r8, #0x200
ffff61f8:	e1570006 	cmp	r7, r6
ffff61fc:	3affffea 	bcc	0xffff61ac
ffff6200:	e3a00000 	mov	r0, #0x0
ffff6204:	eafffff7 	b	0xffff61e8

f_6208:
ffff6208:	e92d400c 	push	{r2, r3, lr}
ffff620c:	e1a01000 	mov	r1, r0
ffff6210:	e59f2024 	ldr	r2, =d_6608
ffff6214:	e8920005 	ldm	r2, {r0, r2}
ffff6218:	e88d0005 	stm	sp, {r0, r2}
ffff621c:	e79d0101 	ldr	r0, [sp, r1, lsl #0x2]
ffff6220:	e8bd800c 	pop	{r2, r3, pc}

f_6240:
ffff6240:	e92d40f0 	push	{r4, r5, r6, r7, lr}
ffff6244:	e1a02000 	mov	r2, r0
ffff6248:	e1a03002 	mov	r3, r2
ffff624c:	e1a02003 	mov	r2, r3
ffff6250:	e2836004 	add	r6, r3, #0x4
ffff6254:	e3a04000 	mov	r4, #0x0
ffff6258:	e3a05008 	mov	r5, #0x8
ffff625c:	ea000006 	b	0xffff627c
ffff6260:	e4d60001 	ldrb	r0, [r6], #0x1
ffff6264:	e4d17001 	ldrb	r7, [r1], #0x1
ffff6268:	e1500007 	cmp	r0, r7
ffff626c:	0a000001 	beq	0xffff6278
ffff6270:	e3a00001 	mov	r0, #0x1
ffff6274:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
ffff6278:	e2844001 	add	r4, r4, #0x1
ffff627c:	e1540005 	cmp	r4, r5
ffff6280:	3afffff6 	bcc	0xffff6260
ffff6284:	e3a00000 	mov	r0, #0x0
ffff6288:	eafffff9 	b	0xffff6274

f_628c:
ffff628c:	e92d40f0 	push	{r4, r5, r6, r7, lr}
ffff6290:	e1a02000 	mov	r2, r0
ffff6294:	e1a06002 	mov	r6, r2
ffff6298:	e1a02006 	mov	r2, r6
ffff629c:	e596500c 	ldr	r5, [r6, #0xc]
ffff62a0:	e59f00c0 	ldr	r0, =0x5f0a6c39
ffff62a4:	e1a02006 	mov	r2, r6
ffff62a8:	e586000c 	str	r0, [r6, #0xc]
ffff62ac:	e1a04121 	lsr	r4, r1, #0x2
ffff62b0:	e3a07000 	mov	r7, #0x0
ffff62b4:	e1a03002 	mov	r3, r2
ffff62b8:	e320f000 	nop	{0}
ffff62bc:	e4930004 	ldr	r0, [r3], #0x4
ffff62c0:	e0877000 	add	r7, r7, r0
ffff62c4:	e4930004 	ldr	r0, [r3], #0x4
ffff62c8:	e0877000 	add	r7, r7, r0
ffff62cc:	e4930004 	ldr	r0, [r3], #0x4
ffff62d0:	e0877000 	add	r7, r7, r0
ffff62d4:	e4930004 	ldr	r0, [r3], #0x4
ffff62d8:	e0877000 	add	r7, r7, r0
ffff62dc:	e2440004 	sub	r0, r4, #0x4
ffff62e0:	e1a04000 	mov	r4, r0
ffff62e4:	e3500003 	cmp	r0, #0x3
ffff62e8:	8afffff3 	bhi	0xffff62bc
ffff62ec:	ea000001 	b	0xffff62f8
ffff62f0:	e4930004 	ldr	r0, [r3], #0x4
ffff62f4:	e0877000 	add	r7, r7, r0
ffff62f8:	e1b00004 	movs	r0, r4
ffff62fc:	e2444001 	sub	r4, r4, #0x1
ffff6300:	1afffffa 	bne	0xffff62f0
ffff6304:	e586500c 	str	r5, [r6, #0xc]
ffff6308:	e1570005 	cmp	r7, r5
ffff630c:	1a000001 	bne	0xffff6318
ffff6310:	e3a00000 	mov	r0, #0x0
ffff6314:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
ffff6318:	e3a00001 	mov	r0, #0x1
ffff631c:	eafffffc 	b	0xffff6314
ffff6320:	e92d4070 	push	{r4, r5, r6, lr}
ffff6324:	e1a04000 	mov	r4, r0
ffff6328:	e1a05001 	mov	r5, r1
ffff632c:	e1a06002 	mov	r6, r2
ffff6330:	e1a01006 	mov	r1, r6
ffff6334:	e1a00004 	mov	r0, r4
ffff6338:	ebffffc0 	bl	f_6240
ffff633c:	e3500000 	cmp	r0, #0x0
ffff6340:	1a000006 	bne	0xffff6360
ffff6344:	e1a01005 	mov	r1, r5
ffff6348:	e1a00004 	mov	r0, r4
ffff634c:	ebffffce 	bl	f_628c
ffff6350:	e3500000 	cmp	r0, #0x0
ffff6354:	1a000001 	bne	0xffff6360
ffff6358:	e3a00000 	mov	r0, #0x0
ffff635c:	e8bd8070 	pop	{r4, r5, r6, pc}
ffff6360:	e3a00001 	mov	r0, #0x1
ffff6364:	eafffffc 	b	0xffff635c

udelay:
ffff636c:	e1a01000 	mov	r1, r0
ffff6370:	ea000000 	b	0xffff6378
ffff6374:	e2411001 	sub	r1, r1, #0x1
ffff6378:	e3510000 	cmp	r1, #0x0
ffff637c:	cafffffc 	bgt	0xffff6374
ffff6380:	e12fff1e 	bx	lr

check_uboot:
ffff6384:	e92d4070 	push	{r4, r5, r6, lr}
ffff6388:	e3a05000 	mov	r5, #0x0
ffff638c:	e3a0603c 	mov	r6, #0x3c
ffff6390:	e3a04004 	mov	r4, #0x4
ffff6394:	ea000006 	b	0xffff63b4
ffff6398:	e1a00006 	mov	r0, r6
ffff639c:	ebfffff2 	bl	udelay
ffff63a0:	e3a00507 	mov	r0, #0x1c00000
ffff63a4:	e5900024 	ldr	r0, [r0, #0x24]	; = 0x1c00024		FEL button?
ffff63a8:	e7e00450 	ubfx	r0, r0, #0x8, #0x1
ffff63ac:	e0855000 	add	r5, r5, r0
ffff63b0:	e2444001 	sub	r4, r4, #0x1
ffff63b4:	e3540000 	cmp	r4, #0x0
ffff63b8:	cafffff6 	bgt	0xffff6398
ffff63bc:	e3550000 	cmp	r5, #0x0
ffff63c0:	1a000001 	bne	0xffff63cc
ffff63c4:	e3e00000 	mvn	r0, #0x0
ffff63c8:	e8bd8070 	pop	{r4, r5, r6, pc}
ffff63cc:	e3a00000 	mov	r0, #0x0
ffff63d0:	eafffffc 	b	0xffff63c8

ffff63d4:	e12fff1e 	bx	lr

memcpy:
ffff63d8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
ffff63dc:	e2522020 	subs	r2, r2, #0x20
ffff63e0:	3a00000d 	bcc	0xffff641c
ffff63e4:	e3520e12 	cmp	r2, #0x120
ffff63e8:	3a000007 	bcc	0xffff640c
ffff63ec:	f5d1f100 	pld	[r1, #0x100]
ffff63f0:	e8b151f8 	ldm	r1!, {r3, r4, r5, r6, r7, r8, ip, lr}
ffff63f4:	e2422040 	sub	r2, r2, #0x40
ffff63f8:	e3520e12 	cmp	r2, #0x120
ffff63fc:	e8a051f8 	stmia	r0!, {r3, r4, r5, r6, r7, r8, ip, lr}
ffff6400:	e8b151f8 	ldm	r1!, {r3, r4, r5, r6, r7, r8, ip, lr}
ffff6404:	e8a051f8 	stmia	r0!, {r3, r4, r5, r6, r7, r8, ip, lr}
ffff6408:	2afffff7 	bcs	0xffff63ec
ffff640c:	e8b151f8 	ldm	r1!, {r3, r4, r5, r6, r7, r8, ip, lr}
ffff6410:	e2522020 	subs	r2, r2, #0x20
ffff6414:	e8a051f8 	stmia	r0!, {r3, r4, r5, r6, r7, r8, ip, lr}
ffff6418:	2afffffb 	bcs	0xffff640c
ffff641c:	e1b0ce02 	lsls	ip, r2, #0x1c
ffff6420:	28b15018 	ldmcs	r1!, {r3, r4, ip, lr}
ffff6424:	28a05018 	stmiacs	r0!, {r3, r4, ip, lr}
ffff6428:	48b10018 	ldmmi	r1!, {r3, r4}
ffff642c:	48a00018 	stmiami	r0!, {r3, r4}
ffff6430:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
ffff6434:	e1b0cf02 	lsls	ip, r2, #0x1e
ffff6438:	24913004 	ldrcs	r3, [r1], #0x4
ffff643c:	24803004 	strcs	r3, [r0], #0x4
ffff6440:	012fff1e 	bxeq	lr
ffff6444:	e1b02f82 	lsls	r2, r2, #0x1f
ffff6448:	20d130b2 	ldrhcs	r3, [r1], #0x2
ffff644c:	44d12001 	ldrbmi	r2, [r1], #0x1
ffff6450:	20c030b2 	strhcs	r3, [r0], #0x2
ffff6454:	44c02001 	strbmi	r2, [r0], #0x1
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
ffff6478:	.l nand_read_a_blocks
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
ffff64c8:	.l nand_read_a_blocks
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
ffff6518:	.l nand_read_a_blocks
ffff651c:	.l 0x00000003
ffff6520:	.l 0x00000001
ffff6524:	.l 0x00000001
ffff6528:	.l 0x0000003f
ffff652c:	.l 0x00000002
ffff6530:	.l 0x00000001
ffff6534:	.l 0x00000040
ffff6538:	.l 0x00000001
ffff653c:	.l 0x00000400
ffff6540:	.l nand_read_a_blocks
ffff6544:	.l 0x00000003
ffff6548:	.l 0x00000000
ffff654c:	.l 0x00000002
ffff6550:	.l 0x0000003f
ffff6554:	.l 0x00000002
ffff6558:	.l 0x00000001
ffff655c:	.l 0x00000040
ffff6560:	.l 0x00000001
ffff6564:	.l 0x00000400
ffff6568:	.l nand_read_a_blocks
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
