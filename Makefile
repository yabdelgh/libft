NAME = libft.a

SRC = ft_strlen.c

OBJ = $(SRC:.c=.o)

CC = gcc

AR = ar -rcs # c:create, r:replace, s:index like ranlib 

FLAGS = -Wall -Werror -Wextra

all: $(NAME)

$(NAME): $(OBJ)
	$(AR) $@ $^

%.o: %.c
	$(CC) $(FLAGS) -c $< -o $@

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)

re: fclean all
