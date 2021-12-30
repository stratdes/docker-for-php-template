#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

docker-compose -f $SCRIPT_DIR/../docker/docker-compose.yaml pull php-fpm nginx
docker-compose -f $SCRIPT_DIR/../docker/docker-compose.yaml up -d php-fpm nginx
