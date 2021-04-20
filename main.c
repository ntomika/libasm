#include "libasm.h"

void	check_strcpy()
{
	char dst[5];
	const char *src;
	char *r1;
	char *r2;

	src = "1234";
	r1 = strcpy(dst, src);
	printf("original:  %s\n", r1);
	r2 = ft_strcpy(dst, src);
	printf("prototype: %s\n", r2);
}

// void	check_strlen()
// {
// 	char *line;

// 	line = "164723648324";
// 	printf("original:  %zu\n", strlen(line));
// 	printf("prototype: %zu\n", ft_strlen(line));
// }

int	main()
{
	// check_strlen();
	check_strcpy();
	return (0);
}