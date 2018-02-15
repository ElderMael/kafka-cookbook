#!/bin/bash

sudo docker build --tag kafka-producer-console:latest .
sudo docker run -it kafka-producer-console:latest
