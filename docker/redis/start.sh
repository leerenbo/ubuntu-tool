sudo mkdir -p /docker/redis/data/
docker run -p 6379:6379 --name redis --network dockernet --mount type=bind,source=/github/ubuntu-tool/docker/redis/redis.conf,target=/usr/local/etc/redis/redis.conf --mount type=bind,source=/docker/redis/data/,target=/data -d redis redis-server /usr/local/etc/redis/redis.conf
