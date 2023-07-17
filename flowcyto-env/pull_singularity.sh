#!/bin/sh

VERSION='latest'
DOCKERIMAGE='gnasello/flowcyto-env'

IMAGENAME='flowcyto-env.sif'

singularity pull --name $IMAGENAME docker://$DOCKERIMAGE:$VERSION
