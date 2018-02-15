FROM kafka-install:latest

COPY entrypoint.sh /bin/entrypoint.sh

RUN chmod a+x /bin/entrypoint.sh

EXPOSE 9092
EXPOSE 9093

ENTRYPOINT entrypoint.sh