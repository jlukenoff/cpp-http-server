FROM ubuntu:22.04

COPY . /usr/local/app/
WORKDIR /usr/local/app

RUN apt-get update && \
    apt-get install -y cmake g++ make

RUN mkdir -p build && \
    cd build && \
    rm -rf * && \
    cmake .. \
    && make

WORKDIR /usr/local/app/build
