# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jlucas-s <jlucas-s@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/07/27 21:46:29 by jlucas-s          #+#    #+#              #
#    Updated: 2022/08/10 02:21:46 by jlucas-s         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

GREEN				= \033[1;32m
NOCOLOR				= \033[0m

LIBFTPATH = ./lib
LIBFT = ./lib/libft.a

FLAGS = -Werror -Wall -Wextra
INCS = -I ./include

SRCS = ./srcs/ft_printf.c \
	   ./srcs/conversions.c \
	   ./srcs/utils.c \
	   ./srcs/pointercase.c \
	   ./srcs/hexcase.c \
	   
OBJS = ${SRCS:.c=.o}

all: ${NAME}

${NAME}: ${OBJS}
	make -C ${LIBFTPATH}
	mv ${LIBFT} ${NAME}
	@ echo "${GREEN}-=-LIBFT SUCCESSFUL COMPILED-=-${NOCOLOR}"
	ar -rcs ${NAME} ${OBJS}
	@ echo "${GREEN}-=-FT_PRINTF SUCCESSFUL COMPILED-=-${NOCOLOR}"

.c.o:
	cc ${FLAGS} ${INCS} -c $< -o $@

clean:
	rm -f ${OBJS}
	@ echo "${GREEN}-=-${NAME} OBJS SUCCESSFUL CLEANED-=-${NOCOLOR}"
	make clean -C ${LIBFTPATH}
	@ echo "${GREEN}-=-${LIBFTPATH} OBJS SUCCESSFUL CLEANED-=-${NOCOLOR}"

fclean: clean
	rm -f ${NAME}
	@ echo "${GREEN}-=-${NAME} DELETED-=-${NOCOLOR}"
	rm -f ${LIBFT}
	@ echo "${GREEN}-=-${LIBFT} DELETED-=-${NOCOLOR}"

re: fclean all
	@ echo "${GREEN}-=-RE SUCCESSFUL-=-${NOCOLOR}"

.PHONY: all clean fclean re
