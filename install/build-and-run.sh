#!/bin/bash

sudo docker build --tag kafka-install:latest .
sudo docker run -it kafka-install:latest