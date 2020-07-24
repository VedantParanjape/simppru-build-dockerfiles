FROM debian:buster

RUN sudo apt update
RUN sudo apt install -y git build-essential automake autoconf bison flex
