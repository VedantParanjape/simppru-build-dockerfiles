FROM arm32v7/debian:buster

RUN uname -a
RUN apt update && apt install -y wget curl git build-essential flex bison autoconf automake libmpfr-dev libgmp-dev libmpc-dev texinfo libncurses5-dev cmake && wget https://github.com/dinuxbg/gnupru/archive/refs/tags/2021.10.tar.gz && apt clean
RUN tar -xvf 2021.10.tar.gz 
WORKDIR /gnupru-2021.10
ENV PREFIX=/usr/pru-gcc
RUN ./download-and-prepare.sh && ./build.sh
ENV PATH="${PATH}:/usr/pru-gcc/bin"
RUN pru-gcc -v && rm ../gnupru-2021.10 -rf
