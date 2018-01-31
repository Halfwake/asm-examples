	.section .data
	.section .text
	.globl _start
_start:
	movl $111, %eax
	call binary_to_bcd
	movl %eax, %ebx
	movl $1, %eax
	int $0x80

binary_to_bcd:
	movl $0, %edx
	movl $100, %ecx
	div %ecx
	movl %eax, %ebx
	movl %edx, %eax
	shl $4, %ebx

	movl $0, %edx
	movl $10, %ecx
	div %ecx
	or %eax, %ebx
	shl $4, %ebx	

	or %edx, %ebx
	mov %ebx, %eax
	ret
	
