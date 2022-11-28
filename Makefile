.DEFAULT_GOAL := build

build:
	ySync
.PHONY:build
deploy:
	git pull --rebase && docker-compose down && docker-compose up --build --detach
.PHONY:deploy
down:
	docker-compose down
.PHONY:down
