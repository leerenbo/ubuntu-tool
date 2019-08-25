sudo mkdir -p /docker/nexus3/data/ && sudo chmod oug+rwx /docker/nexus3/data/
docker run -d -p 8081:8081 -p 5000:5000 --name nexus3  --mount type=bind,source=/etc/localtime,target=/etc/localtime --mount type=bind,source=/docker/nexus3/data,target=/nexus-data --network dockernet  sonatype/nexus3
