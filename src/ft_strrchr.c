/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strrchr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pimichau <pimichau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/08 11:31:07 by pimichau          #+#    #+#             */
/*   Updated: 2019/04/10 16:05:23 by pimichau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "updated_libft.h"

char	*ft_strrchr(const char *s, int c)
{
	size_t	i;
	size_t	l;

	i = 0;
	l = ft_strlen(s);
	while (*s != '\0')
		s++;
	while (*s != c)
	{
		i++;
		if (i == (l + 1) || l == 0)
			return (0);
		s--;
	}
	return ((char *)s);
}
