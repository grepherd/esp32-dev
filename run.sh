#!/bin/bash

# Build and run the esp32 container

sudo docker build -t esp32 .
sudo docker run -it -v ${PWD}/volume:/volume --device /dev/ttyUSB0 esp32