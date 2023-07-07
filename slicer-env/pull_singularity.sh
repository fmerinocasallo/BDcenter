#!/bin/sh

VERSION='2023-07-06.1'
DOCKERIMAGE='gnasello/slicer-env'

IMAGENAME='slicer-env.sif'

singularity pull --name $IMAGENAME docker-daemon:$DOCKERIMAGE:$VERSION
