A messaging app demo based on [ZJunx framework](https://github.com/ZhengjunHUO/zjunx)

Handlers are implemented to allow clients connected to the server to have a group chat.

```bash
# Run the server in terminal
$ go run main.go [options]

# OR Run the server in container
$ docker build -t zjchat:v1 .
$ docker run -d -p 8080:8080 -e TZ='Europe/Paris' [-v <PATH/TO/SSL/>:/ssl/] --name zjchatServer --restart=always zjchat:v1 [options]

# Run the client. Duplicate the chat.go file, change
# the name and run a second client and it's ok to chat
$ go run client/chat_tls.go
```
