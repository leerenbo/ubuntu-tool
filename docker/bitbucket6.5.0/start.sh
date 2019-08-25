docker container run -d --name bitbucket -p 7990:7990 -p 7999:7999 --mount type=bind,source=/etc/localtime,target=/etc/localtime --network dockernet leerenbo/bitbucket:6.5.0
