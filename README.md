# libft

# Compiler flags: enable all warnings, treat warnings as errors,
# and add header search paths for includes/ and libft/
CFLAGS  = -Wall -Wextra -Werror -I includes -I libft

# Build the main executable by linking your object files with libft
$(NAME): $(OBJS) libft/libft.a
	$(CC) $(CFLAGS) $(OBJS) libft/libft.a $(LDFLAGS) -o $(NAME)

# Build the libft static library before the main target
libft/libft.a:
	$(MAKE) -C libft

# Clean object files in both this project and libft
clean:
	$(MAKE) -C libft clean

# Full clean: remove all build artifacts here and in libft
fclean: clean
	$(MAKE) -C libft fclean
