/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_form_check.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: JuHyeon <JuHyeon@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/10/19 23:36:36 by JuHyeon           #+#    #+#             */
/*   Updated: 2025/10/19 23:36:39 by JuHyeon          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static int	parse_char(const char format, va_list args)
{
	if (format == 'c')
		return (ft_putchar_rt(va_arg(args, int)));
	if (format == '%')
		return (ft_putchar_rt('%'));
	return (0);
}

static int	parse_string(const char format, va_list args)
{
	if (format == 's')
		return (ft_putstr_rt(va_arg(args, char *)));
	if (format == 'p')
		return (ft_putpointer(va_arg(args, void *)));
	return (0);
}

static int	parse_number(const char format, va_list args)
{
	char	*str;
	int		len;

	if (format == 'd' || format == 'i')
		str = ft_itoa(va_arg(args, int));
	else if (format == 'u')
		str = ft_itoa_base(va_arg(args, unsigned int), "0123456789");
	else if (format == 'x')
		str = ft_itoa_base(va_arg(args, unsigned int), "0123456789abcdef");
	else if (format == 'X')
		str = ft_itoa_base(va_arg(args, unsigned int), "0123456789ABCDEF");
	else
		return (0);
	if (!str)
		return (0);
	len = ft_putstr_rt(str);
	free(str);
	return (len);
}

int	ft_form_check(const char *format, va_list args)
{
	int	len;

	len = 0;
	if (*format == 'c' || *format == '%')
		len = parse_char(*format, args);
	else if (*format == 's' || *format == 'p')
		len = parse_string(*format, args);
	else if (ft_strchr("diuxX", *format))
		len = parse_number(*format, args);
	return (len);
}
