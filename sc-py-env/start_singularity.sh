#!/bin/sh

IMAGENAME='sc-py-env.sif'
export IMAGENAME
INSTANCENAME='sc-py-env_'$USER

if [ ! -f $IMAGENAME ]
then
	/bin/bash pull_singularity.sh 
fi

# --bind $HOME:/run/user to connect GPUs 
# [https://hackmd.io/@3B-tPhedTxynbhOI9PJ0Jg/ryM16ZSxi]
singularity instance start --nv --cleanenv --bind $HOME:/run/user $IMAGENAME $INSTANCENAME

singularity exec instance://$INSTANCENAME /bin/bash entrypoint.sh

singularity shell instance://$INSTANCENAME

singularity instance stop $INSTANCENAME