/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlucas-s <jlucas-s@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/26 01:14:02 by jlucas-s          #+#    #+#             */
/*   Updated: 2022/08/05 02:47:06 by jlucas-s         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

// INCLUDES
# include <unistd.h>
# include <stdarg.h>
# include "../lib/include/libft.h"

// MAIN FUNCTIONS
int		ft_printf(const char *str, ...);
int		ft_type_conversion(va_list ap, char c);

// ADDITIONAL FUNCTIONS
int		ft_numlen(int n);
int		ft_unumlen(unsigned int n);
int		ft_putchar(char c);

// SPECIFIC CASES
int		ft_pointercase(va_list ap);
int		ft_hexcase(unsigned long int n, char c);

// PUTNBR FOR UNSIGNED INT
void	ft_uputnbr(unsigned int n);

#endif