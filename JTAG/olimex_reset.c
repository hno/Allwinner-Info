/* simple.c

   Simple libftdi usage example

   This program is distributed under the GPL, version 2
*/

#include <stdio.h>
#include <unistd.h>
#include <ftdi.h>

#define OLIMEX_DBUS_TCK		(1<<0)
#define OLIMEX_DBUS_TDI		(1<<1)
#define OLIMEX_DBUS_TDO		(1<<2)
#define OLIMEX_DBUS_TMS		(1<<3)
#define OLIMEX_DBUS_DBUS4	(1<<4)	// ouput 0
#define OLIMEX_DBUS_DBUS5	(1<<5)  // unused
#define OLIMEX_DBUS_DBUS6	(1<<6)  // unused
#define OLIMEX_DBUS_DBUS7	(1<<7)  // unused

#define OLIMEX_CBUS_nTRST	(1<<0)
#define OLIMEX_CBUS_nSRST	(1<<1)
#define OLIMEX_CBUS_nTRSTnOE	(1<<2)
#define OLIMEX_CBUS_LED		(1<<3)

static void write_ftdi_command(struct ftdi_context *ftdic, unsigned char cmd, unsigned char data, unsigned char direction)
{
	unsigned char buf[3] = {cmd, data, direction};
	ftdi_write_data(ftdic, buf, sizeof(buf));
}

int main(void)
{
    int ret;
    struct ftdi_context ftdic;
    if (ftdi_init(&ftdic) < 0)
    {
        fprintf(stderr, "ftdi_init failed\n");
        return EXIT_FAILURE;
    }

    if ((ret = ftdi_usb_open(&ftdic, 0x15ba, 0x002a)) < 0)
    {
        fprintf(stderr, "unable to open ftdi device: %d (%s)\n", ret, ftdi_get_error_string(&ftdic));
        return EXIT_FAILURE;
    }

    // Read out FTDIChip-ID of R type chips
    if (ftdic.type == TYPE_R)
    {
        unsigned int chipid;
        printf("ftdi_read_chipid: %d\n", ftdi_read_chipid(&ftdic, &chipid));
        printf("FTDI chipid: %X\n", chipid);
    }

    ftdi_set_bitmode(&ftdic, 0x0b, BITMODE_MPSSE); /* ctx, JTAG I/O mask */

    write_ftdi_command(&ftdic, SET_BITS_LOW, 0x00, 0x00);
    write_ftdi_command(&ftdic, SET_BITS_HIGH, OLIMEX_CBUS_nSRST, OLIMEX_CBUS_nSRST|OLIMEX_CBUS_LED);
    usleep(100);
    write_ftdi_command(&ftdic, SET_BITS_HIGH, OLIMEX_CBUS_LED, OLIMEX_CBUS_nSRST|OLIMEX_CBUS_LED);

    if ((ret = ftdi_usb_close(&ftdic)) < 0)
    {
        fprintf(stderr, "unable to close ftdi device: %d (%s)\n", ret, ftdi_get_error_string(&ftdic));
        return EXIT_FAILURE;
    }

    ftdi_deinit(&ftdic);

    return EXIT_SUCCESS;
}

