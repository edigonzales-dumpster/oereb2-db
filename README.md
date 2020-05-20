# OEREB Database V 1.x

[![Build Status](https://travis-ci.org/oereb/oereb2-db.svg?branch=master)](https://travis-ci.org/sogis/oereb2-db)
[![Docker Pulls](https://img.shields.io/docker/pulls/sogis/oereb2-db.svg)](https://hub.docker.com/r/sogis/oereb2-db)

Docker image providing a PostGIS database with OEREB tables

## Building and testing the image

The image is built and tested automatically by Travis CI and is available from https://hub.docker.com/r/sogis/oereb-db.

Commands for building and testing the image manually:

```
docker build -t sogis/oereb2-db:latest .
docker-compose -f docker-compose.test.yml build
docker-compose -f docker-compose.test.yml down
docker-compose -f docker-compose.test.yml run sut
```
