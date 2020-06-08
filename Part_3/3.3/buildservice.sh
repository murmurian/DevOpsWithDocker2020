#!/bin/bash
# Docker image builder

git clone $1 $3
docker build -t $2/$3 ./$3
docker login
docker push $2/$3
