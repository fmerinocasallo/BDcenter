#!/bin/sh

IMAGENAME='datascience-env.sif'
export IMAGENAME
INSTANCENAME='datascience-env_'$USER

singularity instance start $IMAGENAME $INSTANCENAME

singularity exec instance://$INSTANCENAME /bin/bash entrypoint.sh

singularity shell instance://$INSTANCENAME

singularity instance stop $INSTANCENAME