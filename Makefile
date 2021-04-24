NAME		= libasm.a

AS			= nasm

ASFLAGS		= -f macho64

SRCS		= ft_strlen.s \
			ft_strcpy.s \
			ft_strcmp.s \
			ft_strcmp.s \
			ft_write.s \
			ft_read.s \
			ft_strdup.s

OBJS		= $(SRCS:.s=.o)

RM			= rm -f

$(NAME):	$(OBJS)
			ar rcs $(NAME) $(OBJS)

all:		$(NAME)

clean:
			$(RM) $(OBJS)

fclean:		clean
			$(RM) $(NAME)
			$(RM) ./a.out

go:			
			gcc -Wall -Wextra -Werror main.c libasm.a
			./a.out

re:			fclean all
