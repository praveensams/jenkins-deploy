FROM jenkins

MAINTAINER praveensam

USER root

COPY apache-ant-1.9.13-bin.tar.gz /usr/local/src/

RUN cd /usr/local/src \
    && tar -zxf apache-ant-1.9.13-bin.tar.gz \
    && mkdir /ant \
    && cp -rf apache-ant*/* /ant/ \
    && apt-get update \
    && apt-get install vim git -y \
    && echo "M2_HOME=/ant \nPATH=/ant/bin:$PATH" > /etc/profile.d/ant.sh

USER jenkins
