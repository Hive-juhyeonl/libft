# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: JuHyeon <juhyeonl@student.hive.fi>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/10/20 00:00:00 by Gemini           #+#    #+#              #
#    Updated: 2025/10/20 00:00:00 by Gemini           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = cc
CFLAGS = -Wall -Wextra -Werror -Iincludes
AR = ar rcs
RM = rm -rf

OBJS_DIR = objs

DIR_CHAR = srcs/char
DIR_CONV = srcs/conversion
DIR_GNL  = srcs/gnl
DIR_LIST = srcs/linked_list
DIR_MEM  = srcs/memory
DIR_PRT  = srcs/print
DIR_PRF  = srcs/printf
DIR_STR  = srcs/string

SRCS = \
	$(DIR_CHAR)/ft_isalnum.c $(DIR_CHAR)/ft_isalpha.c $(DIR_CHAR)/ft_isascii.c \
	$(DIR_CHAR)/ft_isdigit.c $(DIR_CHAR)/ft_isprint.c $(DIR_CHAR)/ft_tolower.c \
	$(DIR_CHAR)/ft_toupper.c \
	$(DIR_CONV)/ft_atoi.c $(DIR_CONV)/ft_itoa.c \
	$(DIR_GNL)/get_next_line.c $(DIR_GNL)/get_next_line_utils.c \
	$(DIR_LIST)/ft_lstadd_back.c $(DIR_LIST)/ft_lstadd_front.c \
	$(DIR_LIST)/ft_lstclear.c $(DIR_LIST)/ft_lstdelone.c \
	$(DIR_LIST)/ft_lstiter.c $(DIR_LIST)/ft_lstlast.c \
	$(DIR_LIST)/ft_lstmap.c $(DIR_LIST)/ft_lstnew.c $(DIR_LIST)/ft_lstsize.c \
	$(DIR_MEM)/ft_bzero.c $(DIR_MEM)/ft_calloc.c $(DIR_MEM)/ft_memchr.c \
	$(DIR_MEM)/ft_memcmp.c $(DIR_MEM)/ft_memcpy.c $(DIR_MEM)/ft_memmove.c \
	$(DIR_MEM)/ft_memset.c \
	$(DIR_PRT)/ft_error.c $(DIR_PRT)/ft_putchar_fd.c $(DIR_PRT)/ft_putendl_fd.c \
	$(DIR_PRT)/ft_putnbr_fd.c $(DIR_PRT)/ft_putstr_fd.c \
	$(DIR_PRF)/ft_printf.c $(DIR_PRF)/ft_form_check.c $(DIR_PRF)/ft_itoa_base.c \
	$(DIR_PRF)/ft_putchar_rt.c $(DIR_PRF)/ft_putpointer.c $(DIR_PRF)/ft_putstr_rt.c \
	$(DIR_STR)/ft_split.c $(DIR_STR)/ft_strchr.c $(DIR_STR)/ft_strdup.c \
	$(DIR_STR)/ft_striteri.c $(DIR_STR)/ft_strjoin.c $(DIR_STR)/ft_strlcat.c \
	$(DIR_STR)/ft_strlcpy.c $(DIR_STR)/ft_strlen.c $(DIR_STR)/ft_strmapi.c \
	$(DIR_STR)/ft_strncmp.c $(DIR_STR)/ft_strnstr.c $(DIR_STR)/ft_strrchr.c \
	$(DIR_STR)/ft_strtrim.c $(DIR_STR)/ft_substr.c

OBJS = \
	$(OBJS_DIR)/ft_isalnum.o $(OBJS_DIR)/ft_isalpha.o $(OBJS_DIR)/ft_isascii.o \
	$(OBJS_DIR)/ft_isdigit.o $(OBJS_DIR)/ft_isprint.o $(OBJS_DIR)/ft_tolower.o \
	$(OBJS_DIR)/ft_toupper.o \
	$(OBJS_DIR)/ft_atoi.o $(OBJS_DIR)/ft_itoa.o \
	$(OBJS_DIR)/get_next_line.o $(OBJS_DIR)/get_next_line_utils.o \
	$(OBJS_DIR)/ft_lstadd_back.o $(OBJS_DIR)/ft_lstadd_front.o \
	$(OBJS_DIR)/ft_lstclear.o $(OBJS_DIR)/ft_lstdelone.o \
	$(OBJS_DIR)/ft_lstiter.o $(OBJS_DIR)/ft_lstlast.o \
	$(OBJS_DIR)/ft_lstmap.o $(OBJS_DIR)/ft_lstnew.o $(OBJS_DIR)/ft_lstsize.o \
	$(OBJS_DIR)/ft_bzero.o $(OBJS_DIR)/ft_calloc.o $(OBJS_DIR)/ft_memchr.o \
	$(OBJS_DIR)/ft_memcmp.o $(OBJS_DIR)/ft_memcpy.o $(OBJS_DIR)/ft_memmove.o \
	$(OBJS_DIR)/ft_memset.o \
	$(OBJS_DIR)/ft_error.o $(OBJS_DIR)/ft_putchar_fd.o $(OBJS_DIR)/ft_putendl_fd.o \
	$(OBJS_DIR)/ft_putnbr_fd.o $(OBJS_DIR)/ft_putstr_fd.o \
	$(OBJS_DIR)/ft_printf.o $(OBJS_DIR)/ft_form_check.o $(OBJS_DIR)/ft_itoa_base.o \
	$(OBJS_DIR)/ft_putchar_rt.o $(OBJS_DIR)/ft_putpointer.o $(OBJS_DIR)/ft_putstr_rt.o \
	$(OBJS_DIR)/ft_split.o $(OBJS_DIR)/ft_strchr.o $(OBJS_DIR)/ft_strdup.o \
	$(OBJS_DIR)/ft_striteri.o $(OBJS_DIR)/ft_strjoin.o $(OBJS_DIR)/ft_strlcat.o \
	$(OBJS_DIR)/ft_strlcpy.o $(OBJS_DIR)/ft_strlen.o $(OBJS_DIR)/ft_strmapi.o \
	$(OBJS_DIR)/ft_strncmp.o $(OBJS_DIR)/ft_strnstr.o $(OBJS_DIR)/ft_strrchr.o \
	$(OBJS_DIR)/ft_strtrim.o $(OBJS_DIR)/ft_substr.o

all: $(NAME)

$(NAME): $(OBJS_DIR) $(OBJS)
	@$(AR) $(NAME) $(OBJS)
	@echo "✅ libft.a created successfully!"

$(OBJS_DIR):
	@mkdir -p $(OBJS_DIR)

$(OBJS_DIR)/%.o: $(DIR_CHAR)/%.c
	@$(CC) $(CFLAGS) -c $< -o $@
$(OBJS_DIR)/%.o: $(DIR_CONV)/%.c
	@$(CC) $(CFLAGS) -c $< -o $@
$(OBJS_DIR)/%.o: $(DIR_GNL)/%.c
	@$(CC) $(CFLAGS) -c $< -o $@
$(OBJS_DIR)/%.o: $(DIR_LIST)/%.c
	@$(CC) $(CFLAGS) -c $< -o $@
$(OBJS_DIR)/%.o: $(DIR_MEM)/%.c
	@$(CC) $(CFLAGS) -c $< -o $@
$(OBJS_DIR)/%.o: $(DIR_PRT)/%.c
	@$(CC) $(CFLAGS) -c $< -o $@
$(OBJS_DIR)/%.o: $(DIR_PRF)/%.c
	@$(CC) $(CFLAGS) -c $< -o $@
$(OBJS_DIR)/%.o: $(DIR_STR)/%.c
	@$(CC) $(CFLAGS) -c $< -o $@

clean:
	@$(RM) $(OBJS_DIR)

fclean: clean
	@$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re