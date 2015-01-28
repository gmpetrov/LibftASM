global _ft_strcat

segment .bss

tmp: resd 1

segment .text

_ft_strcat:
    cmp rdi, 0
    je end
    mov rbx, rdi
    mov rbp, rsi

to_end_s1:
    cmp byte[rbx], 0
    je copy_s2
    inc rbx
    jmp to_end_s1

copy_s2:
    cmp byte[rbp], 0
    je end
    mov byte[rbx], 'X'
    inc rbx
    inc rbp

end:
    inc rbx
    mov byte[rbx], 0
    mov rax, rdi
    ret
