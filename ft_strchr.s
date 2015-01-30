global _ft_strchr

extern _ft_strlen

segment .text

_ft_strchr:
	call _ft_strlen
	mov rcx, rax
	mov rax, rsi
	cld
	repne scasb
	test rcx, rcx
	jz no_match
	mov rax, rdi
	dec rax
	ret

no_match:
	mov rax, 0
	ret
