FROM leerenbo/java-8-oracle
ENV CROWD_VERSION=3.5.0 CROWD_HOME=/var/atlassian/crowd/
RUN wget -c https://product-downloads.atlassian.com/software/crowd/downloads/atlassian-crowd-${CROWD_VERSION}.tar.gz \
&& mkdir -p /usr/atlassian/crowd/ \
&& tar -zxvf atlassian-crowd-${CROWD_VERSION}.tar.gz -C /usr/atlassian/crowd/ \
&& rm -f atlassian-crowd-${CROWD_VERSION}.tar.gz \
&& echo "crowd.home=${CROWD_HOME}" > /usr/atlassian/crowd/atlassian-crowd-${CROWD_VERSION}/crowd-webapp/WEB-INF/classes/crowd-init.properties
COPY atlassian-extras-3.2.jar /usr/atlassian/crowd/atlassian-crowd-${CROWD_VERSION}/crowd-webapp/WEB-INF/lib/
COPY mysql-connector-java-5.1.46.jar /usr/atlassian/crowd/atlassian-crowd-${CROWD_VERSION}/crowd-webapp/WEB-INF/lib/
EXPOSE 8095
VOLUME /var/atlassian/crowd
CMD /bin/bash /usr/atlassian/crowd/atlassian-crowd-${CROWD_VERSION}/start_crowd.sh -fg

