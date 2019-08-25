FROM leerenbo/java-8-oracle
ENV CONFLUENCE_VERSION=6.15.7 CONFLUENCE_HOME=/var/atlassian/confluence
RUN wget -c https://product-downloads.atlassian.com/software/confluence/downloads/atlassian-confluence-${CONFLUENCE_VERSION}.tar.gz\
&& mkdir -p /usr/atlassian/confluence/ \
&& tar -zxvf atlassian-confluence-${CONFLUENCE_VERSION}.tar.gz -C /usr/atlassian/confluence/ \
&& rm -f atlassian-confluence-${CONFLUENCE_VERSION}.tar.gz \
&& echo 'confluence.home=/var/atlassian/confluence/' > /usr/atlassian/confluence/atlassian-confluence-${CONFLUENCE_VERSION}/confluence/WEB-INF/classes/confluence-init.properties
COPY atlassian-extras-decoder-v2-3.4.1.jar /usr/atlassian/confluence/atlassian-confluence-${CONFLUENCE_VERSION}/confluence/WEB-INF/lib/
COPY mysql-connector-java-5.1.46.jar /usr/atlassian/confluence/atlassian-confluence-${CONFLUENCE_VERSION}/confluence/WEB-INF/lib/
EXPOSE 8090
VOLUME /var/atlassian/confluence
CMD /bin/bash /usr/atlassian/confluence/atlassian-confluence-${CONFLUENCE_VERSION}/bin/start-confluence.sh -fg

