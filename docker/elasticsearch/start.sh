docker run -p 9200:9200 -p 9300:9300 --name elasticsearch6.4.3 -d --network dockernet -e ES_JAVA_OPTS="-Xms2g -Xmx2g" elasticsearch:6.4.3
