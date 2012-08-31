
        .file   "entry.S"

        .global entry

        .text
	.code 32
	.section ".start", "ax"
entry:
	push {lr}
	bl main
	pop {lr}
	bx lr
