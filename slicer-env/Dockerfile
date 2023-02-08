# docker-stacks/r-notebook [https://github.com/jupyter/docker-stacks/tree/master/r-notebook]
# https://hub.docker.com/r/jupyter/r-notebook/dockerfile

FROM gnasello/slicer-env:latest

ARG RES_UID=2000
ARG RES_GID=200

# Configure environment
ENV RES_UID=${RES_UID} \
    RES_GID=${RES_GID}

USER root

RUN groupmod -g ${RES_GID} researcher &&\
    usermod -u ${RES_UID} -g ${RES_GID} researcher

USER researcher