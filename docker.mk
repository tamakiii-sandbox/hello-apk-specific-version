.PHONY: install clean

NAME := tamakiii-sandbox/hello-apk-specific-version
CMD := ash

install: build

build:
	docker build -t $(NAME) .

run:
	docker run --rm -it $(NAME) $(CMD)

clean:
	docker image rm $(NAME)
