#!/bin/sh

IMAGENAME='flowcyto-env.img'

ADDRESS=${HOSTNAME} #127.0.0.1
PORTNUMBER=`python3 -c "import socket; s=socket.socket(); s.bind(('',0)); print(s.getsockname()[1]); s.close()"` #7878

BOLDGREEN='\033[1;32m'
GREEN='\033[0;32m'
NOCOLOR='\033[0m' # No Color

echo -e '\n '$BOLDGREEN $IMAGENAME $NOCOLOR' \n'

echo -e '\n List of servers available in this container\n'

echo -e $GREEN'\n   Rstudio\n'$NOCOLOR
echo -e 'http://'$ADDRESS':'$PORTNUMBER'\n\n'

# Running a Rocker Singularity container (localhost, no password)
# https://rocker-project.org/use/singularity.html

mkdir -p run var-lib-rstudio-server

printf 'provider=sqlite\ndirectory=/var/lib/rstudio-server\n' > database.conf

singularity exec \
   --bind run:/run,var-lib-rstudio-server:/var/lib/rstudio-server,database.conf:/etc/rstudio/database.conf \
   $IMAGENAME \
   /usr/lib/rstudio-server/bin/rserver --www-address=$ADDRESS --www-port=$PORTNUMBER --server-user=$(whoami)