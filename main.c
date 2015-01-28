/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gpetrov <gpetrov@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/01/27 17:27:24 by gpetrov           #+#    #+#             */
/*   Updated: 2015/01/28 14:04:30 by gpetrov          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include <string.h>
#include <stdio.h>

extern int ft_isalpha(int c);
extern int ft_isdigit(int c);
extern int ft_isalnum(int c);
extern int ft_isascii(int c);
extern int ft_isprint(int c);
extern int ft_toupper(int c);
extern int ft_tolower(int c);
extern void ft_bzero(void *s, size_t n);
extern char *ft_strcat(char *s1, const char *s2);
extern size_t ft_strlen(const char *s);

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
	

	printf("=== TEST ft_isascii ===\n");

	if (ft_isascii('2'))
		printf("OK\n");
	else
		printf("NOT OK\n");
	if (ft_isascii(128))
		printf("OK\n");
	else
		printf("NOT OK\n");

	printf("=== end ft_isascii ===\n");

	
	printf("=== TEST ft_isprint ===\n");

	if (ft_isprint(32))
		printf("OK\n");
	else
		printf("NOT OK\n");
	if (ft_isprint(128))
		printf("OK\n");
	else
		printf("NOT OK\n");

	printf("=== end ft_isprint ===\n");
	printf("=== TEST ft_toupper ===\n");

    printf("ft_toupper('a') : %c\n", ft_toupper('a'));
    
    printf("ft_toupper('Z') : %c\n", ft_toupper('Z'));
    printf("ft_toupper(']') : %c\n", ft_toupper(']'));
	printf("=== end ft_toupper ===\n");

	printf("=== TEST ft_tolower ===\n");

    printf("ft_tolower('a') : %c\n", ft_tolower('a'));
    
    printf("ft_tolower('Z') : %c\n", ft_tolower('Z'));
    printf("ft_tolower(']') : %c\n", ft_tolower(']'));
	printf("=== end ft_tolower ===\n");

   	printf("=== TEST ft_bzero ===\n");

    char test[] = "salut";
    int i;
    printf("String test = salut\n");
    for (i = 0; i < 5; i++){
        printf("%d\n", test[i]);
    }
    printf("calling ft_bzero(void *, size_t)");
    ft_bzero(test, 5);
    for (i = 0; i < 5; i++){
        printf("%d\n", test[i]);
    }
	printf("=== end ft_bzero ===\n");

   	printf("=== TEST ft_strcat ===\n");
    
    char strc[11];
    printf("salut");
    strc[0] = 's';
    strc[1] = 'a';
    strc[2] = 'l';
    strc[3] = 'u';
    strc[4] = 't';
    strc[5] = 0;
    printf("\nyolo\n");
	printf("%c\n", strc[0]);
//    ft_strcat(strc, "hello");
//    printf("%s\n", strc);
//
	printf("=== end ft_strcat ===\n");

   	printf("=== TEST ft_strlen ===\n");

	printf("ft_strlen(\"salut\") = %zd\n", ft_strlen("salut"));

	printf("=== end ft_strlen ===\n");



	return 0;

}
