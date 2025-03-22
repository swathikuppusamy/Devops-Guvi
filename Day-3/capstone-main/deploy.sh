#!/bin/bash

echo "Starting deployment..."

chmod +x build.sh
./build.sh

# Log in to Docker using environment variables
docker login -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD"

docker tag test "$DOCKER_USERNAME/dev"
docker push "$DOCKER_USERNAME/dev"

docker-compose up -d
