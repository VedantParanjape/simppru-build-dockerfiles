FROM debian:buster

RUN apt update
RUN apt install -y git build-essential automake autoconf bison flex
