FROM ubuntu:22.04

RUN apt update && \
  apt install -y \
    fio \
    zlib1g-dev \
    libjpeg-dev \
    python3-pip && \
  apt clean

COPY jobs /jobs
VOLUME /data
WORKDIR /data

ENTRYPOINT [ "fio" ]
