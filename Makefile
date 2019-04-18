# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bwan-nan <bwan-nan@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/03/01 16:03:53 by bwan-nan          #+#    #+#              #
#    Updated: 2019/04/10 17:49:56 by pimichau         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
LIB = $(LPATH)libft.a
LIBDB = $(LPATH)libftdb.a

SPATH = src/
IPATH = inc/

CLEANUP = /bin/rm -rf

CC = Clang
COMPILE = $(CC) -c

vpath %.c src/
vpath %.h inc/

WFLAGS += -Wall
WFLAGS += -Werror
WFLAGS += -Wextra
IFLAGS = -I $(IPATH)
CFLAGS = $(WFLAGS) $(IFLAGS)

SRCS += ft_printf.c
SRCS += init_struct.c
SRCS += parsing.c
SRCS += output_handler.c
SRCS += diouxx_conv.c
SRCS += print_diouxx.c
SRCS += print_csp.c
SRCS += print_flags.c
SRCS += float_conv.c
SRCS += binary_conv.c
SRCS += colors.c
SRCS += float_operations.c
SRCS += init_floats.c
SRCS += print_float.c

#--------------------Memory--------------------#
SRCS += ft_bzero.c
SRCS += ft_memalloc.c
SRCS += ft_memmove.c
SRCS += ft_memchr.c
SRCS += ft_memcmp.c
SRCS += ft_memcpy.c
SRCS += ft_memccpy.c
SRCS += ft_memdel.c
SRCS += ft_memset.c
SRCS += ft_realloc.c

#--------------------Strings---------------------#
SRCS += ft_islower.c
SRCS += ft_isalnum.c
SRCS += ft_isalpha.c
SRCS += ft_isdigit.c
SRCS += ft_isascii.c
SRCS += ft_isprint.c
SRCS += ft_strcat.c
SRCS += ft_strlcat.c
SRCS += ft_strchr.c
SRCS += ft_strcmp.c
SRCS += ft_strcpy.c
SRCS += ft_strdup.c
SRCS += ft_strlen.c
SRCS += ft_pstrlen.c
SRCS += ft_strncat.c
SRCS += ft_strncmp.c
SRCS += ft_strncpy.c
SRCS += ft_strnstr.c
SRCS += ft_strrchr.c
SRCS += ft_strstr.c
SRCS += ft_strdel.c
SRCS += ft_strclr.c
SRCS += ft_strequ.c
SRCS += ft_strjoin.c
SRCS += ft_strnequ.c
SRCS += ft_strnew.c
SRCS += ft_strsplit.c
SRCS += ft_strsub.c
SRCS += ft_tolower.c
SRCS += ft_toupper.c
SRCS += ft_strtoupper.c
SRCS += ft_strtolower.c
SRCS += ft_str_notchr.c
SRCS += ft_strchr_index.c
SRCS += ft_str_notchr_index.c
SRCS += ft_strr_notchr_index.c
SRCS += get_float_len.c
SRCS += ft_striter.c
SRCS += ft_striteri.c
SRCS += ft_strmap.c
SRCS += ft_strmapi.c

#--------------------Conversion------------------#
SRCS += ft_atoi.c
SRCS += ft_itoa.c
SRCS += ft_llitoa.c
SRCS += ft_llitoa_base.c
SRCS += ft_ullitoa.c
SRCS += ft_ullitoa_base.c
SRCS += get_bits.c
SRCS += ft_binatoi.c

#--------------------Lists-----------------------#
SRCS += ft_lstadd.c
SRCS += ft_lstdel.c
SRCS += ft_lstdelone.c
SRCS += ft_lstnew.c
SRCS += ft_lstiter.c
SRCS += ft_lstmap.c

#--------------------Output----------------------#
SRCS += ft_putchar.c
SRCS += ft_putendl.c
SRCS += ft_putnbr.c
SRCS += ft_putstr.c
SRCS += ft_putchar_fd.c
SRCS += ft_putendl_fd.c
SRCS += ft_putnbr_fd.c
SRCS += ft_putstr_fd.c

#--------------------Maths-----------------------#
SRCS += ft_recursive_power.c
SRCS += ft_max.c

OBJS = $(patsubst %.c, ./%.o, $(SRCS))

all : $(NAME)

$(NAME): $(OBJS) 
		ar -rus $@ $^

$(OBJS) : ./%.o : $(SPATH)%.c $(SRCS) 
		$(COMPILE) $(CFLAGS) $< -o $@

clean :
		$(CLEANUP) $(OBJS)

fclean : clean
		$(CLEANUP) $(NAME)

re: fclean all

.PHONY: all clean fclean re

