sudo mkdir -p /docker/mmysql8/data;
docker container run -d -p 3306:3306 --name mysql8  --mount type=bind,source=/etc/localtime,target=/etc/localtime --mount type=bind,source=/github/ubuntu-tool/docker/mysql8/config/,target=/etc/mysql/conf.d --mount type=bind,source=/docker/mysql8/data,target=/var/lib/mysql --network dockernet -e MYSQL_ROOT_PASSWORD=yxYYPNoZfKiT1Ior mysql:8

