sudo mkdir -p /docker/confluence/data
docker container run -d --name confluence -p 8090:8090 --mount type=bind,source=/docker/confluence/data/,target=/var/atlassian/confluence/ --mount type=bind,source=/github/ubuntu-tool/docker/confluence/server.xml,target=/usr/atlassian/confluence/atlassian-confluence-6.8.1/conf/server.xml --network dockernet leerenbo/confluence
