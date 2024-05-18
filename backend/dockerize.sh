docker build -t hoangdntdc/devops-demo-backend .

docker run -d --restart=always --name=devops-backend -p 8080:3000 hoangdntdc/devops-demo-backend

docker login -u hoangdntdc

docker push hoangdntdc/devops-demo-backend:latest

docker image tag hoangdntdc/devops-demo-backend hoangdntdc/devops-demo-backend:1.0

docker push hoangdntdc/devops-demo-backend:1.0

# List running containers
docker ps

# List all containers
docker ps -a

# Lifecycle container
docker stop devops-backend

docker start devops-backend

docker rm -f devops-backend

# Clean up disk
docker image prune -a

# Show log of a container
docker logs devops-backend

# 
docker run --name devops-db -e MYSQL_ROOT_PASSWORD="123456" -e MYSQL_USER="admin" -e MYSQL_PASSWORD="admin" -e MYSQL_DATABASE="tdc-devops" -p 3306:3306 -d mysql:8.0