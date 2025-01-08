#!/bin/bash
docker stop simple-docker-webapp
docker rm simple-docker-webapp
docker build -t simple-docker-webapp .

# This is not production ready, Flask is a dev server
# Should use the -u flag to specify a user other than root
docker run -d -p 11000:11000 --name simple-docker-webapp simple-docker-webapp