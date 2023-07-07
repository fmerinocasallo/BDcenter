#!/bin/sh

VERSION='2023-06-29'
DOCKERIMAGE='gnasello/napari-env'

IMAGENAME='napari-env.sif'

singularity pull --name $IMAGENAME docker://$DOCKERIMAGE:$VERSION
