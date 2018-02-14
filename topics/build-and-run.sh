#!/bin/bash

sudo docker build --tag kafka-topics:latest .
sudo docker run -it kafka-topics:latest
