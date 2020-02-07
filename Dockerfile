FROM debian:buster

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update && apt-get -y install --no-install-recommends \
        linux-image-amd64 \
        systemd-sysv \
        ifupdown \
        udev \
        dbus \
        mdadm \
        openssh-server \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get -y update && apt-get -y install \
        grub \
    && rm -rf /var/lib/apt/lists/*

COPY .docker/ /

RUN echo "root:root" | chpasswd
