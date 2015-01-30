global _ft_strlen

segment .text

_ft_strlen:
	push rdi
	xor rcx, rcx
	not rcx
	xor al, al
	cld
	repne scasb
	not rcx
	dec rcx
	mov rax, rcx
	pop rdi
	ret
