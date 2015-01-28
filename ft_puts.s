# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_puts.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gpetrov <gpetrov@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/01/28 18:05:16 by gpetrov           #+#    #+#              #
#    Updated: 2015/01/28 18:19:57 by gpetrov          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_puts

segment .text

_ft_puts:
	mov rax, 4           ; the system interprets 4 as "write"
	mov rbx, 1           ; standard output (print to terminal)
	mov rcx, test    ; pointer to the value being passed
	mov rdx, 1           ; length of output (in bytes)
	int 0x80  
	mov rax, 1
	ret
