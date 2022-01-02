#include <stdio.h>
#include "libft.h"

int main()
{
	char *str;

	// ft_strlen
	printf("\nft_strlen:\n");
	str = "i love seffa";
	printf("%s\n",str);	
	printf("%d\n\n",ft_strlen(str));

	// ft_isalpha
	printf("ft_isalpha:\n");
	printf("a: %d\n", ft_isalpha('a'));
	printf("Q: %d\n", ft_isalpha('Q'));
	printf("z: %d\n", ft_isalpha('z'));
	printf("4: %d\n", ft_isalpha('4'));
	
	return (0);	
}
