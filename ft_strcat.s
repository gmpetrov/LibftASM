global _ft_strcat

segment .bss

tmp: resd 1

segment .text

_ft_strcat:
	cmp rdi, 0
	jle null
	push rdi
	mov rbx, rsi
	
loop1:
	cmp byte[rdi], 0
	jmp loop2
	inc rdi
	jmp loop1

loop2:
	cmp byte[rbx], 0
	je end
	mov rax, [rbx]
	mov [rdi], rax
	inc rdi
	inc rbx
	jmp loop2

end:
		mov byte[rdi], 0
		pop rdi
		mov rax, rdi
		ret
null:
	mov rax, 0
	ret
