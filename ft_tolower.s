global _ft_tolower
extern _ft_isalpha

segment .text

_ft_tolower:
    call _ft_isalpha
    cmp rax, 0
    je false
    cmp rdi, 'Z'
    jg false

true:
    mov rax, rdi
    add rax, 32
    ret

false:
    mov rax, rdi
    ret
