#!/usr/bin/env bash

docker build . -t alice-in-kafkaland-consumer:latest
docker run --rm -it --network shared_network --name alice-in-kafkaland-consumer alice-in-kafkaland-consumer