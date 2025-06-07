# Personal Libft Library

This project is a personal implementation of **libft**, a custom C library.

## Character checks
- ft_isalnum  
- ft_isalpha  
- ft_isascii  
- ft_isdigit  
- ft_isprint  
- ft_tolower  
- ft_toupper  

## Conversion
- ft_atoi  
- ft_itoa  
- ft_itoa_base  

## Memory management
- ft_bzero  
- ft_calloc  
- ft_memchr  
- ft_memcmp  
- ft_memcpy  
- ft_memmove  
- ft_memset  

## String manipulation
- ft_strlen  
- ft_strchr  
- ft_strrchr  
- ft_strncmp  
- ft_strlcpy  
- ft_strlcat  
- ft_strnstr  
- ft_strdup  
- ft_strjoin  
- ft_substr  
- ft_strtrim  
- ft_strmapi  
- ft_striteri  
- ft_split  

## Linked list
- ft_lstnew  
- ft_lstadd_front  
- ft_lstadd_back  
- ft_lstsize  
- ft_lstlast  
- ft_lstiter  
- ft_lstmap  
- ft_lstdelone  
- ft_lstclear  

## I/O
### get_next_line
- get_next_line  

### printf
- ft_printf  
- ft_form_check  
- ft_putchar_rt  
- ft_putstr_rt  
- ft_putpointer  

### file-descriptor output
- ft_putchar_fd  
- ft_putendl_fd  
- ft_putnbr_fd  
- ft_putstr_fd  

## Error handling
- ft_error  

## Usage for other projets
```makefile
CFLAGS   = -Wall -Wextra -Werror -Iincludes -Ilibft

$(NAME): $(OBJS) libft/libft.a
	$(CC) $(CFLAGS) $(OBJS) libft/libft.a $(LDFLAGS) -o $(NAME)

libft/libft.a:
	$(MAKE) -C libft

clean:
	$(MAKE) -C libft clean

fclean: clean
	$(MAKE) -C libft fclean
