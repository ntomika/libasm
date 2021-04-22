#include "libasm.h"

void	check_read()
{
	char buf[30];

	printf("original:  %zu\n", read(0, buf, 100));
	printf("prototype: %zu\n", ft_read(0, buf, 100));
}

void	check_write()
{
	printf("original:  %zu\n", write(1, "a\n", 2));
	printf("prototype: %zu\n", ft_write(1, "a\n\n", 2));
}

void	check_strcmp()
{
	printf("original:   %d\n", strcmp("12346asd", "12346"));
	printf("prototype:  %d\n\n", ft_strcmp("12346asb", "12346"));
}

void	check_strcpy()
{
	char dst[20];
	const char *src;
	char *r1;
	char *r2;

	src = "uirhbvpiu34r98fhwfv";
	r1 = strcpy(dst, src);
	printf("original:  %s\n", r1);
	r2 = ft_strcpy(dst, src);
	printf("prototype: %s\n\n", r2);
}

void	check_strlen()
{
	char *line;

	line = "164723648324";
	printf("original:  %zu\n", strlen(line));
	printf("prototype: %zu\n\n", ft_strlen(line));
}

int	main()
{
	check_strlen();
	check_strcpy();
	check_strcmp();
	check_write();
	check_read();
	return (0);
}