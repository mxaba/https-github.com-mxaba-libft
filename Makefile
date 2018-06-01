# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mxaba <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/31 11:23:10 by mxaba             #+#    #+#              #
#    Updated: 2018/05/31 12:55:34 by mxaba            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CLANG = gcc

CFLAGS = -Wall -Wextra -Werror

OBJ = ft_memchr.o ft_putnbr_fd.o ft_striter.o ft_strnew.o ft_atoi.o \
		ft_memcmp.o ft_putstr.o ft_striteri.o ft_strnstr.o ft_bzero.o \
		ft_memcpy.o ft_putstr_fd.o ft_strjoin.o ft_strrchr.o ft_isalnum.o \
		ft_memdel.o	ft_strcat.o ft_strlcat.o ft_strsplit.o ft_isalpha.o \
		ft_memmove.o ft_strchr.o ft_strlen.o ft_strstr.o ft_isascii.o \
		ft_memset.o ft_strclr.o ft_strmap.o ft_strsub.o ft_isdigit.o \
		ft_putchar.o ft_strcmp.o ft_strmapi.o ft_strtrim.o ft_isprint.o \
		ft_putchar_fd.o ft_strcpy.o ft_strncat.o ft_tolower.o ft_itoa.o \
		ft_putendl.o ft_strdel.o ft_strncmp.o ft_toupper.o ft_memalloc.o \
		ft_putendl_fd.o ft_strdup.o ft_strncpy.o ft_memccpy.o ft_putnbr.o \
		ft_strequ.o ft_strnequ.o \

all: $(NAME)

$(NAME): $(OBJ)
		ar rc	$(NAME) $(OBJ)

$(OBJ): %.o : %.c
		$(CLANG) $(CFLAGS) -c $*.c -o $@

clean:
		rm -rf $(OBJ)

fclean:
		rm -f $(NAME)

re:
		fclean all
