/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstat.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mvavasso <mvavasso@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/02/03 17:47:36 by mvavasso          #+#    #+#             */
/*   Updated: 2023/02/03 17:48:16 by mvavasso         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../libft.h"

t_list	*ft_lstat(t_list *list, unsigned int n)
{
	unsigned int	i;

	i = 0;
	while (i++ < n)
	{
		if (!list)
			break ;
		list = list->next;
	}
	return (list);
}
