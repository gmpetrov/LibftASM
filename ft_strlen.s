global _ft_strlen

segment .text

_ft_strlen:
	cmp rdi, 0
	je null
	mov rbx, rdi
	mov rax, 0

loop:
	cmp byte[rbx], 0
	je end
	inc rax
	inc rbx
	jmp loop

end:
	ret

null:
	mov rax, 0
	ret
