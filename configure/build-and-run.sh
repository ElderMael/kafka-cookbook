#!/bin/bash

sudo docker build --tag kafka-configure:latest .
sudo docker run -it kafka-configure:latest