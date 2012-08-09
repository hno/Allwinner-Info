CURRENTDIR	= .
SRCDIR		= $(CURRENTDIR)/.
OUTPUTDIR	= $(CURRENTDIR)/output


# Linker script 
MEMORY_LAYOUT = ./test.ld

# Output ELF image
BLINK_LED_ELF	= $(OUTPUTDIR)/test.elf

# Output binary image
BLINK_LED_BIN	= $(OUTPUTDIR)/test.bin

CROSS_COMPILE ?= arm-none-eabi-

AS	= $(CROSS_COMPILE)as
CC	= $(CROSS_COMPILE)gcc
LD	= $(CROSS_COMPILE)gcc
CPP = $(CROSS_COMPILE)cpp
STRIP = $(CROSS_COMPILE)strip
OBJCOPY = $(CROSS_COMPILE)objcopy
OBJDUMP = $(CROSS_COMPILE)objdump
NM	= $(CROSS_COMPILE)nm



NO_OS_DIR = .
INCLUDEDIR = -I. 
LIB_PATH = $(NO_OS_DIR)/libs/

LIBGCCDIR = $(dir $(shell $(CC) -print-libgcc-file-name))

#CFLAGS 	= -O -ffunction-sections -fdata-sections -Wall $(INCLUDEDIR) -I"c:/program files/codesourcery/sourcery g++ lite/arm-none-eabi/include" -I"C:\Program Files\CodeSourcery\Sourcery G++ Lite\lib\gcc\arm-none-eabi\4.4.1\include"
#CFLAGS 	= -O -ffunction-sections -fdata-sections -Wall $(INCLUDEDIR)
CFLAGS 	= -Os -ffreestanding -Wall $(INCLUDEDIR)


 

#LDFLAGS = -static -nostdlib -T $(BOOT_LAYOUT_OUT) -L$(LIBGCCDIR) -lgcc
LDFLAGS = -O -T$(MEMORY_LAYOUT) -L$(LIB_PATH) $(NO_OS_LIBS) -nostartfiles #--gc-sections


# Generic code
SRC_OBJS = util_printf.o dram.o entry.o syslib.o early_print.o gpio.o test.o

NO_OS_LIBS =

BLINK_LED_OBJS = $(addprefix $(SRCDIR)/, $(SRC_OBJS))
 
# Default goal
.PHONY: all
all: build



#
# Define an implicit rule for assembler files
# to run them through C preprocessor
#
%.o: %.S
	$(CC) -c $(CFLAGS) -D__ASSEMBLY__ -o $@ $<

%.o: %.c
	$(CC) -c $(CFLAGS) -o $@ $<

#
# Make targets
#
.PHONY: build build_prep clean

build: build_prep $(BLINK_LED_BIN)

build_prep:
	mkdir -p $(OUTPUTDIR)

clean:
	@echo Cleaning...
	@echo Files:
	rm -rf $(BLINK_LED_OBJS) $(BOOT_LAYOUT_OUT)
	@echo Build output:
	rm -rf $(OUTPUTDIR)
	rm -rf *.h~
	rm -rf *.c~
	rm -rf *.S~
	rm -rf *.s~

##	
## Rules to build linux_prep image
## 
#$(CMDLINES_STRIP): $(CMDLINES)
#	$(call strip_cmdlines_file)

$(BLINK_LED_BIN): $(BLINK_LED_ELF)
	$(OBJCOPY) -O binary $< $@
#$(OBJCOPY) -R -S -O binary -R .note -R .note.gnu.build-id -R .comment $< $@
#elf2bin -a -i ./output/test.elf -o firmware.bin

#$(BLINK_LED_ELF): $(BLINK_LED_OBJS) $(BOOT_LAYOUT_OUT)
$(BLINK_LED_ELF): $(BLINK_LED_OBJS)
	$(LD) -o $@ $(BLINK_LED_OBJS) $(LDFLAGS) 
	$(NM) -n $@ > $@.map

#$(BOOT_LAYOUT_OUT): $(BOOT_LAYOUT_IN)
#	$(CPP) -P -DBASE_ADDR=$(BASE_ADDR) -o $@ $<

