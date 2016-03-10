FROM debian:sid
MAINTAINER KURASHIKI Satoru <lurdan@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
RUN apt update && apt install -y tiarra libio-socket-ssl-perl ca-certificates

ENV TIARRADIR /data/
EXPOSE 6667

ENTRYPOINT tiarra

