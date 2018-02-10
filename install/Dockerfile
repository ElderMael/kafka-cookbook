FROM centos:latest

ENV container=docker \
    JAVA_HOME=/usr/lib/jvm/jre \
    SCALA_HOME=/opt/scala \
    KAFKA_HOME=/opt/kafka \
    ZOOKEEPER_HOME=/opt/zookeeper

RUN yum install -y java-1.8.0-openjdk-devel

ADD https://downloads.lightbend.com/scala/2.12.4/scala-2.12.4.tgz /tmp/scala.tgz
ADD http://apache.mirrors.pair.com/zookeeper/zookeeper-3.4.10/zookeeper-3.4.10.tar.gz /tmp/zookeeper.tar.gz
ADD http://apache.mirrors.hoobly.com/kafka/1.0.0/kafka_2.12-1.0.0.tgz /tmp/kafka.tgz

RUN mkdir -p $SCALA_HOME \
    && tar xzf /tmp/scala.tgz --strip-components=1 --directory $SCALA_HOME \
    && mkdir -p /opt/zookeeper/ \
    && tar xzf /tmp/zookeeper.tar.gz --strip-components=1 --directory $ZOOKEEPER_HOME \
    && mkdir -p $KAFKA_HOME \
    && tar -xvzf /tmp/kafka.tgz --strip-components=1 --directory $KAFKA_HOME \
    && cp $ZOOKEEPER_HOME/conf/zoo_sample.cfg $ZOOKEEPER_HOME/conf/zoo.cfg

ENV PATH="${SCALA_HOME}/bin:$KAFKA_HOME/bin:$ZOOKEEPER_HOME/bin:${PATH}"

EXPOSE 9092
EXPOSE 9093

ENTRYPOINT zkServer.sh start && kafka-server-start.sh /opt/kafka/config/server.properties