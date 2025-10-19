/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putpointer.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: JuHyeon <JuHyeon@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/10/19 23:37:05 by JuHyeon           #+#    #+#             */
/*   Updated: 2025/10/19 23:37:06 by JuHyeon          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_putpointer(void *ptr)
{
	char	*str;
	int		len;

	if (!ptr)
		return (ft_putstr_rt("(nil)"));
	len = ft_putstr_rt("0x");
	str = ft_itoa_base((unsigned long)ptr, "0123456789abcdef");
	if (!str)
		return (len);
	len += ft_putstr_rt(str);
	free(str);
	return (len);
}
