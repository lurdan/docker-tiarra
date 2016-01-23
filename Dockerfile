FROM debian:sid
MAINTAINER KURASHIKI Satoru <lurdan@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
RUN apt update
RUN apt install -y tiarra libio-socket-ssl-perl

ENV TIARRADIR /data/
EXPOSE 6667

ENTRYPOINT tiarra
