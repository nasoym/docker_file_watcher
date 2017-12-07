FROM alpine:3.7
MAINTAINER Sinan Goo

RUN apk update; apk add bash inotify-tools parallel curl jq

RUN mkdir /watcher_scripts
COPY watch /watcher_scripts/
COPY send_file /watcher_scripts/
RUN mkdir /watched

CMD ["/watcher_scripts/watch"]

