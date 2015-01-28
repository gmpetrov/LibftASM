# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isprint.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gpetrov <gpetrov@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/01/27 20:11:43 by gpetrov           #+#    #+#              #
#    Updated: 2015/01/28 12:33:05 by gpetrov          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_isprint

segment .text

_ft_isprint:
	cmp rdi, 32
	jl false
	cmp rdi, 127
	jg false

true:
	mov rax, 1
	ret
false:
	mov rax, 0
	ret
