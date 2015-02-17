# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jrivaux <jrivaux@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/02/17 13:36:51 by jrivaux           #+#    #+#              #
#    Updated: 2015/02/17 15:28:28 by jrivaux          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a

FLAGS = -f macho64

CC = ~/.brew/bin/nasm $(FLAGS)

SRC = 	ft_min.s\
		ft_isupper.s\
		ft_islower.s\
		ft_isalpha.s

OBJ = $(SRC:.s=.o)

all : $(NAME)

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)
	ranlib $(NAME)

%.o: %.s
	$(CC) -o $@ $< 

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re