FROM leerenbo/java-8-oracle
ENV JIRA_VERSION=8.3.0 JIRA_HOME=/var/atlassian/jira
RUN wget -c https://product-downloads.atlassian.com/software/jira/downloads/atlassian-jira-software-${JIRA_VERSION}.tar.gz \
&& mkdir -p /usr/atlassian/jira/ \
&& tar -zxvf atlassian-jira-software-${JIRA_VERSION}.tar.gz -C /usr/atlassian/jira/ \
&& rm -f atlassian-jira-software-${JIRA_VERSION}.tar.gz
COPY atlassian-extras-3.2.jar /usr/atlassian/jira/atlassian-jira-software-${JIRA_VERSION}-standalone/atlassian-jira/WEB-INF/lib/
COPY mysql-connector-java-5.1.46.jar /usr/atlassian/jira/atlassian-jira-software-${JIRA_VERSION}-standalone/atlassian-jira/WEB-INF/lib/
EXPOSE 8080
VOLUME /var/atlassian/jira
CMD /bin/bash /usr/atlassian/jira/atlassian-jira-software-${JIRA_VERSION}-standalone/bin/start-jira.sh -fg

