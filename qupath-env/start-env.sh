#!/bin/bash

SERVICENAME='qupath'
export SERVICENAME

# Get a free port in the computer
WEBPORT=`python3 -c "import socket; s=socket.socket(); s.bind(('',0)); print(s.getsockname()[1]); s.close()"`
export WEBPORT

HOST_NAME=${HOSTNAME}
export HOST_NAME
RES_UID=$(id -u)
export RES_UID
RES_GID=$(id -g)
export RES_GID

envsubst < env_usertemplate > .env

docker compose up -d

bash ./entrypoint.sh

# Print container version
docker compose exec $SERVICENAME bash -c 'echo "$DOCKER_IMAGE_NAME:$VERSION";echo' 

docker compose exec $SERVICENAME bash

docker compose down