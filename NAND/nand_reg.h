/*
 * (C) Copyright 2007-2012
 * Allwinner Technology Co., Ltd. <www.allwinnertech.com>
 *
 * See file CREDITS for list of people who contributed to this
 * project.
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of
 * the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
 * MA 02111-1307 USA
 */
#ifndef _NAND_REG_H_
#define _NAND_REG_H_


#define USE_PHYSICAL_ADDRESS
#define DRAM_BASE 		0x40000000
#define SRAM_BASE 		0x00000000


/*
*********************************************************************************************************
*   Nand Flash Controller define          < maintained by Richard >
*********************************************************************************************************
*/
extern unsigned int nand_reg_address;

#define NFC_REG_BASE_ADDR 0x01c03000


#define NAFC_REGS_BASE	 (nand_reg_address )

/* offset */
#define NFC_REG_CTL              0x0000	Control register
#define NFC_REG_ST               0x0004 Status register
#define NFC_REG_INT              0x0008 Interrupt mask
#define NFC_REG_TIMING_CTL       0x000C Timing control
#define NFC_REG_TIMING_CFG       0x0010 Timing configuration
#define NFC_REG_ADDR_LOW         0x0014 Low 4 address bytes
#define NFC_REG_ADDR_HIGH        0x0018 High 4 address bytes
#define NFC_REG_SECTOR_NUM       0x001C Number of sectors to transfer in page command. 0-0x1f
#define NFC_REG_CNT              0x0020 Transfer size, 0-0x3ff, 0 == 400?
#define NFC_REG_CMD              0x0024 Command & flags
#define NFC_REG_RCMD_SET         0x0028 Commands
#define NFC_REG_WCMD_SET         0x002C Commands
#define NFC_REG_IO_DATA          0x0030 DMA I/O register
#define NFC_REG_ECC_CTL          0x0034	ECC & Random control
#define NFC_REG_ECC_ST           0x0038 ECC failure status
#define NFC_REG_DEBUG            0x003C ??? 0x17f can be set
#define NFC_REG_ECC_CNT0         0x0040 ECC correction counts
#define NFC_REG_ECC_CNT1         0x0044 ECC correction counts
#define NFC_REG_ECC_CNT2         0x0048	ECC correction counts
#define NFC_REG_ECC_CNT3         0x004C ECC correction counts
#define NFC_REG_USER_DATA_BASE   0x0050 User data region, 0x40 octets
#define NFC_REG_EFNAND_STATUS    0x0090 ???
#define NFC_REG_SPARE_AREA       0x00A0 ??? 0000-FFFF. Probably SRAM offset
#define NFC_REG_PATTERN_ID       0x00A4 ??? Always 0x5555
#define NFC_RAM0_BASE            0x0400 1KB SRAM buffer
#define NFC_RAM1_BASE            0x0800 1KB SRAM buffer

/*define bit use in NFC_CTL*/
#define NFC_CTL_EN		(1 << 0) Enable controller
#define NFC_CTL_RESET		(1 << 1) Reset controller
#define NFC_CTL_BUS_WIDYH	(1 << 2) 0 = 8 Bit, only possible width on A10.
#define NFC_CTL_RB_SEL		(1 << 3) Which R/B pin to montior in cmd WAIT_FLAG
#define NFC_CTL_CE_CTL		(1 << 6)  Force CE# active
#define NFC_CTL_CE_CTL1		(1 << 7)  ??
#define NFC_CTL_PAGE_SIZE	(0xf << 8) NAND page size. For ECC? 0 = 1K, 1=2K, 2=4K, ...
#define NFC_CTL_SAM		(1 << 12) SAM0 / SAM1. Serial Access Mode? Not sure
#define NFC_CTL_RAM_METHOD	(1 << 14) ???
				(1 << 15) ???
				(1 << 16) ???
				(1 << 17) ???
				(1 << 18) ???
				(1 << 19) ???
				(1 << 20) ???
				(1 << 21) ???
#define NFC_CTL_CE_SEL		(7 << 24) Wich CE pin to drive, 0-7
#define NFC_CTL_DEBUG_CTL	(1 << 31) ??? Always 0.

/*define	bit use in NFC_ST*/
#define NFC_ST_RB_B2R		(1 << 0)	R/B to ready transition
#define NFC_ST_CMD_INT_FLAG	(1 << 1)	Command completed
#define NFC_ST_DMA_INT_FLAG	(1 << 2)	Transfer completed
#define NFC_ST_CMD_FIFO_STATUS	(1 << 3)	Command FIFO can accept new command.
#define NFC_ST_STA		(1 << 4)	???
#define NFC_ST_NATCH_INT_FLAG	(1 << 5)	???
#define NFC_ST_RB_STATE0	(1 << 8)	Curremt status of R/B0
#define NFC_ST_RB_STATE1	(1 << 9)	Current status of R/B1
#define NFC_ST_RB_STATE2	(1 << 10)	N/A
#define NFC_ST_RB_STATE3	(1 << 11)	N/A

/*bits use in NFC_TIMINIG_CTL */
				(0x3f << 0)	???
				(0xf << 8)	???

/*bits use in NFC_TIMING_CFG */
				(3 << 0) ??? After command
				(3 << 12) CE->CLE
				(0x3ffff << 0)	???

/*define bit use in NFC_INT*/
#define NFC_INT_B2R_ENABLE	(1 << 0)
#define NFC_INT_CMD_ENABLE	(1 << 1)
#define NFC_INT_DMA_ENABLE	(1 << 2)

/*define bit use in NFC_CMD*/
#define NFC_CMD_CMD1 		(0xff << 0)	Normal command byte CMD1
#define NFC_CMD_HIGH_BYTE	(0xff << 8)	???
#define NFC_CMD_ADR_NUM		(0x7 << 16)	Address cycles - 1, iv SEND_ADDR is enabled.
#define NFC_CMD_SEND_ADR	(1 << 19)	Send address cycles
#define NFC_CMD_ACCESS_DIR	(1 << 20)	??? Read or Write?
#define NFC_CMD_DATA_TRANS	(1 << 21)	If there is a data transfer part of the command
#define NFC_CMD_SEND_CMD1	(1 << 22)	If normal command byte shuold be sent
#define NFC_CMD_WAIT_FLAG	(1 << 23)	If the controller should wait for R/B after sending command
#define NFC_CMD_SEND_CMD2	(1 << 24)	If CMD2 command byte should be sent (0x28 bits 0xff << 0)
#define NFC_CMD_SEQ		(1 << 25)	???
#define NFC_CMD_DATA_SWAP_METHOD (1 << 26)	???
#define NFC_CMD_ROW_AUTO_INC	(1 << 27)	???
#define NFC_CMD_SEND_CMD3	(1 << 28)	If CMD3 command byte should be sent (0x2c bits 0xff << 24)
#define NFC_CMD_SEND_CMD4	(1 << 29)	If CMD4 command byte should be sent (0x2c bits 0xff << 16)
#define NFC_CMD_CMD_TYPE	(3 << 30)	Command type

#define NFC_CMD_TYPE_SIMPLE  0	Normal command
#define NFC_CMD_TYPE_ECC     1	ECC fetch
#define NFC_CMD_TYPE_PAGECMD 2	Page oriented command, random read data & ecc. DMA only?
#define NFC_CMD_TYPE_3       3  ?? No effect. Command not run.

/* define bit use in NFC_RCMD_SET*/
#define NFC_RCMD_CMD2		(0xff<< 0)
#define NFC_RCMD_RANDOM_READ_CMD0 	(0xff << 8)	RR_CMD0+1 is used by controller to seek during ECC calculations
#define NFC_RCMD_RANDOM_READ_CMD1 	(0xff << 16)	1. Read first data sector
						2. Seek using RR_CMD0 <col> RR_CMD1 to Read ECC data
						3. Seek using RR_CMD0 <col> RR_CMD1 to read next data sector
						4. Seek using RR_CMD0 <col> RR_CMD1 to Read ECC data
						[...]
						 

/*define bit use in NFC_WCMD_SET*/
#define NFC_WCMD_PROGRAM_CMD		(0xff << 0)
#define NFC_WCMD_RANDOM_WRITE_CMD	(0xff << 8)
#define NFC_WCMD_CMD4			(0xff << 16)	Sent if SEND_CMD4 is set
#define NFC_WCMD_CMD3		        (0xff << 24)	Sent if SEND_CMD3 is set

/*define bit use in NFC_ECC_CTL*/
#define NFC_ECC_CTL_ECC_EN		(1 << 0)
#define NFC_ECC_CTL_ECC_PIPELINE	(1 << 3)
#define NFC_ECC_CTL_ECC_EXCEPTION       (1 << 4)
#define NFC_ECC_CTL_ECC_BLOCK_SIZE	(1 << 5)
#define NFC_ECC_CTL_RANDOM_EN           (1 << 9)
#define NFC_ECC_CTL_RANDOM_DIRECTION    (1 << 10)
					(1 << 11) ??
#define NFC_ECC_CTL_ECC_MODE		(0xf << 12)
#define NFC_ECC_CTL_RANDOM_SEED         (0x7fff << 16))

#define NFC_IRQ_MAJOR		13
