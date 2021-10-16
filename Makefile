.PHONY: all
.DEFAULT_GOAL := build

build_server: main.go
	go build -o zjchatServer $^

build_client: client/chat_tls.go 
	go build -o client/zjchatClient $^

build: build_server build_client

clean:
	rm -f zjchatServer client/zjchatClient
