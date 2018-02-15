#!/bin/bash

set -ex

zkServer.sh start

kafka-server-start.sh /opt/kafka/config/server.properties &

sleep 10s

kafka-topics.sh \
    --create \
    --zookeeper localhost:2181 \
    --replication-factor 1 \
    --partitions 1 \
    --topic humbleTopic

sleep 10s

kafka-topics.sh --list --zookeeper localhost:2181 humbleTopic

kafka-console-producer.sh --broker-list localhost:9092 --topic humbleTopic

read -n1 -r -p "Press space to continue..." key
