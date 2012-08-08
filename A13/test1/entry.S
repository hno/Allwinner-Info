////////////////////////////////////////////////////////////////////////////////
// Copyright(C) SigmaTel, Inc. 2004
//
//! \file    hw_core_handlers.arm
//! \brief This file contains exception handlers.
//! \version version 0.1
//! \date Jan, 2005
////////////////////////////////////////////////////////////////////////////////

        .file   "entry.S"

        .global entry

        .text
    .code 32
    .section ".start", "ax"
        
        
        .globl  __vectors
__vectors:

reset_handler:
      B       entry
undef_handler:
      B entry
swi_handler:
      B entry

prefetch_handler:
      B entry
data_handler:
      B entry
reserve_handler:
      B entry
irq_handler:
      B entry
fiq_handler:
      B entry



        


entry:

        
	mcr	p15, 0, r0, c7, c5, 0	@ invalidate icache
	mcr     p15, 0, r0, c7, c10, 4	@ DSB
	mcr     p15, 0, r0, c7, c5, 4	@ ISB
        

        
	/*
	 * Invalidate L1 I/D
	 */
	mov	r0, #0			@ set up for MCR
	mcr	p15, 0, r0, c8, c7, 0	@ invalidate TLBs
	mcr	p15, 0, r0, c7, c5, 0	@ invalidate icache
	mcr	p15, 0, r0, c7, c5, 6	@ invalidate BP array
	mcr     p15, 0, r0, c7, c10, 4	@ DSB
	mcr     p15, 0, r0, c7, c5, 4	@ ISB

	/*
	 * disable MMU stuff and caches
	 */
	mrc	p15, 0, r0, c1, c0, 0
	bic	r0, r0, #0x00002000	@ clear bits 13 (--V-)
	bic	r0, r0, #0x00000007	@ clear bits 2:0 (-CAM)
	orr	r0, r0, #0x00000002	@ set bit 1 (--A-) Align
	orr	r0, r0, #0x00000800	@ set bit 11 (Z---) BTB
#define CONFIG_SYS_ICACHE_OFF 1
#ifdef CONFIG_SYS_ICACHE_OFF
	bic	r0, r0, #0x00001000	@ clear bit 12 (I) I-cache
#else
	orr	r0, r0, #0x00001000	@ set bit 12 (I) I-cache
#endif
	mcr	p15, 0, r0, c1, c0, 0
        
        
                
        
    B main

