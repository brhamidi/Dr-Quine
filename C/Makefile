#* ************************************************************************** *#
#*                                                                            *#
#*                                                        :::      ::::::::   *#
#*   Makefile                                           :+:      :+:    :+:   *#
#*                                                    +:+ +:+         +:+     *#
#*   By: bhamidi <bhamidi@student.42.fr>            +#+  +:+       +#+        *#
#*                                                +#+#+#+#+#+   +#+           *#
#*   Created: 2018/07/31 17:26:48 by bhamidi           #+#    #+#             *#
#*   Updated: 2018/07/31 17:36:38 by bhamidi          ###   ########.fr       *#
#*                                                                            *#
#* ************************************************************************** *#

NAME	= Colleen
CC	= gcc
CFLAGS	= -Werror -Wextra -Wall

SRC	= Colleen.c
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

re: fclean all

.PHONY: all fclean clean re
