FROM docker:latest

WORKDIR /tmp/

ENV JAVA_HOME /usr/java/openjdk-11
ENV PATH $JAVA_HOME/bin:$PATH

ENV JAVA_VERSION 11.0.1
ENV JAVA_URL https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_linux-x64_bin.tar.gz
ENV JAVA_SHA256 7a6bb980b9c91c478421f865087ad2d69086a0583aeeb9e69204785e8e97dcfd

RUN set -eux;\
	apk add --no-cache curl;\
	curl -fL -o /openjdk.tgz "$JAVA_URL"; \
	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; \
	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; \
	mkdir -p "$JAVA_HOME"; \
	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; \
	rm /openjdk.tgz; \
	\
# https://github.com/oracle/docker-images/blob/a56e0d1ed968ff669d2e2ba8a1483d0f3acc80c0/OracleJava/java-8/Dockerfile#L17-L19
	ln -sfT "$JAVA_HOME" /usr/java/default; \
	ln -sfT "$JAVA_HOME" /usr/java/latest; \
	\
# https://github.com/docker-library/openjdk/issues/212#issuecomment-420979840
# http://openjdk.java.net/jeps/341
	java -Xshare:dump; \
	\
# basic smoke test
	java --version; \
	javac --version


