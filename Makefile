# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mvavasso <mvavasso@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/04 19:32:35 by mvavasso          #+#    #+#              #
#    Updated: 2022/05/12 19:11:53 by mvavasso         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libft.a
CC		= cc
CFLAGS	= -Wall -Werror -Wextra

RM		= rm -rf
AR		= ar rc

SRCS	= ft_bzero.c ft_toupper.c ft_tolower.c ft_substr.c ft_isdigit.c ft_isascii.c ft_isalpha.c ft_isalnum.c ft_calloc.c\
			ft_strlen.c ft_strlcpy.c ft_strmapi.c ft_strlcat.c ft_strdup.c ft_atoi.c ft_memcmp.c ft_strrchr.c \
			ft_memset.c ft_strncmp.c ft_strnstr.c ft_memmove.c ft_memcpy.c ft_memchr.c ft_isprint.c ft_strchr.c\
			ft_strjoin.c ft_itoa.c ft_strtrim.c ft_putchar_fd.c ft_striteri.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
			ft_split.c
			
HEADER	= libft.h
OBJS	= $(SRCS:.c=.o)

all:	$(NAME)

$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)

$(OBJS): $(SRCS)
	$(CC) $(CFLAG) -c $(SRCS)

clean:
		$(RM) $(OBJS)

fclean:	clean
		$(RM) $(NAME)

re:		fclean all

.PHONY: all clean fclean re		