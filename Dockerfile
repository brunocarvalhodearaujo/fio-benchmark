FROM ubuntu:22.04

RUN apt update && \
  apt install -y \
    fio \
    gnuplot \
  apt clean

COPY jobs /jobs
VOLUME /data
WORKDIR /data

ENTRYPOINT [ "fio" ]
