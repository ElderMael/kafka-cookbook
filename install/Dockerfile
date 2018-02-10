FROM centos:latest

ENV container=docker \
    JAVA_HOME=/usr/lib/jvm/jre \
    SCALA_HOME=/opt/scala

RUN yum install -y java-1.8.0-openjdk-devel

ADD https://downloads.lightbend.com/scala/2.12.4/scala-2.12.4.tgz /tmp/scala.tgz

RUN mkdir -p $SCALA_HOME \
    && tar xzf /tmp/scala.tgz --strip-components=1 --directory $SCALA_HOME

ENV PATH="${SCALA_HOME}/bin:${PATH}"
