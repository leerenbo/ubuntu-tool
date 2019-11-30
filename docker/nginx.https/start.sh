docker container run -d --name nginx -p 80:80 -p 443:443 \
	--mount type=bind,source=$(pwd)/nginx.conf,target=/etc/nginx/nginx.conf \
	--mount type=bind,source=$(pwd)/conf.d/,target=/etc/nginx/conf.d/ \
	--mount type=bind,source=$(pwd)/Nginx/,target=/Nginx/ \
	--link mu-server-web-test:mu-server-web-test --link mu-pc-dr:mu-pc-dr \
	--link emqx3:emqx3 \
	nginx
