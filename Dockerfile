FROM debian:sid-slim

# hadolint ignore=DL3008
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    tiarra \
    libio-socket-ssl-perl \
    ca-certificates \
  && rm -rf /var/lib/apt/lists/*

ENV TIARRADIR /data/
EXPOSE 6667

ENTRYPOINT ["tiarra"]
