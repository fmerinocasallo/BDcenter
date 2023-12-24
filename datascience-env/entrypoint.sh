#!/bin/sh

ADDRESS=${HOSTNAME} #127.0.0.1

BOLDGREEN='\033[1;32m'
GREEN='\033[0;32m'
NOCOLOR='\033[0m' # No Color

echo -e '\n '$BOLDGREEN $SERVICENAME $NOCOLOR' \n'

echo -e '\n List of servers available in this container\n'

docker compose exec --user jovyan $SERVICENAME jupyter server list

echo -e '\n\n If no container is listed, run the command `jl` in the terminal'

echo -e '\n Press `CTRL + D` To close the container \n'