

OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
OUTPUT_ARCH(arm)
ENTRY(entry)


SECTIONS
{
	. = 0x00002000;
	. = ALIGN(32);
	.start : { KEEP(*(.start)) }
    .text : { KEEP(*(.text)) }

	. = ALIGN(32);
	.rodata : { KEEP(*(.rodata)) }

	. = ALIGN(32);
	.cmdlines : { KEEP(*(.cmdlines)) }

	. = ALIGN(32);
	.data : { KEEP(*(.data)) }

	. = ALIGN(32);
	.got : { KEEP(*(.got)) }

	. = ALIGN(32);
	_end = .;

	. = ALIGN(32);
	_bss_start = .;
	.bss : { KEEP(*(.bss*)) }
	. = ALIGN(32);
	_bss_end = .;

	_heap_start = .; 
}
