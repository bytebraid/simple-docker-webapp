[![Main build + tests](https://github.com/bytebraid/simple-docker-webapp/actions/workflows/build-test.yaml/badge.svg)](https://github.com/bytebraid/simple-docker-webapp/actions/workflows/build-test.yaml) [![Runner Deployment](https://github.com/bytebraid/simple-docker-webapp/actions/workflows/docker-deploy.yaml/badge.svg)](https://github.com/bytebraid/simple-docker-webapp/actions/workflows/docker-deploy.yaml) [![Coverage Status](https://raw.githubusercontent.com/bytebraid/simple-docker-webapp/af517b501235ff3a8f38285929203c9de16490e0/src/reports/coverage/coverage-badge.svg)](https://github.com/bytebraid/simple-docker-webapp/tree/main/src/reports/coverage/index.html)


Usage
=====

This is a simple hello world web app with CI / CD workflows, contained in Docker.

Clone the repository.

Use run.sh or manually run the docker commands to build and start the container.

It deploys a flask server on port 11000. Visit http://localhost:11000/hello to get a response.

Log files for the service are written to APP_ROOT as defined in settings.ini, visible from within the container.

A self hosted runner is building and serving this codebase behind an nginx reverse proxy at https://radon.parallaxed.net/hello
