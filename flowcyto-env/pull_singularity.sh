#!/bin/sh

VERSION='2023-07-05'
DOCKERIMAGE='gnasello/flowcyto-env'

IMAGENAME='flowcyto-env.sif'

singularity pull --name $IMAGENAME docker://$DOCKERIMAGE:$VERSION
