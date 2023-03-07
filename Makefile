# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mvavasso <mvavasso@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/04 19:32:35 by mvavasso          #+#    #+#              #
#    Updated: 2023/03/07 01:35:07 by mvavasso         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= libft.a
CC			= cc
CFLAGS		= -Wall -Werror -Wextra

RM			= rm -rf
AR			= ar rcs

PATH_SRCS	= ./sources/
PATH_OBJS	= ./objects/

SRCS		= $(addprefix $(PATH_SRCS), \
				ft_bzero.c \
				ft_toupper.c \
				ft_tolower.c \
				ft_substr.c \
				ft_isdigit.c \
				ft_isascii.c \
				ft_isalpha.c \
				ft_isalnum.c \
				ft_calloc.c\
				ft_strlen.c \
				ft_strlcpy.c \
				ft_strmapi.c \
				ft_strlcat.c \
				ft_strdup.c \
				ft_atoi.c \
				ft_memcmp.c \
				ft_strrchr.c \
				ft_memset.c \
				ft_strncmp.c \
				ft_strnstr.c \
				ft_memmove.c \
				ft_memcpy.c \
				ft_memchr.c \
				ft_isprint.c \
				ft_strchr.c\
				ft_strjoin.c \
				ft_itoa.c \
				ft_strtrim.c \
				ft_putchar_fd.c \
				ft_striteri.c \
				ft_putstr_fd.c \
				ft_putendl_fd.c \
				ft_putnbr_fd.c \
				ft_split.c \
				ft_putchar.c \
				ft_free.c \
				ft_putnbrbase.c \
				get_next_line.c \
				ft_converthex.c \
				ft_convertu.c \
				ft_convertint.c \
				ft_convertptr.c \
				ft_printf.c \
				ft_atol.c \
				ft_lstfind.c \
				ft_lstnew.c \
				ft_lstadd_back.c \
				ft_lstadd_front.c \
				ft_lstat.c \
				ft_lstclear.c \
				ft_lstdelone.c \
				ft_lstdup_int.c \
				ft_lstiter.c \
				ft_lstlast.c \
				ft_lstmap.c \
				ft_lstsize.c \
				ft_lstsort.c)
			
HEADER		= libft.h
OBJS 		= $(patsubst $(PATH_SRCS)%.c, $(PATH_OBJS)%.o, $(SRCS))

all:	$(NAME)

$(NAME): $(OBJS)
	@ $(AR) $(NAME) $(OBJS)
	@ echo -e '\033[0;32m[SUCCESS]\033[0m Compilation done!'

$(PATH_OBJS)%.o: $(PATH_SRCS)%.c
	@ mkdir -p $(PATH_OBJS)
	@ $(CC) $(CFLAG) -I $(HEADER) -c $< -o $@
	
clean:
	@ $(RM) $(PATH_OBJS)
	@ echo -e '\033[0;33mObjects removed\033[0m'

fclean:	clean
	@ $(RM) $(NAME)
	@ echo -e '\033[0;33mEverything is clean\033[0m'

re:		fclean all

.PHONY: all clean fclean re