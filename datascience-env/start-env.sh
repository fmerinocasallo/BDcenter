#!/bin/bash

SERVICENAME='datascience-env'
export SERVICENAME

COMPOSE_PROJECT_NAME=$USER-$SERVICENAME
export COMPOSE_PROJECT_NAME

# Get a free port in the computer
JLPORT=`python3 -c "import socket; s=socket.socket(); s.bind(('',0)); print(s.getsockname()[1]); s.close()"`
export JLPORT

HOST_NAME=${HOSTNAME}
#HOST_NAME='localhost'
export HOST_NAME
RES_UID=$(id -u)
export RES_UID
RES_GID=$(id -g)
export RES_GID

envsubst < env_usertemplate > .env

docker compose up -d

sleep 5

bash ./entrypoint.sh

# Print container version
docker compose exec $SERVICENAME bash -c 'echo "$DOCKER_IMAGE_NAME:$VERSION";echo' 

docker compose exec --user jovyan $SERVICENAME bash

docker compose down