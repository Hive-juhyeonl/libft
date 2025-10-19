/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: JuHyeon <JuHyeon@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/10/19 23:36:50 by JuHyeon           #+#    #+#             */
/*   Updated: 2025/10/19 23:36:52 by JuHyeon          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_printf(const char *format, ...)
{
	va_list	args;
	int		printed_len;

	if (!format)
		return (-1);
	printed_len = 0;
	va_start(args, format);
	while (*format)
	{
		if (*format == '%')
		{
			format++;
			printed_len += ft_form_check(format, args);
		}
		else
			printed_len += ft_putchar_rt(*format);
		format++;
	}
	va_end(args);
	return (printed_len);
}
