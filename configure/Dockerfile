FROM kafka-install:latest

COPY synergy-1.properties /opt/kafka/config/
COPY synergy-2.properties /opt/kafka/config/
COPY entrypoint.sh /bin/entrypoint.sh

RUN chmod a+x /bin/entrypoint.sh

EXPOSE 9092
EXPOSE 9093
EXPOSE 9094

ENTRYPOINT entrypoint.sh