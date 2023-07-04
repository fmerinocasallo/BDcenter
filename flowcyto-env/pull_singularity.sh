#!/bin/sh

VERSION='2023-06-04'
DOCKERIMAGE='gnasello/flowcyto-env'

IMAGENAME='flowcyto-env.img'

singularity pull --name $IMAGENAME docker://$DOCKERIMAGE:$VERSION
