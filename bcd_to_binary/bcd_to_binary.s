	.section .data
	.section .text
	.globl _start

_start:
	movl $0xa, %eax
	shl $4, %eax
	or $0xa, %eax
	call bcd_to_binary
	movl %eax, %ebx
	movl $1, %eax
	int $0x80


bcd_to_binary:
	
