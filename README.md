# Libft
Created: 6th March 2022
<br></br>
Update: 7th March 2023
## Badge
![Libft score](https://github.com/MelTami/Libft/blob/master/img/score.png)
![Libft achiviment](https://github.com/MelTami/Libft/blob/master/img/libfte.png)
## Overview
The Libft is a project in the 42 course that we create a library, with the C highly useful standart functions, but we need to creat those in order to understand the way these functions work, to implement and to learn to use them. Also this library will be useful in the future projects of the course.
## Lib functions
<table>
  <tr>
    <td>Functions</td>
    <td>Decription</td>
    <td>Prototype</td>
  </tr>
  <tr>
    <td><a href="https://github.com/MelTami/Libft/blob/master/sources/ft_atoi.c">ft_atoi</a></td>
    <td>Converts the string argument to an integer.</td>
    <td>int	ft_atoi(const char *str);</td>
  </tr>
  <tr>
    <td><a href="https://github.com/MelTami/Libft/blob/master/sources/ft_bzero.c">ft_bzero</a></td>
    <td>Erases the data in the n bytes of the memory starting at the location pointed to by s, by writing zeros (bytes containing '\0') to that area.</td>
    <td>void	ft_bzero(void *s, size_t n);</td>
  </tr>
  <tr>
    <td><a href="https://github.com/MelTami/Libft/blob/master/sources/ft_calloc.c">ft_calloc</a></td>
    <td>Allocates the requested memory and returns a pointer to it.</td>
    <td>void	*ft_calloc(size_t nb, size_t size);</td>
  </tr>
  <tr>
    <td><a href="https://github.com/MelTami/Libft/blob/master/sources/ft_isalnum.c">ft_isalnum</a></td>
    <td>Checks whether the passed argument is a number or a letter</td>
    <td>int	ft_isalnum(int n);</td>
  </tr>
  <tr>
    <td><a href="https://github.com/MelTami/Libft/blob/master/sources/ft_isalpha.c">ft_isalpha</a></td>
    <td>Check if the passed argument is a letter</td>
    <td>int	ft_isalpha(int n);</td>
  </tr>
  <tr>
    <td><a href="https://github.com/MelTami/Libft/blob/master/sources/ft_isascii.c">ft_isascii</a></td>
    <td>Checks if the passed argument is in the ascii table</td>
    <td>int	ft_isascii(int n);</td>
  </tr>
  <tr>
    <td><a href="https://github.com/MelTami/Libft/blob/master/sources/ft_isdigit.c">ft_isdigit</a></td>
    <td>Checks if the passed argument is a number</td>
    <td>int	ft_isdigit(int n);</td>
  </tr>
  <tr>
    <td><a href="https://github.com/MelTami/Libft/blob/master/sources/ft_isprint.c">ft_isprint</a></td>
    <td>Checks if the passed argument is printable</td>
    <td>int	ft_isprint(int n);</td>
  </tr>
  <tr>
    <td><a href="https://github.com/MelTami/Libft/blob/master/sources/ft_itoa.c">ft_itoa</a></td>
    <td>Allocates (with malloc(3)) and returns a string representing the integer received as an argument.</td>
    <td>char	*ft_itoa(int n);</td>
  </tr>
  <tr>
    <td><a href="https://github.com/MelTami/Libft/blob/master/sources/ft_lstadd_back.c">ft_lstadd_back</a></td>
    <td>Adds the node ’new’ at the end of the list.</td>
    <td>void ft_lstadd_back(t_list **lst, t_list *new);</td>
  </tr>
  <tr>
    <td><a href="https://github.com/MelTami/Libft/blob/master/sources/ft_lstadd_front.c">ft_lstadd_front</a></td>
    <td>Adds the node ’new’ at the beginning of the list.</td>
    <td>void ft_lstadd_front(t_list **lst, t_list *new);</td>
  </tr>
  <tr>
    <td><a href="https://github.com/MelTami/Libft/blob/master/sources/ft_lstclear.c">ft_lstclear</a></td>
    <td>Deletes and frees the given node and every successor of that node, using the function ’del’ and free(3). Finally, the pointer to the list must be set to NULL.</td>
    <td>void ft_lstclear(t_list **lst, void (*del)(void*));</td>
  </tr>
  <tr>
    <td><a href="https://github.com/MelTami/Libft/blob/master/sources/ft_lstdelone.c">ft_lstdelone</a></td>
    <td>Takes as a parameter a node and frees the memory of the node’s content using the function ’del’ given as a parameter and free the node. The memory of ’next’ must not be freed.</td>
    <td>void ft_lstdelone(t_list *lst, void (*del)(void*));</td>
  </tr>
  <tr>
    <td><a href="https://github.com/MelTami/Libft/blob/master/sources/ft_lstlast.c">ft_lstlast</a></td>
    <td>Returns the last node of the list.</td>
    <td>t_list *ft_lstlast(t_list *lst);</td>
  </tr>
  <tr>
    <td><a href="https://github.com/MelTami/Libft/blob/master/sources/ft_lstmap.c">ft_lstmap</a></td>
    <td>Iterates the list ’lst’ and applies the function ’f’ on the content of each node. Creates a new list resulting of the successive applications of the function ’f’. The ’del’ function is used to delete the content of a node if needed.</td>
    <td>t_list *ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *));</td>
  </tr>
  <tr>
    <td><a href="https://github.com/MelTami/Libft/blob/master/sources/ft_lstnew.c">ft_lstnew</a></td>
    <td>Allocates (with malloc(3)) and returns a new node. The member variable ’content’ is initialized with the value of the parameter ’content’. The variable ’next’ is initialized to NULL.</td>
    <td>t_list *ft_lstnew(void *content);</td>
  </tr>
  <tr>
    <td><a href="https://github.com/MelTami/Libft/blob/master/sources/ft_lstsize.c">ft_lstsize</a></td>
    <td>Counts the number of nodes in a list.</td>
    <td>int ft_lstsize(t_list *lst);</td>
  </tr>
</table>

## External functions
<table>
  <tr>
    <td>Functions</td>
    <td>Decription</td>
    <td>Prototype</td>
  </tr>
  <tr>
    <td><a href="https://github.com/MelTami/Libft/blob/master/sources/ft_atol.c">ft_atol</a></td>
    <td>Converts the string argument str to a long integer.</td>
    <td>long	ft_atol(const char *str);</td>
  </tr>
  <tr>
    <td><a href="https://github.com/MelTami/Libft/blob/master/sources/ft_converthex.c">ft_converthex</a></td>
    <td>Converts an integer into the hexadecimal form.</td>
    <td>int	ft_converthex(int hex, char *s);</td>
  </tr>
  <tr>
    <td><a href="https://github.com/MelTami/Libft/blob/master/sources/ft_convertint.c">ft_convertint</a></td>
    <td>Converts an integer into decimal form</td>
    <td>int	ft_convertint(int nb);</td>
  </tr>
  <tr>
    <td><a href="https://github.com/MelTami/Libft/blob/master/sources/ft_convertptr.c">ft_convertptr</a></td>
    <td>Converts an integer into pointer in the hexadecimal form</td>
    <td>int	ft_convertptr(void *ptr);</td>
  </tr>
  <tr>
    <td><a href="https://github.com/MelTami/Libft/blob/master/sources/ft_convertu.c">ft_convertu</a></td>
    <td>Converts an integer into an unsigned decimal</td>
    <td>int	ft_convertu(unsigned int nb);</td>
  </tr>
  <tr>
    <td><a href="https://github.com/MelTami/Libft/blob/master/sources/ft_free.c">ft_free</a></td>
    <td>Free the memory and guarantee that the string is empty.</td>
    <td>void	ft_free(char **str);</td>
  </tr>
  <tr>
    <td><a href="https://github.com/MelTami/Libft/blob/master/sources/ft_lstat.c">ft_lstat</a></td>
    <td>Check the position in the list.</td>
    <td>t_list	*ft_lstat(t_list *list, unsigned int n);</td>
  </tr>
  <tr>
    <td><a href="https://github.com/MelTami/Libft/blob/master/sources/ft_lstdup_int.c">ft_lstduo_int</a></td>
    <td>Duplicates the list passed as argument.</td>
    <td>t_list	*ft_lstdup_int(t_list *list);</td>
  </tr>
  <tr>
    <td><a href="https://github.com/MelTami/Libft/blob/master/sources/ft_lstfind.c">ft_lstfind</a></td>
    <td>Search inside the list a data</td>
    <td>t_list	*ft_lstfind(t_list *list, void *data, int (*cmp)())</td>
  </tr>
  <tr>
    <td><a href="https://github.com/MelTami/Libft/blob/master/sources/ft_lstiter.c">ft_lstiter</a></td>
    <td>Iterates the list ’lst’ and applies the function ’f’ to the content of each element.</td>
    <td>void	ft_lstiter(t_list *lst, void (*f)(void *));</td>
</tr>
</table>
