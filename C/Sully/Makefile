#* ************************************************************************** *#
#*                                                                            *#
#*                                                        :::      ::::::::   *#
#*   Makefile                                           :+:      :+:    :+:   *#
#*                                                    +:+ +:+         +:+     *#
#*   By: bhamidi <bhamidi@student.42.fr>            +#+  +:+       +#+        *#
#*                                                +#+#+#+#+#+   +#+           *#
#*   Created: 2018/07/31 17:26:48 by bhamidi           #+#    #+#             *#
#*   Updated: 2018/08/01 19:26:04 by bhamidi          ###   ########.fr       *#
#*                                                                            *#
#* ************************************************************************** *#

NAME	= Sully
CC	= gcc
CFLAGS	= -Werror -Wextra -Wall

SRC	= Sully.c
OBJ	= $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $@

%.o:%.c
	$(CC) -c $(CFLAGS) -o $@ $<

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

delete:
	rm -rf Sully_*

re: fclean all

.PHONY: all fclean clean re
