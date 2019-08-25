sudo mkdir -p /docker/bitbucket/data
sudo chmod oug+rwx /docker/bitbucket/data
docker container run -d --name bitbucket -p 7990:7990 --mount type=bind,source=/docker/bitbucket/data/,target=/var/atlassian/bitbucket/  --network dockernet leerenbo/bitbucket
