# libft

This project is a personal implementation of libft, a custom C library.

CFLAGS   = -Wall -Wextra -Werror -Iincludes -Ilibft

$(NAME): $(OBJS) libft/libft.a
	$(CC) $(CFLAGS) $(OBJS) libft/libft.a $(LDFLAGS) -o $(NAME)

libft/libft.a:
	$(MAKE) -C libft

clean:
	$(MAKE) -C libft clean

fclean: clean
	$(MAKE) -C libft fclean
