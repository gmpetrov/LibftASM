/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gpetrov <gpetrov@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/01/27 17:27:24 by gpetrov           #+#    #+#             */
/*   Updated: 2015/01/30 17:21:44 by gpetrov          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <fcntl.h>

#include "libftASM.h"

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
    printf("calling ft_bzero(void *, size_t)\n");
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
    ft_strcat(strc, " hello");
	printf("%s\n", strc);

	char *ni = NULL;
	ft_strcat(ni, "test");

	printf("=== end ft_strcat ===\n");

   	printf("=== TEST ft_strlen ===\n");

	printf("ft_strlen(\"salut\") = %zd\n", ft_strlen("salut"));

	printf("=== end ft_strlen ===\n");

   	printf("=== TEST ft_puts ===\n");

	ft_puts("Hello World");
	ft_puts("Hello World");
	ft_puts("Hello World");
	ft_puts("Hello World");

	char *yoloo = NULL;
	ft_puts(yoloo);

	printf("=== end ft_puts ===\n");

	printf("=== TEST ft_memset ===\n");

	char strmem[] = "test memset";

	printf("%s\n", (char *)ft_memset(strmem, 'X', 3));	

	printf("=== end ft_memset ===\n");

	printf("=== TEST ft_memcpy ===\n");

	char strmemcp[] = "test memcpy";

	printf("%s\n", (char *)ft_memcpy(strmemcp, "yolo", 3));	

	printf("=== end ft_memcpy ===\n");

	printf("=== TEST ft_strdup ===\n");

	char *testdup = ft_strdup("Salut c'est cool");
	printf("%s\n", testdup);

	printf("=== end ft_strdup ===\n");

	printf("=== TEST ft_cat ===\n");

	int fd = open("asm_header.txt", O_RDONLY);

	ft_cat(fd);

	printf("=== end ft_cat ===\n");

	printf("*** Partie BONUS ***\n");

	printf("*** TEST ft_strchr ***\n");

	char  test_strchr[] = "bonjour";

	char  *test_strchr2 = ft_strchr(test_strchr, 'n');
	printf("%s\n", test_strchr2);
	test_strchr2 = ft_strchr(test_strchr, 'z');
	printf("%s\n", test_strchr2);
	test_strchr2 = ft_strchr(test_strchr, '\0');
	printf("%s\n", test_strchr2);

	printf("*** end ft_strchr ***\n");

	printf("*** TEST ft_strnew ***\n");

	char *test_strnew = ft_strnew(5);
	int k;
	for (k = 0; k<5; k++){
		printf("%d\n", test_strnew[k]);
	}

	printf("*** end ft_strnew ***\n");

	return 0;

}
