#!/bin/bash

zkServer.sh start

sleep 10s
kafka-server-start.sh /opt/kafka/config/synergy-1.properties &
sleep 10s
kafka-server-start.sh /opt/kafka/config/synergy-2.properties &
sleep 10s
read -n1 -r -p "Press space to continue..." key