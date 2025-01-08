#!/bin/bash

docker build -t simple-docker-webapp .

# This is not production ready, Flask is a dev server
# Should use the -u flag to specify a user other than root
docker run -p 11000:11000 simple-docker-webapp