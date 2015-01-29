# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gpetrov <gpetrov@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/01/29 18:17:24 by gpetrov           #+#    #+#              #
#    Updated: 2015/01/29 18:51:36 by gpetrov          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

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
