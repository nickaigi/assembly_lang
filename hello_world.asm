section .text
	global _start     ; must be delcalred entry point for linker

_start:     ; start here
	mov edx, len       ; message length
	mov ecx, msg       ; message to write
	mov ebx, 1         ; file descriptor (stdout)
	mov eax, 4         ; system call number (sys_write)
	int 0x80           ; call kernel

	mov eax, 1         ; system call number (sys_exit)
	int 0x80           ; call kernel

section .data             ; constants
msg db 'Hello World!', 0xa    ; string to print
len equ $ - msg  ; length of string


