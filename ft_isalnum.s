# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalnum.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gpetrov <gpetrov@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/01/27 19:35:55 by gpetrov           #+#    #+#              #
#    Updated: 2015/01/27 19:49:10 by gpetrov          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_isalnum
extern _ft_isalpha
extern _ft_isdigit

segment .text

_ft_isalnum:
	call	_ft_isalpha
	cmp		rax, 1
	je true
	call	_ft_isdigit
	cmp		rax, 1
	je true

false:
	mov rax, 0
	ret
true:
	mov rax, 1
	ret
