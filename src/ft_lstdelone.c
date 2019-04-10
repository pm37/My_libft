/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   f_lstdelone.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pimichau <pimichau@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/16 15:48:44 by pimichau          #+#    #+#             */
/*   Updated: 2019/04/10 16:10:05 by pimichau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "updated_libft.h"

void	ft_lstdelone(t_list **alst, void (*del) (void*, size_t))
{
	if (alst)
	{
		del((*alst)->content, (*alst)->content_size);
		free(*alst);
		*alst = NULL;
	}
}
