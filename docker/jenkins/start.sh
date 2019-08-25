docker run -u root -d -p 8088:8080 -p 50000:50000 \
 --name jenkinsblueocean1.18.0 \
 --mount type=bind,source=/etc/localtime,target=/etc/localtime \
 --mount type=bind,source=/var/run/docker.sock,target=/var/run/docker.sock \
 --network dockernet jenkinsci/blueocean:1.18.0

# --mount type=bind,source=/docker/jenkins/data,target/var/jenkins_home \

