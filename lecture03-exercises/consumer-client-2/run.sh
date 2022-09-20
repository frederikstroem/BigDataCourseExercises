#!/usr/bin/env bash

docker build . -t python-consumer-client-2:latest
docker run --rm -it --network shared_network --name python-consumer-client-2 python-consumer-client-2
