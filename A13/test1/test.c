/*
A13 init, Laurent 08/2012

Build instructions:

make
fel write 0x2000 output/test.bin
fel exe 0x2000

uart is configured for 115200,8,N,1

*/

#define SUN5I

#include "io.h"
#include "gpio.h"
#include "sys_proto.h"
#include "timer.h"
#include "clock.h"
#include "early_print.h"
#include "dram.h"

int watchdog_init(void)
{
	struct sunxi_wdog *wdog =
		&((struct sunxi_timer_reg *)SUNXI_TIMER_BASE)->wdog;
	/* disable watchdog */
	writel(0, &(wdog->mode));

	return 0;
}


int clock_init(void)
{
	struct sunxi_ccm_reg *ccm =
		(struct sunxi_ccm_reg *)SUNXI_CCM_BASE;


/* pll1
 *       \          2:1           2:1           2:1
 *         cpu-clk ----> axi-clk ----> ahb-clk ----> apb0-clk
 *       /
 * osc24m
 */




	/* set clock source to OSC24M */
	sr32(SUNXI_CCM_CPU_AHB_APB0_CFG, 16, 2, CPU_CLK_SRC_OSC24M);		/* CPU_CLK_SRC_SEL [17:16] */

	/* set the pll1 factors, pll1 out = 24MHz*n*k/m/p */	

	sr32(SUNXI_CCM_PLL1_CFG, 8, 5, PLL1_FACTOR_N);		/* PLL1_FACTOR_N [12:8] */
	sr32(SUNXI_CCM_PLL1_CFG, 4, 2, PLL1_FACTOR_K);		/* PLL1_FACTOR_K [5:4] */
	sr32(SUNXI_CCM_PLL1_CFG, 0, 2, PLL1_FACTOR_M);		/* PLL1_FACTOR_M [1:0] */
	sr32(SUNXI_CCM_PLL1_CFG, 16, 2, PLL1_FACTOR_P);		/* PLL1_FACTOR_P [17:16] */
	
	/* wait for clock to be stable*/	
	sdelay(0x4000);

	/* set clock divider, cpu:axi:ahb:apb0 = 8:4:2:1 */
	sr32(SUNXI_CCM_CPU_AHB_APB0_CFG, 0, 2, AXI_DIV);	/* AXI_CLK_DIV_RATIO [1:0] */
	sr32(SUNXI_CCM_CPU_AHB_APB0_CFG, 4, 2, AHB_DIV);	/* AHB_CLK_DIV_RATIO [5:4] */
	sr32(SUNXI_CCM_CPU_AHB_APB0_CFG, 8, 2, APB0_DIV);	/* APB0_CLK_DIV_RATIO [9:8] */

	/* enable pll1 */
	sr32(&ccm->pll1_cfg, 31, 1, PLL1_ENABLE);		/* PLL1_ENABLE [31] */
	sdelay(0x1000);

	/* change cpu clock source to pll1 */
	sr32(SUNXI_CCM_CPU_AHB_APB0_CFG, 16, 2, CPU_CLK_SRC_PLL1);/* CPU_CLK_SRC_SEL [17:16] */
	/* 
	 * if the clock source is changed,
	 * at most wait for 8 present running clock cycles
	 */
	sdelay(10);

	/* config apb1 clock */
	sr32(SUNXI_CCM_APB1_CLK_DIV, 24, 2, APB1_CLK_SRC_OSC24M);
	sr32(SUNXI_CCM_APB1_CLK_DIV, 16, 2, APB1_FACTOR_N);
	sr32(SUNXI_CCM_APB1_CLK_DIV, 0, 5, APB1_FACTOR_M);

	/* Enable DMA clock */
	sr32(SUNXI_CCM_AHB_GATING0, AHB_GATE_OFFSET_DMA, 1, 1);

	return 0;
}

void gpio_init()
{
	u32 i;
	static struct sunxi_gpio *gpio_c =
		&((struct sunxi_gpio_reg *)SUNXI_PIO_BASE)->gpio_bank[SUNXI_GPIO_C];

}

/* do some early init */
void s_init(void)
{
     //	watchdog_init();
     //	sunxi_key_init();
	clock_init();
	gpio_init();
}


struct dram_para_t para;


int main(void)
{
     volatile uint32_t *pRAM = ((uint32_t *)0x40000000);
     int i,j,k,l;

     s_init();
     uart_init();

     uart_puts("\r\n\r\nTest has started !\r\n");

     // used bootinfo with OlinuxINO A13 boot0 from nand to get those info
     
     para.dram_clk = 408;
     para.dram_type = 3;
     para.dram_rank_num = 1;
     para.dram_chip_density = 4096;
     para.dram_io_width = 16;
     para.dram_bus_width = 16;
     para.dram_cas = 9;
     para.dram_zq = 123;
     para.dram_odt_en = 0;
     para.dram_size = 512;
     para.dram_tpr0 = 0x42d899b7;
     para.dram_tpr1 = 0xa090;
     para.dram_tpr2 = 0x22a00;
     para.dram_tpr3 = 0;
     para.dram_tpr4 = 0;
     para.dram_tpr5 = 0;
     para.dram_emr1 = 0;
     para.dram_emr2 = 0x10;
     para.dram_emr3 = 0;
     DRAMC_init(&para);


	sdelay(0x100000);
     uart_puts("DRAM INITED!\r\n");
     
     /*
       // print clock registers
     for (i = 0; i < 0x48; i ++)
          {
               volatile uint32_t *pReg = (uint32_t *)SUNXI_CCM_BASE;
               printf("%02X : %08X\r\n",i*4,pReg[i]);
          }
     */

     // fill & verify DDR3 
// #define VERIFY_RAM 1
#ifdef VERIFY_RAM

     k = 0;
	 l = 0;
     printf("writing 512MB... (1 dot per MB)\r\n\r\n");
     for (j = 0; j < 512; j++)
          {
               for (i = 0; i < 1024*1024/4; i++)
                    pRAM[k++] = k;
               uart_puts(".");
               if(l++ % 80 == 0)
                   uart_puts("\r\n");
          }

	 l=0;
     printf("\r\n\r\nverifying...\r\n\r\n");
     for (j = 0; j < 512; j++)
          {
               for (i = 0; i < 1024*1024/4; i++)
                    if (i != pRAM[i])
                         {
                              printf("Error @ SDRAM offset 0x%08X\r\n",i);
                              return -1;
                         }
               uart_puts(".");
               if(k++ % 80 == 0)
                   uart_puts("\r\n");
          }
    printf("\r\n");
#endif
     printf("DONE.\r\n");

     return 0;
}
