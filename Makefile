NAME = libft.a

TEST = test

SRC = ft_strlen.c ft_isalpha.c

OBJ = $(SRC:.c=.o)

HED = libft.h

CC = gcc

AR = ar -rcs # c:create, r:replace, s:index like ranlib 

FLAGS = -Wall -Werror -Wextra

all: $(NAME)

$(NAME): $(OBJ)
	$(AR) $@ $^

%.o: %.c $(HED)
	$(CC) $(FLAGS) -c $< -o $@

$(TEST): main.c $(NAME)
	$(CC) $^ -o $@

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)
	rm -rf $(TEST)

re: fclean all
