sectoin .bss              ; block starting sysmbol
	; variables

section .data             ; constants
	hello: db "Hello World!", 10    ; string to print
	helloLen: equ $-hello  ; length of string

section .text
	global _start     ; entry point for linker

	_start:     ; start here
		mov rax, 1      ; 1 == sys_write
		mov rdi, 1      ; 1 == stdout
		mov rsi, hello  ; message to write
		syscall         ; call kernel to execute
		; end program
		mov rax, 60     ; sys_exit
		mov rdi, 0      ; error_code 0 (success)
		syscall         ; call kernel to execute
