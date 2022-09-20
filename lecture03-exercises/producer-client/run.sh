#!/usr/bin/env bash

docker build . -t python-producer-client:latest
docker run --rm -it --network shared_network --name python-producer-client python-producer-client
