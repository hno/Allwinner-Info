/*
 * (C) Copyright 2007-2012
 * Allwinner Technology Co., Ltd. <www.allwinnertech.com>
 * Tom Cubie <tangliang@allwinnertech.com>
 *
 * Early uart print for debugging.
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

#include "common.h"
#include "early_print.h"
#include "gpio.h"
#include "clock.h"

static int uart0_initialized = 0;

static int init_uart_clock(void)
{
	/* config apb1 clock */
	sr32(SUNXI_CCM_APB1_CLK_DIV, 24, 2, APB1_CLK_SRC_OSC24M);
	sr32(SUNXI_CCM_APB1_CLK_DIV, 16, 2, APB1_FACTOR_N);
	sr32(SUNXI_CCM_APB1_CLK_DIV, 0, 5, APB1_FACTOR_M);
}

//#define UART0_INPUT_SD 1
void uart0_init(void) {

	/* select dll dlh */
	writel(0x80, UART0_LCR);
	/* set baudrate */
	writel(0, UART0_DLH);
	writel(BAUD_115200, UART0_DLL);
	/* set line control */
	writel(LC_8_N_1, UART0_LCR);

	init_uart_clock();

	/* open the clock for uart0 */
     //bit16, gating APB clock for UART0, 0-mask, 1-pass
	sr32(SUNXI_CCM_APB1_GATING, 16, 1, CLK_GATE_OPEN);

	/* set GPF2,4 as uart0 tx,rx */
	sunxi_gpio_set_cfgpin(SUNXI_GPF(2), SUNXI_GPF2_UART0_TX);
#ifndef UART0_INPUT_SD
	sunxi_gpio_set_cfgpin(SUNXI_GPF(4), SUNXI_GPF4_UART0_RX);
#else
	sunxi_gpio_set_cfgpin(SUNXI_GPF(4), 0);
#endif
     
	/* config uart pin */
	sunxi_gpio_set_cfgpin(SUNXI_GPB(22), SUNXI_GPB22_UART0_TX);
#ifdef UART0_INPUT_SD
	sunxi_gpio_set_cfgpin(SUNXI_GPB(23), SUNXI_GPB23_UART0_RX);
#else
	sunxi_gpio_set_cfgpin(SUNXI_GPB(23), 0);
#endif

	uart0_initialized = 1;
}

#define TX_READY (readl(UART0_LSR) & (1 << 6))

void uart0_putc(char c) {

	while(!TX_READY)
		;
	writel(c, UART0_THR);
}

void uart0_puts(const char *s) {

	while(*s)
		uart0_putc(*s++);
}


static int uart1_initialized = 0;

void uart1_init(void) {

	/* select dll dlh */
	writel(0x80, UART1_LCR);
	/* set baudrate */
	writel(0, UART1_DLH);
	writel(BAUD_115200, UART1_DLL);
	/* set line control */
	writel(LC_8_N_1, UART1_LCR);

	init_uart_clock();

	/* open the clock for uart1 */
     //bit17, gating APB clock for UART1, 0-mask, 1-pass
	sr32(SUNXI_CCM_APB1_GATING, 17, 1, CLK_GATE_OPEN);

     // uart1 pins
     sunxi_gpio_set_cfgpin(SUNXI_GPG(3), 4);
     sunxi_gpio_set_cfgpin(SUNXI_GPG(4), 4);

	uart1_initialized = 1;
}

#define TX_READY1 (readl(UART1_LSR) & (1 << 6))

void uart1_putc(char c) {

	while(!TX_READY1)
		;
	writel(c, UART1_THR);
}

void uart1_puts(const char *s) {

	while(*s)
		uart1_putc(*s++);
}

void uart_init(void) {
	uart0_init();
	uart1_init();
	return 0;
}

void uart_putc(char c) {
	if (uart0_initialized)
		uart0_putc(c);
	if (uart1_initialized)
		uart1_putc(c);
}

void uart_puts(const char *s) {

	while(*s)
		uart_putc(*s++);
}
