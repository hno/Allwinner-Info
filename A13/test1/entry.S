
        .file   "entry.S"

        .global entry

        .text
	.code 32
	.section ".start", "ax"
entry:
	bl main
	bx lr
