Stop the container(s) using the following command:
docker-compose down
Delete all containers using the following command:
docker rm -f $(docker ps -a -q)
Delete all volumes using the following command:
docker volume rm $(docker volume ls -q)
Restart the containers using the following command:
docker-compose up -d


docker image prune

docker container prune

docker volume prune

docker network prune

docker system prune
sudo docker system prune -f && sudo docker volume prune -f && sudo docker container prune -f
