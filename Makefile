# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gpetrov <gpetrov@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/01/27 19:56:25 by gpetrov           #+#    #+#              #
#    Updated: 2015/01/29 19:25:23 by gpetrov          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

AC			=	nasm

CC			=	gcc

AFLAGS		=	-f macho64 -g

CFLAGS		=	-Wall -Werror -Wextra

NAME		=	libfts.a

TEST		=	test

SRC			=	main.c

OBJ_DIR 	=	obj

OBJ			=	$(addprefix obj/, $(SRC:.c=.o))

ASRC		=	ft_isalpha.s	\
				ft_isdigit.s	\
				ft_isalnum.s	\
				ft_isascii.s	\
				ft_isprint.s	\
				ft_toupper.s	\
            	ft_tolower.s	\
            	ft_bzero.s		\
				ft_strcat.s		\
				ft_strlen.s		\
				ft_puts.s		\
				ft_memset.s		\
				#ft_memcpy.s		\
				#ft_strdup.s		\
				#ft_cat.s

AOBJ		=	$(addprefix obj/, $(ASRC:.s=.o))

all:		$(NAME) $(TEST)

$(TEST):	$(OBJ) $(NAME)
	$(CC) -o $(TEST) $(SRC) $(NAME)


$(NAME):	$(AOBJ)
	ar -rc $(NAME) $(AOBJ)
	ranlib $(NAME)

obj/%.o:	%.c
	@mkdir -p obj
	$(CC) $(CFLAGS) -c $^ -o $@

obj/%.o:	%.s
	@mkdir -p obj
	$(AC) $(AFLAGS) -o $@ $^

clean:
	/bin/rm -rf $(AOBJ)
	/bin/rm -rf $(OBJ_DIR)

fclean:		clean
	/bin/rm -rf $(NAME)
	/bin/rm -rf $(TEST)

re:			fclean all

.PHONY:		all clean fclean re
