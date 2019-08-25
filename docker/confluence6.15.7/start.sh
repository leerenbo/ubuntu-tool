docker container run -d --name confluence6.15.7 -p 8090:8090 \
 --mount type=bind,source=$(pwd)/crowd.properties,target=/usr/atlassian/confluence/atlassian-confluence-6.15.7/confluence/WEB-INF/classes/crowd.properties \
 --mount type=bind,source=$(pwd)/seraph-config.xml,target=/usr/atlassian/confluence/atlassian-confluence-6.15.7/confluence/WEB-INF/classes/seraph-config.xml \
 --mount type=bind,source=/etc/localtime,target=/etc/localtime \
 --mount type=bind,source=$(pwd)/server.xml,target=/usr/atlassian/confluence/atlassian-confluence-6.15.7/conf/server.xml \
 --mount type=bind,source=$(pwd)/setenv.sh,target=/usr/atlassian/confluence/atlassian-confluence-6.15.7/bin/setenv.sh \
 --network dockernet leerenbo/confluence:6.15.7
