#include "libasm.h"

# define GREEN   "\033[32m"
# define RED     "\033[31m"
# define MAGENTA "\033[35m"
# define RESET   "\033[0m"

void	output2(int r1, int r2)
{
	if (r1 == r2)
	{
		printf("%s", GREEN);
		printf("[OK]\n");
		printf("%s\n", RESET);
	}
	else
	{
		printf("%s", RED);
		printf("[ERROR]\n");
		printf("%s\n", RESET);
	}
}

void	output1(char *r1, char *r2)
{
	if (!ft_strcmp(r1, r2))
	{
		printf("%s", GREEN);
		printf("[OK]\n");
		printf("%s\n", RESET);
	}
	else
	{
		printf("%s", RED);
		printf("[ERROR]\n");
		printf("%s\n", RESET);
	}
}

void	check_strdup()
{
	char *s = "check allocation";
	char *r1 = strdup(s);
	char *r2 = ft_strdup(s);

	printf("%s", MAGENTA);
	printf("=========== ft_strdup ===========\n");
	printf("%s\n", RESET);
	printf("original:  %s\n", r1);
	printf("prototype: %s\n", r2);
	output1(r1, r2);
}

void	check_read()
{
	char buf[30];

	printf("%s", MAGENTA);
	printf("=========== ft_read ===========\n");
	printf("%s\n", RESET);
	ssize_t r1 = read(-1, buf, 100);
	printf("original:  %zu\n", r1);
	ssize_t r2 = ft_read(-1, buf, 100);
	printf("prototype: %zu\n", r2);
	output2(r1, r2);
}

void	check_write()
{
	size_t k = 9;

	printf("%s", MAGENTA);
	printf("=========== ft_write ===========\n");
	printf("%s\n", RESET);
	ssize_t r1 = write(1, "a123456\n", k);
	printf("original:  %zu\n", r1);
	ssize_t r2 = ft_write(1, "a123456\n", k);
	printf("prototype: %zu\n", r2);
	output2(r1, r2);
}

void	check_strcmp()
{
	int r1 = strcmp("12346asd", "12346");
	int r2 = ft_strcmp("12346asb", "12346");

	printf("%s", MAGENTA);
	printf("=========== ft_strcmp ===========\n");
	printf("%s\n", RESET);
	printf("original:   %d\n", r1);
	printf("prototype:  %d\n", r2);
	output2(r1, r2);
}

void	check_strcpy()
{
	char dst[20];
	char *src = "uirhbvpiu34r98fhwfv";;
	char *r1 = strcpy(dst, src);
	char *r2 = ft_strcpy(dst, src);

	printf("%s", MAGENTA);
	printf("=========== ft_strcpy ===========\n");
	printf("%s\n", RESET);
	printf("original:  %s\n", r1);
	printf("prototype: %s\n", r2);
	output1(r1, r2);
}

void	check_strlen()
{
	char *line;

	line = "164723648324";
	size_t r1 = strlen(line);
	size_t r2 = ft_strlen(line);

	printf("%s", MAGENTA);
	printf("=========== ft_strlen ===========\n");
	printf("%s\n", RESET);
	printf("original:  %zu\n", r1);
	printf("prototype: %zu\n", r2);
	output2(r1, r2);
}

int	main()
{
	check_strlen();
	check_strcpy();
	check_strcmp();
	check_write();
	check_read();
	check_strdup();
	return (0);
}