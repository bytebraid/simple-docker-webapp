[![Main build + tests](https://github.com/bytebraid/simple-docker-webapp/actions/workflows/build-test.yaml/badge.svg)](https://github.com/bytebraid/simple-docker-webapp/actions/workflows/build-test.yaml) [![Runner Deployment](https://github.com/bytebraid/simple-docker-webapp/actions/workflows/docker-deploy.yaml/badge.svg)](https://github.com/bytebraid/simple-docker-webapp/actions/workflows/docker-deploy.yaml) [![Coverage Status](https://github.com/bytebraid/simple-docker-webapp/tree/main/src/reports/coverage/coverage-badge.svg?dummy=8484744)](https://github.com/bytebraid/simple-docker-webapp/tree/main/src/reports/coverage/index.html)


Usage
=====

This is a simple hello world web app with CI / CD workflows, contained in Docker.

Clone the repository.



It deploys a flask server on port 11000. Visit /hello to get a response.

A self hosted runner is building and serving this codebase behind an nginx reverse proxy at https://radon.parallaxed.net/hello
