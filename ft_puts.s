# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_puts.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gpetrov <gpetrov@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/01/28 18:05:16 by gpetrov           #+#    #+#              #
#    Updated: 2015/01/29 15:18:39 by gpetrov          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_puts

extern _ft_strlen
default rel

section .data
carriageReturn: db 0x0a

segment .text
_ft_puts:
	call _ft_strlen
	mov rdx, rax
	mov rcx, rdi
	mov rax, 0x2000004
	mov rdi, 1
	mov rsi, rcx
	syscall	
	
	mov rax, 0x2000004
	mov rdi, 1
	lea rsi, [carriageReturn]
	mov rdx, 1
	syscall
	ret
