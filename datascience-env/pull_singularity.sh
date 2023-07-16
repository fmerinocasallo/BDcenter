#!/bin/sh

VERSION='latest'
DOCKERIMAGE='gnasello/datascience-env'

IMAGENAME='datascience-env.sif'

singularity pull --name $IMAGENAME docker://$DOCKERIMAGE:$VERSION
#singularity pull --name $IMAGENAME docker-daemon:$DOCKERIMAGE:$VERSION
