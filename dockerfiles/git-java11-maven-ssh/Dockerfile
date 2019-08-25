FROM leerenbo/ubuntu-docker:latest

RUN sed -i -r 's/(archive|security).ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list \
	&& ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
	&& apt-get update && apt-get install -y --no-install-recommends \
		git openjdk-11-jdk maven tzdata\
	&& rm -rf /var/lib/apt/lists/*

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64

CMD ["/usr/bash"]
