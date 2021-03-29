BITS 64

global _main

section .rodata

	file db "chmod.o"

section .text

_main:
	mov rax, 90
	mov rdi, file
	mov rsi, 777
	syscall
	jmp _exit

_exit:
	mov rax, 0x3C
	mov rsi, 0
	syscall
