# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ychagri <ychagri@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/10 18:50:43 by ychagri           #+#    #+#              #
#    Updated: 2023/11/14 23:55:52 by ychagri          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME =  libftprintf.a

CC = cc 

CFLAGS = -Wall -Wextra -Werror

ARC = ar rc

LIBRARY = ft_printf.h

SRC = ft_putchar.c ft_putnbr.c ft_putstr.c ft_hex.c ft_printf.c ft_putadd.c u.c \

OBJS = $(SRC:.c=.o)

all : $(NAME)

$(NAME) : $(OBJS)
		$(ARC) $(NAME) $(OBJS)
		
%.o : %.c	$(LIBRARY)
		$(CC) $(CFLAGS) -c $<

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re : fclean all 

.PHONY: clean all re fclean
