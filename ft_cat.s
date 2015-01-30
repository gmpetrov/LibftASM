global _ft_cat

;extern _read

extern _ft_bzero

section .data
buf times 1 db 0
bufsize equ $ - buf

segment .text

_ft_cat:
	push rdi
loop:
	pop rdi
	lea rsi, [rel buf]
	mov rdx, bufsize
	mov rax, 0x2000003
	syscall
	jc end
	cmp rax, 0
	jle end
	push rdi
	mov rdi, 1
	lea rsi, [rel buf]
	mov rdx, bufsize
	mov rax, 0x2000004
	syscall
	jc end
	jmp loop
end:
	ret
