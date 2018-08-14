#* ************************************************************************** *#
#*                                                                            *#
#*                                                        :::      ::::::::   *#
#*   Makefile                                           :+:      :+:    :+:   *#
#*                                                    +:+ +:+         +:+     *#
#*   By: bhamidi <bhamidi@student.42.fr>            +#+  +:+       +#+        *#
#*                                                +#+#+#+#+#+   +#+           *#
#*   Created: 2018/07/31 17:26:48 by bhamidi           #+#    #+#             *#
#*   Updated: 2018/08/01 14:00:32 by bhamidi          ###   ########.fr       *#
#*                                                                            *#
#* ************************************************************************** *#

NAME	= Colleen
CC	= nasm
GCC = gcc
CFLAGS	= -fmacho64

SRC	= Colleen.s
OBJ	= $(SRC:.s=.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(GCC) $(OBJ) -o $@

%.o:%.s
	$(CC) $(CFLAGS) $<

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all fclean clean re
