#!/bin/sh

VERSION='latest'
DOCKERIMAGE='gnasello/sc-r-env'

IMAGENAME='sc-r-env.sif'

singularity pull --name $IMAGENAME docker://$DOCKERIMAGE:$VERSION
#singularity pull --name $IMAGENAME docker-daemon:$DOCKERIMAGE:$VERSION
