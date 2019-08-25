FROM leerenbo/git-java11-maven-ssh
#git
RUN apt-get update \
 && apt-get install -y gpg \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* \
 && rm -rf /var/cache/*
#gosu
ENV GOSU_VERSION 1.11
RUN set -x \
	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" \
	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" \
	&& export GNUPGHOME="$(mktemp -d)" \
	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 \
	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu \
	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc \
	&& chmod +x /usr/local/bin/gosu \
	&& mkdir /dockerfile \
	&& chmod ogu+rwx /dockerfile/ \
	&& gosu nobody true
#bitbucket
RUN mkdir -p /usr/atlassian/bitbucket/ \
	&& chmod ogu+rwx /usr/atlassian/bitbucket \
	&& groupadd bitbucket \
        && useradd -g bitbucket bitbucket \
        && mkdir -p /var/atlassian/bitbucket \
        && chmod ogu+rwx /var/atlassian/bitbucket
VOLUME /var/atlassian/bitbucket
USER bitbucket

ENV BITBUCKET_VERSION=6.5.0 BITBUCKET_HOME=/var/atlassian/bitbucket
RUN wget -c https://product-downloads.atlassian.com/software/stash/downloads/atlassian-bitbucket-${BITBUCKET_VERSION}.tar.gz \
&& mkdir -p /usr/atlassian/bitbucket/ \
&& tar -zxvf atlassian-bitbucket-${BITBUCKET_VERSION}.tar.gz -C /usr/atlassian/bitbucket/ \
&& ls -al /usr/atlassian/bitbucket/atlassian-bitbucket-${BITBUCKET_VERSION}/ \
&& rm -f atlassian-bitbucket-${BITBUCKET_VERSION}.tar.gz
COPY atlassian-extras-decoder-v2-3.3.0.jar /usr/atlassian/bitbucket/atlassian-bitbucket-${BITBUCKET_VERSION}/app/WEB-INF/lib/
COPY mysql-connector-java-5.1.46.jar /usr/atlassian/bitbucket/atlassian-bitbucket-${BITBUCKET_VERSION}/app/WEB-INF/lib/
EXPOSE 7990
EXPOSE 7992
EXPOSE 7993
#RUN groupadd bitbucket \
#	&& useradd -g bitbucket bitbucket \
#	&& mkdir -p /var/atlassian/bitbucket \
#	&& chmod ogu+rwx /var/atlassian/bitbucket 
#VOLUME /var/atlassian/bitbucket
#USER bitbucket
#RUN ls -al /usr/atlassian/bitbucket/atlassian-bitbucket-${BITBUCKET_VERSION}/
#CMD [ "exec", "gosu", "bitbucket", "/bin/bash" , "/usr/atlassian/bitbucket/atlassian-bitbucket-${BITBUCKET_VERSION}/bin/start-bitbucket.sh -fg" ]
CMD /bin/bash /usr/atlassian/bitbucket/atlassian-bitbucket-${BITBUCKET_VERSION}/bin/start-bitbucket.sh -fg

