##
## EPITECH PROJECT, 2025
## Setup
## File description:
## Makefile
##

SRC			=	src/main.cpp

OBJ			=	$(SRC:.cpp=.o)

NAME		=	binary_name

CXX			=	g++

CXXFLAGS	=	-W -Wall -Wextra -I./includes
CXXFLAGS	+=	-I ./lib/tools/includes -g3 -O2
CXXFLAGS	+=	-I ./lib/sfml_utils/includes -g3 -O2

LIB_DIR		=	./lib/

LD_FLAGS	=	-L$(LIB_DIR)/ -ltools -lsfml_utils -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio

RED 		=	\033[0;31m
GREEN 		=	\033[0;32m
YELLOW 		=	\033[0;33m
BLUE 		=	\033[0;34m
NC 			=	\033[0m

%.o:	%.cpp
	@$(CXX) $(CXXFLAGS) -c $< -o $@
	@echo "$(BLUE)Compiled $<$(NC)"

all:	$(NAME)
$(NAME):	$(OBJ) make_lib
	@$(CXX) -o $(NAME) $(OBJ) $(CXXFLAGS) $(LD_FLAGS)
	@echo "$(GREEN)Binary created$(NC)"

make_lib:
	@$(MAKE) -sC $(LIB_DIR)/tools/
	@$(MAKE) -sC $(LIB_DIR)/sfml_utils/
	@echo "$(BLUE)Library built$(NC)"

clean:	clean_lib
	@rm -f $(OBJ)
	@echo "$(YELLOW)Objects cleaned$(NC)"

clean_lib:
	@$(MAKE) -sC $(LIB_DIR)/tools/ clean
	@$(MAKE) -sC $(LIB_DIR)/sfml_utils/ clean
	@echo "$(YELLOW)Library objects cleaned$(NC)"

fclean:	clean fclean_lib
	@rm -f $(NAME)
	@echo "$(RED)Binary cleaned$(NC)"

fclean_lib: clean_lib
	@$(MAKE) -sC $(LIB_DIR)/tools/ fclean
	@$(MAKE) -sC $(LIB_DIR)/sfml_utils/ fclean
	@echo "$(RED)Library cleaned$(NC)"

re:	fclean all
