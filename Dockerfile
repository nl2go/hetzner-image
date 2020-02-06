FROM debian:buster

RUN apt-get -y update && apt-get -y install --no-install-recommends \
        linux-image-amd64 \
        systemd-sysv \
        ifupdown \
    && rm -rf /var/lib/apt/lists/*

RUN echo "root:root" | chpasswd
