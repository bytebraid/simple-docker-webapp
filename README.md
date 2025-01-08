[![Main build + tests](https://github.com/bytebraid/simple-docker-webapp/actions/workflows/build-test.yaml/badge.svg)](https://github.com/bytebraid/simple-docker-webapp/actions/workflows/build-test.yaml)

Usage
=====

This is a simple hello world web app with CI / CD workflows.

It deploys a flask server on port 11000. Visit /hello to get a response.

A self hosted runner is building and serving this codebase behind an nginx reverse proxy at https://radon.parallaxed.net/hello
