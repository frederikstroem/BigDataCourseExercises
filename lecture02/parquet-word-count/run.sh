#!/usr/bin/env bash

docker build . -t python-client:latest
docker run --rm --network hadoop --name python-client python-client
