global _ft_toupper
extern _ft_isalpha

segment .text

_ft_toupper:
    call _ft_isalpha
    cmp rax, 0
    je false
    cmp rdi, 97
    jl false

true:
    mov rax, rdi
    sub rax, 32
    ret

false:
    mov rax, rdi
    ret
