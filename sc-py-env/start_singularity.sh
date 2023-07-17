#!/bin/sh

IMAGENAME='sc-py-env.sif'
export IMAGENAME
INSTANCENAME='sc-py-env_'$USER

if [ ! -f $IMAGENAME ]
then
	/bin/bash pull_singularity.sh 
fi

singularity instance start $IMAGENAME $INSTANCENAME

singularity exec instance://$INSTANCENAME /bin/bash entrypoint.sh

singularity shell instance://$INSTANCENAME

singularity instance stop $INSTANCENAME