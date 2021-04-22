NAME		= libasm.a

ASM			= nasm -f macho64

SRCS		= ft_strlen.s \
			ft_strcpy.s \
			ft_strcmp.s \
			ft_strcmp.s \
			ft_write.s \
			ft_read.s 

OBJS		= $(SRCS:.s=.o)

RM			= rm -f

%o:			%.s	
			$(ASM) $< -o $(<:.s=.o)

$(NAME):	$(OBJS)
			ar rcs $(NAME) $(OBJS)

all:		$(NAME)

clean:
			$(RM) $(OBJS)

fclean:		clean
			$(RM) $(NAME)

re:			fclean all
