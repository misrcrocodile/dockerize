# Dockerize

## 1. Some docker command
```
# For adding new service
docker-compose stop
docker-compose up --no-start
docker-compose logs --follow
docker-compose up -d

# Clear after docker-compose down or docker-compose stop
docker system prune -f && docker volume prune -f && docker network prune -f && docker container prune -f

# Remove docker container via docker command
docker container stop $(docker container ls -aq)
docker container rm $(docker container ls -aq)

# Restart docker container
docker-compose restart stock-crawler

# access to maria db and create table
docker exec -it [docker-container-id] bash
mysql -u root -p

# add new container to running docker-compose
docker-compose up -d --no-deps --build <service_name>

```

