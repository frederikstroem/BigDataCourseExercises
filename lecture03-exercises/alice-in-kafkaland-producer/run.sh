#!/usr/bin/env bash

docker build . -t alice-in-kafkaland-producer:latest
docker run --rm -it --network shared_network --name alice-in-kafkaland-producer alice-in-kafkaland-producer
