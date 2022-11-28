.DEFAULT_GOAL := build
fmt:
	go fmt ./...
.PHONY:fmt
lint: fmt
	golint ./...
.PHONY:lint
vet: fmt
	go vet ./...
.PHONY:vet
build: vet
	go build -o ySync cmd/main.go 
.PHONY:build
deploy:
	git pull --rebase && docker-compose down && docker-compose up --build --detach
.PHONY:deploy
down:
	docker-compose down
.PHONY:down
