#!/bin/sh

IMAGENAME='napari-env.sif'
export IMAGENAME
INSTANCENAME='napari-env_'$USER

xhost +local:*

singularity instance start \
   --bind /tmp:/home/jovyan,/mnt:/mnt \
   $IMAGENAME \
   $INSTANCENAME

singularity exec instance://$INSTANCENAME /bin/bash entrypoint.sh

singularity shell instance://$INSTANCENAME

xhost -local:*

singularity instance stop $INSTANCENAME