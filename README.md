# libft

This project is for personal libral

example usage for other projects
*** in Makefile
  CFLAGS  = -Wall -Wextra -Werror -Iincludes -Ilibft
  
  $(NAME): $(OBJS) libft/libft.a
  	$(CC) $(CFLAGS) $(OBJS) libft/libft.a $(LDFLAGS) -o $(NAME)
  
    libft/libft.a:
  	$(MAKE) -C libft
  
  clean:
  	$(MAKE) -C libft clean
  
  fclean: clean
  	$(MAKE) -C libft fclean
