#!/bin/sh

VERSION='latest'
DOCKERIMAGE='gnasello/sc-py-env'

IMAGENAME='sc-py-env.sif'

#singularity pull --name $IMAGENAME docker://$DOCKERIMAGE:$VERSION
singularity pull --name $IMAGENAME docker-daemon:$DOCKERIMAGE:$VERSION
