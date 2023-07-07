#!/bin/sh

ADDRESS=${HOSTNAME} #127.0.0.1

RSPORT=`python3 -c "import socket; s=socket.socket(); s.bind(('',0)); print(s.getsockname()[1]); s.close()"` #7878
JLPORT=`python3 -c "import socket; s=socket.socket(); s.bind(('',0)); print(s.getsockname()[1]); s.close()"` #7878

BOLDGREEN='\033[1;32m'
GREEN='\033[0;32m'
NOCOLOR='\033[0m' # No Color

echo -e '\n '$BOLDGREEN $IMAGENAME $NOCOLOR' \n'

echo -e '\n List of servers available in this container\n'

echo -e $GREEN'\n   Rstudio\n'$NOCOLOR
echo -e 'http://'$ADDRESS':'$RSPORT'\n'

nohup /usr/lib/rstudio-server/bin/rserver --www-address=$ADDRESS --www-port=$RSPORT --server-user=$(whoami) > rstudio_server_output.out 2>&1 &

nohup jupyter lab --no-browser --notebook-dir=$HOME --ip=0.0.0.0 --port=$JLPORT  > jupyter_server_output.out 2>&1 &

echo -e $GREEN'\n   JupyterLab \n'$NOCOLOR

sleep 2

#jupyter server list
sed -n 54p jupyter_server_output.out

echo -e '\n Press `CTRL + D` To close the container \n'