/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstsort.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mvavasso <mvavasso@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/02/03 17:52:06 by mvavasso          #+#    #+#             */
/*   Updated: 2023/02/03 17:58:26 by mvavasso         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../libft.h"

static void	swap(t_list *a, t_list *b)
{
	void	*tmp;

	tmp = a->content;
	a->content = b->content;
	b->content = tmp;
}

static int	partition(t_list *list, int start, int end)
{
	int		i;
	t_list	*pivot;
	t_list	*current;
	int		pivot_index;

	i = start;
	pivot_index = start;
	pivot = ft_lstat(list, end);
	while (i < end)
	{
		current = ft_lstat(list, i);
		if (*(int *)current->content < *(int *)pivot->content)
		{
			swap(current, ft_lstat(list, pivot_index));
			pivot_index++;
		}
		i++;
	}
	swap(ft_lstat(list, pivot_index), pivot);
	return (pivot_index);
}

void	ft_lstsort(t_list *list, int start, int end)
{
	int	index;

	if (start >= end)
		return ;
	index = partition(list, start, end);
	ft_lstsort(list, start, index - 1);
	ft_lstsort(list, index + 1, end);
}
