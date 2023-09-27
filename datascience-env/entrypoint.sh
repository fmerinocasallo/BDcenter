#!/bin/sh

ADDRESS=${HOSTNAME} #127.0.0.1

BOLDGREEN='\033[1;32m'
GREEN='\033[0;32m'
NOCOLOR='\033[0m' # No Color

echo -e '\n '$BOLDGREEN $IMAGENAME $NOCOLOR' \n'

echo -e '\n List of servers available in this container\n'

echo -e $GREEN'\n   Linuxserver/webport  \n'$NOCOLOR
echo -e 'http://'$HOST_NAME':'$WEBPORT'\n'

echo -e '\n Press `CTRL + D` To close the container \n'