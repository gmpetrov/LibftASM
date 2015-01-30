global _ft_strnew

extern _ft_bzero
extern _malloc

segment .text

_ft_strnew:
	push rdi
	inc rdi
	call _malloc
	jc null
	pop rsi
	push rax
	dec rsi
	mov rdi, rax
	call _ft_bzero
	pop rax
	ret

null:
	mov rax, 0
	ret