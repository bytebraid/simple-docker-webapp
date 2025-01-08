#!/bin/bash
sudo -g docker docker stop simple-docker-webapp
sudo -g docker docker rm simple-docker-webapp
sudo -g docker docker build -t simple-docker-webapp .

# This is not production ready, Flask is a dev server
# Should use the -u flag to specify a user other than root
sudo -g docker docker run -d -p 11000:11000 --name simple-docker-webapp simple-docker-webapp