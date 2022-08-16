/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   hexcase.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlucas-s <jlucas-s@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/08/03 00:02:56 by jlucas-s          #+#    #+#             */
/*   Updated: 2022/08/10 21:47:20 by jlucas-s         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/ft_printf.h"

int	ft_hexcase(unsigned long int n, char c)
{
	int	ret;

	ret = 0;
	if (n >= 16)
	{
		ret += ft_hexcase(n / 16, c);
		ret += ft_hexcase(n % 16, c);
	}
	else if (n <= 9)
		ret += ft_putchar(n + '0');
	else
		ret += ft_putchar(n - 10 + (c - 23));
	return (ret);
}
