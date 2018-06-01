/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnequ.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mxaba <marvin@42.fr>                       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/05/29 08:21:43 by mxaba             #+#    #+#             */
/*   Updated: 2018/06/01 16:23:19 by mxaba            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include "libft.h"

int		ft_strnequ(char const *s1, char const *s2, size_t n)
{
	size_t	i;
	int		diff;

	i = 0;
	while (s1[i] && s2[i] && i < n)
	{
		diff = s1[i] - s2[i];
		if (diff != 0)
			break ;
		else
			i++;
	}
	if (diff != 0)
		return (0);
	else
		return (1);
}
