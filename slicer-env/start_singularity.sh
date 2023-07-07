#!/bin/sh

IMAGENAME='slicer-env.sif'
INSTANCENAME='slicer-env_'$USER

xhost +local:*

#singularity instance start $IMAGENAME $INSTANCENAME

#singularity exec instance://$INSTANCENAME /opt/slicer/Slicer 

singularity exec $IMAGENAME /opt/slicer/Slicer

xhost -local:*

#singularity instance stop $INSTANCENAME
