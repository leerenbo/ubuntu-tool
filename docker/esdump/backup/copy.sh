for index in $*
do
elasticdump --input=http://172.16.0.17:9200/$index --output=http://172.16.0.17:9201/$index --type=analyzer
elasticdump --input=http://172.16.0.17:9200/$index --output=http://172.16.0.17:9201/$index --type=mapping 
elasticdump --input=http://172.16.0.17:9200/$index --output=http://172.16.0.17:9201/$index --limit 1000
done
