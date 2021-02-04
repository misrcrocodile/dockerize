# Dockerize

##1. Some docker command
```
# For adding new service
docker-compose stop
docker-compose up --no-start
docker-compose logs --follow
docker-compose up -d

# Clear after docker-compose down or docker-compose stop
docker system prune -f && docker volume prune -f && docker network prune -f && docker container prune -f

# access to maria db and create table
docker exec -it [docker-container-id] bash
mysql -u root -p

```

