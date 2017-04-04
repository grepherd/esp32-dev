
# http://esp-idf.readthedocs.io/en/latest/linux-setup.html

FROM ubuntu:xenial

RUN apt-get update && apt-get install -y git wget make libncurses-dev flex bison gperf python python-serial

RUN mkdir /tools
WORKDIR /tools
RUN wget https://dl.espressif.com/dl/xtensa-esp32-elf-linux64-1.22.0-61-gab8375a-5.2.0.tar.gz
RUN tar -xvf xtensa-esp32-elf-linux64-1.22.0-61-gab8375a-5.2.0.tar.gz
RUN rm xtensa-esp32-elf-linux64-1.22.0-61-gab8375a-5.2.0.tar.gz

ENV PATH=$PATH:/tools/xtensa-esp32-elf/bin

WORKDIR /tools

RUN git clone --recursive https://github.com/espressif/esp-idf.git
ENV IDF_PATH=/tools/esp-idf

RUN mkdir /volume
WORKDIR /volume
