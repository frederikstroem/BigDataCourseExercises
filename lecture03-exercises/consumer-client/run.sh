#!/usr/bin/env bash

docker build . -t python-consumer-client:latest
docker run --rm -it --network shared_network --name python-consumer-client python-consumer-client
