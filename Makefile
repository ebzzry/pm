NAME=pm
DEST=$(HOME)/bin
BINARY=$(DEST)/$(NAME)
SCRIPT=$(PWD)/$(NAME)
CL=cl-launch

.PHONY: all $(NAME) clean

all: $(NAME)

$(NAME):
	@$(CL) --output $(NAME) --dump ! --lisp sbcl --quicklisp --system $(NAME) --dispatch-system $(NAME)/pm

install: $(NAME)
	@ln -sf $(SCRIPT) $(BINARY)

clean:
	@rm -f $(NAME)
