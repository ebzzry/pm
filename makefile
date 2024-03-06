NAME=pm
CL=cl-launch

.PHONY: all $(NAME) clean

all: $(NAME)

$(NAME):
	@$(CL) --output $(NAME) --dump ! --lisp sbcl --quicklisp --system $(NAME) --dispatch-system $(NAME)/pm

clean:
	@rm -f $(NAME)
