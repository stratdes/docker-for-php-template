#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

docker-compose -f $SCRIPT_DIR/../docker/docker-compose.yaml run console php bin/console.php "$@"
