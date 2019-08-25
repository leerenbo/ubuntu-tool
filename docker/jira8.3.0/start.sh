docker container run -d --name jira8.3.0 -p 7070:8080 \
 --mount type=bind,source=$(pwd)/crowd.properties,target=/usr/atlassian/jira/atlassian-jira-software-8.3.0-standalone/atlassian-jira/WEB-INF/classes/crowd.properties \
 --mount type=bind,source=$(pwd)/seraph-config.xml,target=/usr/atlassian/jira/atlassian-jira-software-8.3.0-standalone/atlassian-jira/WEB-INF/classes/seraph-config.xml \
 --mount type=bind,source=/etc/localtime,target=/etc/localtime \
 --mount type=bind,source=$(pwd)/server.xml,target=/usr/atlassian/jira/atlassian-jira-software-8.3.0-standalone/conf/server.xml \
 --mount type=bind,source=$(pwd)/setenv.sh,target=/usr/atlassian/jira/atlassian-jira-software-8.3.0-standalone/bin/setenv.sh \
 --network dockernet \
 leerenbo/jira:8.3.0
