# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isascii.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gpetrov <gpetrov@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/01/27 20:04:30 by gpetrov           #+#    #+#              #
#    Updated: 2015/01/27 20:08:47 by gpetrov          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_isascii

segment .text

_ft_isascii:
	cmp rdi, 0
	jl false
	cmp rdi, 127
	jg false

true:
	mov rax, 1
	ret
false:
	mov rax, 0
	ret
