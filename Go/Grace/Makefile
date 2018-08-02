#* ************************************************************************** *#
#*                                                                            *#
#*                                                        :::      ::::::::   *#
#*   Makefile                                           :+:      :+:    :+:   *#
#*                                                    +:+ +:+         +:+     *#
#*   By: bhamidi <bhamidi@student.42.fr>            +#+  +:+       +#+        *#
#*                                                +#+#+#+#+#+   +#+           *#
#*   Created: 2018/07/31 17:26:48 by bhamidi           #+#    #+#             *#
#*   Updated: 2018/08/02 22:56:23 by bhamidi          ###   ########.fr       *#
#*                                                                            *#
#* ************************************************************************** *#

NAME	= Grace
CC	= go
CFLAGS	= build

SRC	= Grace.go
OBJ	= $(SRC:.c=.o)

all: $(NAME)

$(NAME):
	$(CC) $(CFLAGS) -o $@ $(SRC)

clean:

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all fclean clean re
