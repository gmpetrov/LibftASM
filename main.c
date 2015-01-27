/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gpetrov <gpetrov@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/01/27 17:27:24 by gpetrov           #+#    #+#             */
/*   Updated: 2015/01/27 19:44:54 by gpetrov          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>

extern int ft_isalpha(int c);
extern int ft_isdigit(int c);
extern int ft_isalnum(int c);


int		main(void){

	printf("=== TEST ft_isalpha ===\n");
	if (ft_isalpha('e'))
		printf("OK\n");
	else
		printf("NOT OK\n");

	if (ft_isalpha(']'))
		printf("OK\n");
	else
		printf("NOT OK\n");

	printf("=== end ft_isalpha ===\n");

	printf("=== TEST ft_isdigit ===\n");

	if (ft_isdigit('2'))
		printf("OK\n");
	else
		printf("NOT OK\n");
	if (ft_isdigit('s'))
		printf("OK\n");
	else
		printf("NOT OK\n");

	printf("=== end ft_isdigit ===\n");

	printf("=== TEST ft_isalnum ===\n");

	if (ft_isalnum('2'))
		printf("OK\n");
	else
		printf("NOT OK\n");
	if (ft_isalnum('\\'))
		printf("OK\n");
	else
		printf("NOT OK\n");

	printf("=== end ft_isalnum ===\n");
	return 0;
}
