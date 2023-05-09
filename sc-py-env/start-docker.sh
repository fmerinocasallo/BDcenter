#!/bin/bash

SERVICENAME='sc-py-env'

# Get a free port in the computer
JLPORT=`python3 -c "import socket; s=socket.socket(); s.bind(('',0)); print(s.getsockname()[1]); s.close()"`
export JLPORT

RSPORT=`python3 -c "import socket; s=socket.socket(); s.bind(('',0)); print(s.getsockname()[1]); s.close()"`
export RSPORT

#HOST_NAME=${HOSTNAME}
HOST_NAME='localhost'
export HOST_NAME
RES_UID=$UID
export RES_UID
RES_GID=$(id -g)
export RES_GID

envsubst < env_usertemplate > .env

docker compose up -d --build

docker compose exec $SERVICENAME bash