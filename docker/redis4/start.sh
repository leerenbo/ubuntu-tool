docker run -p 6379:6379 --name redis4 --network dockernet --mount type=bind,source=$(pwd)/redis.conf,target=/usr/local/etc/redis/redis.conf -d redis:4 redis-server /usr/local/etc/redis/redis.conf
