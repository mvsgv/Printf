NAME = libftprintf.a

CC = gcc -c

FLAGS = -Wall -Werror -Wextra

SRC_PART = ft_print_str.c ft_print_nbr.c ft_printf.c ft_print_utilities.c

OBJ_PART = $(SRC_PART:.c=.o)

RM = rm -f

HEAD = ft_printf.h

.c.o : $(SRCS)
	${CC} ${FLAGS} -c -o $@ $^

all : $(NAME)

$(NAME) : $(OBJ_PART) $(HEAD)
	@$(CC) $(SRC_PART) $(FLAGS)
	ar rcs $(NAME) $(OBJ_PART) $(HEAD) 

fclean : clean
	$(RM) $(NAME) $(OBJ_PART)

re : fclean all

.PHONY : all clean fclean re bonus