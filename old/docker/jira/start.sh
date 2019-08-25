sudo mkdir -p /docker/jira/data
docker container run -d --name jira -p 8080:8080 --mount type=bind,source=/docker/jira/data/,target=/var/atlassian/jira/ --mount type=bind,source=/github/ubuntu-tool/docker/jira/server.xml,target=/usr/atlassian/jira/atlassian-jira-software-7.8.2-standalone/conf/server.xml --network dockernet leerenbo/jira
