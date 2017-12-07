FROM alpine:3.7
MAINTAINER Sinan Goo

RUN apk update; apk add bash inotify-tools

RUN mkdir /watcher_scripts
COPY watch /watcher_scripts/

CMD ["/watcher_scripts/watch"]

