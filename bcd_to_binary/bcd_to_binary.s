	.section .data
	.section .text
	.globl _start
_start:
	movl $18, %eax
	call bcd_to_binary
	movl %eax, %ebx
	movl $1, %eax
	int $0x80


bcd_to_binary:
	movl %eax, %ebx
	and $0xf0, %eax
	shr $1, %eax
	movl %eax, %edx
	shr $2, %edx
	add %edx, %eax
	and $0x0f, %ebx
	add %ebx, %eax
	ret
