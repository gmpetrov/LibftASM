# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gpetrov <gpetrov@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/01/27 17:09:38 by gpetrov           #+#    #+#              #
#    Updated: 2015/01/27 18:53:02 by gpetrov          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# NAME 	= libfts.a
# 
# SRC_DIR = srcs
# 
# OBJ_DIR = srcs/.obj
# 
# SRC_FILES = $(shell find $(SRC_DIR) -type f -print | grep "\.s")
# 
# FILES 	= ft_isalpha.s
# 
# OBJS	= ${$(SRC_DIR)/:.s=$(SRC_DIR)/$(OBJ_DIR)/.o}
# 
# FLAGS	= -f macho64
# 
# GCC_FLAGS 	= -Wall -Wextra -Werror -O3
# 
# all: $(NAME)
# 
# $(NAME): $(OBJS)
# 		@ar rc $(NAME) $(OBJS)
# 		@ranlib $(NAME)
# 		@echo "\n\n > Compiling LibftASM [\033[32mDONE\033[m]"
# 		gcc $(GCC_FLAGS) main.c -L .
# 
# %.o: %.s
# 	@nasm -f macho64 $(FILES)
# 	@echo -n .
# 
# clean:
# 	@rm -f $(OBJS)
# 
# fclean: clean
# 	@rm -f $(NAME)
# 
# re: fclean all
# .PHONY: all clean fclean re


NAME = libfts.a

C_DIR = srcs
O_DIR = o

ifeq ($(shell uname),Linux)
		FLAGS = -f elf64 -DLINUX
	else
		FLAGS = -f macho64 --prefix _
	endif

C_FILES = $(shell find $(C_DIR) -type f -print | grep "\.s")
C_DIRS = $(shell find $(C_DIR) -type d -print)

O_DIRS = $(C_DIRS:$(C_DIR)/%=$(O_DIR)/%)
	O_FILES = $(C_FILES:$(C_DIR)/%.s=$(O_DIR)/%.o)

all: $(NAME)

$(NAME): $(O_FILES)
	@ar -rcs $@ $^ && printf "\033[0;32m" || printf "\033[0;31m"
	@printf "%-34s \033[1;30m<<--\033[0;0m\n" "$@"
	gcc -Wall -Wextra -Werror -O3 main.c -L .

$(O_DIR)/%.o: $(C_DIR)/%.s
	@mkdir -p $(O_DIRS) $(O_DIR) 2> /dev/null || echo "" > /dev/null
	@nasm $(FLAGS) -o $@ $< \
		&& printf "\033[0;0m%-34s\033[1;30m -->>\t\033[0;32m$@\033[0;0m\n" "$<" \
			|| (printf "\033[0;0m%-34s\033[1;30m -->>\t\033[0;31m$@\033[0;0m\n" "$<" \
					&& exit 1)

clean:
	@rm $(O_FILES) 2> /dev/null || echo "" > /dev/null
	@rmdir $(O_DIRS) $(O_DIR) 2> /dev/null || echo "" > /dev/null

fclean: clean
	@rm $(NAME) 2> /dev/null || echo "" > /dev/null
	@rm $(TEST) 2> /dev/null || echo "" > /dev/null
	rm -rf a.out

re: fclean all

.PHONY: all clean fclean re
