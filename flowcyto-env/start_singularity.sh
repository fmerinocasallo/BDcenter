#!/bin/sh

IMAGENAME='flowcyto-env.sif'
export IMAGENAME
INSTANCENAME='flowcyto-env_'$USER

# Running a Rocker Singularity container (localhost, no password)
# https://rocker-project.org/use/singularity.html

mkdir -p run var-lib-rstudio-server

printf 'provider=sqlite\ndirectory=/var/lib/rstudio-server\n' > database.conf

singularity instance start \
   --bind run:/run,var-lib-rstudio-server:/var/lib/rstudio-server,database.conf:/etc/rstudio/database.conf \
   $IMAGENAME \
   $INSTANCENAME

#singularity exec \
#   --bind run:/run,var-lib-rstudio-server:/var/lib/rstudio-server,database.conf:/etc/rstudio/database.conf \
#   $IMAGENAME \
#   /bin/bash entrypoint.sh

singularity exec instance://$INSTANCENAME /bin/bash entrypoint.sh

singularity shell instance://$INSTANCENAME

singularity instance stop $INSTANCENAME