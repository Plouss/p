NAME = libftprintf.a

SRCS =  ft_printf.c ft_printchar.c ft_printnbr.c ft_printstr.c ft_strlen.c

OBJS = ${SRCS:.c=.o}

FLAGS = -Wall -Wextra -Werror 
CC = gcc
RM = rm -f

all: ${NAME}

${NAME} :   ${OBJS}
				ar rcs ${NAME} ${OBJS}

clean:
			${RM} ${OBJS}

fclean: clean
		${RM} ${NAME}

re: fclean all

.PHONY: all clean fclean re