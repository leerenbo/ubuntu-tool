docker run --rm -ti \
	--mount type=bind,source=$(pwd)/backup/,target=/tmp/backup/ \
	taskrabbit/elasticsearch-dump sh
