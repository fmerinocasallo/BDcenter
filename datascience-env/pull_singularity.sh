#!/bin/sh

VERSION='2023-07-16 '
DOCKERIMAGE='gnasello/datascience-env'

IMAGENAME='datascience-env.sif'

singularity pull --name $IMAGENAME docker://$DOCKERIMAGE:$VERSION
#singularity pull --name $IMAGENAME docker-daemon:$DOCKERIMAGE:$VERSION
