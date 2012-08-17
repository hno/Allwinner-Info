#include <stdio.h>
#include "common.h"
#include "ccmu_regs.h"

int main(int argc, char **argv)
{
	char buf[0x400];
	__ccmu_reg_list_t *p = (void *)buf;

	fread(buf, 1, 0x400, stdin);
}
