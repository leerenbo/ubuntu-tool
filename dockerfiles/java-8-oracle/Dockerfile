FROM ubuntu:16.04
 
WORKDIR /dockerfile/
RUN sed -i -r 's/(archive|security).ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list \
 && echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" > /etc/apt/sources.list.d/webupd8team-java.list \
 && echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" >> /etc/apt/sources.list.d/webupd8team-java.list \
 && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886 \
 && apt-get update \
 && echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | /usr/bin/debconf-set-selections \
 && apt-get install -y oracle-java8-installer \
 && rm -rf /var/lib/apt/lists/* \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* \
 && rm -rf /var/cache/*

ENV JAVA_HOME=/usr/lib/jvm/java-8-oracle 

