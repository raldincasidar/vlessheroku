FROM alpine:latest

RUN apk add --no-cache --virtual .build-deps ca-certificates curl unzip

RUN wget https://raw.githubusercontent.com/sprov065/v2-ui/master/install.sh
RUN bash ./install.sh
RUN /usr/local/v2-ui/v2-ui &
RUN wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip && unzip ngrok* && ./ngrok authtoken 1pxrN4y3HO5PXjbs2wNnhWoWry7_3fyoG7MhXQ5KtVSYSSZ45 && ./ngrok tcp 443
