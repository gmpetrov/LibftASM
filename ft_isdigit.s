# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isdigit.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gpetrov <gpetrov@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/01/27 18:55:22 by gpetrov           #+#    #+#              #
#    Updated: 2015/01/27 19:35:43 by gpetrov          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_isdigit

segment .text

_ft_isdigit:	cmp rdi, '0'
				jl false
				cmp rdi, '9'
				jg false
				jmp true


false:	mov rax, 0
		ret
true:	mov rax, 1
		ret
