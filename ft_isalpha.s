# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalpha.asm                                     :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gpetrov <gpetrov@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/01/27 17:19:13 by gpetrov           #+#    #+#              #
#    Updated: 2015/01/27 18:19:51 by gpetrov          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_isalpha

segment .text

_ft_isalpha:	cmp rdi, 'A'
				jl false
				cmp rdi, 'z'
				jg false
				cmp rdi, 'Z'
				jle true
				cmp rdi, 'a'
				jge true

false:	mov rax, 0
		ret
true:	mov rax, 1
		ret
