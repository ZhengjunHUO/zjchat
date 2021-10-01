A messaging app demo based on [ZJunx framework](https://github.com/ZhengjunHUO/zjunx)

```bash
# (1/2) Run the server in terminal
$ go run main.go [options]

# (2/2) Build docker image, run the server in container
$ docker build -t zjchat:v1 .
$ docker run -d -p 8080:8080 -e TZ='Europe/Paris' [-v <PATH/TO/SSL/>:/ssl/] --name zjchatServer --restart=always zjchat:v1

# Run the client. Duplicate the chat.go file, change
# the name and run a second client and it's ok to chat
$ go run client/chat.go
```
