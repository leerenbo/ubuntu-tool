
docker run -d --name emqx3 -p 1883:1883 -p 8083:8083 -p 8883:8883 -p 8084:8084 -p 18083:18083 --network dockernet  emqx/emqx:v3.2.1

