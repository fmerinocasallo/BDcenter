#!/bin/sh

VERSION='2023-04-20'
DOCKERIMAGE='gnasello/datascience-env'

IMAGENAME='datascience-env.sif'

singularity pull --name $IMAGENAME docker://$DOCKERIMAGE:$VERSION
