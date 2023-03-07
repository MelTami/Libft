/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstfind.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mvavasso <mvavasso@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/01/31 20:36:49 by mvavasso          #+#    #+#             */
/*   Updated: 2023/02/01 14:25:48 by mvavasso         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../libft.h"

t_list	*ft_lstfind(t_list *list, void *data, int (*cmp)())
{
	while (list)
	{
		if (cmp(list->content, data))
			break ;
		list = list->next;
	}
	return (list);
}
