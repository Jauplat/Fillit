# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jauplat <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/17 15:53:07 by jauplat           #+#    #+#              #
#    Updated: 2018/04/25 14:41:14 by jauplat          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fillit
FLAG = -Wall -Wextra -Werror
OPTION = -o
LIBFT = ./libft/libft.a

FILE = 	adapt_coord_with_pos.c backtrack.c creat_list.c creat_tab_coord.c \
		creat_tab_minos.c erase_map_letter.c error.c fill_list.c fillit.c \
		ft_creat_map.c ft_free_map.c ft_put_minos.c ft_size_map.c \
		ft_valid_input.c main.c print_map.c solve.c

OBJ = $(FILE:.c=.o)

all: $(NAME)

$(NAME):
		cd libft && make && cd ..
		gcc $(FLAG) $(OPTION) $(NAME) $(LIBFT) $(FILE)
clean:
		cd libft && make clean && cd ..
		rm -rf $(OBJ)
fclean: clean
		cd libft && make fclean && cd ..
		rm -rf $(NAME)
re: fclean all
