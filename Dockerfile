FROM debian:stable-slim

RUN apt update && apt install -y\
    chromium \
    wget \
    && rm -rf /var/lib/apt/lists/*

USER root
RUN mkdir /rumble
RUN openssl rand -hex 16 > /rumble/hostname
WORKDIR /rumble

COPY run.sh /
RUN chmod +x /run.sh
ENTRYPOINT [ "/bin/bash", "/run.sh"]


