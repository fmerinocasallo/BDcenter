---
title: Access 
layout: default
nav_order: 2
---

# How to access the Biomedical Data Center

## Steps for first time use

1. [Install Visual Studio Code](#install-visual-studio-code)
2. [Download the base BD directory from GitHub](#download-the-base-bd-directory-from-github)

## Run a Docker container

### Start a new Docker container

Run

```bdstart CONTAINERNAME```

All Docker containers available can be autocompleted if you type the first letter followed by the ```Tab``` command (e.g. ```bdstart d[+Tab]```). The updated list of the Docker containers available is available in the [homepage](./index)

### Connect to a running Docker container

Run

```bdstart CONTAINERNAME```

## Install Visual Studio Code

Follow the [instructions](https://code.visualstudio.com/docs/remote/ssh) to install [Visual Studio Code](https://code.visualstudio.com/) and its [Remote-SSH extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh)

## Connect to the BD Workstation

You need to be connected to KU Leuven Zone-A.

The ssh command to login is the one below:

```ssh uxxxxxxx@gbw-d-l0151```

Where you have to insert your u/r number.

## BD directory

### Download the base BD directory from GitHub

After you successfully log in the first time, you need to download the directory with the docker-compose files you need to run the Docker contianers. To do that, run the command below:

```git clone https://github.com/gabnasello/BDcenter.git```

Which creates a BDcenter directory in you home directory. There, you find the specific docker-compose files for each Docker container. Feel free to change the [docker-compose](https://docs.docker.com/get-started/08_using_compose/) files to your needs.

### Update the base BD directory from GitHub

When new Docker containers will be available, you need to update the BDcenter directory. To do that, run the command below when you are inside the BDcenter directory:

```git pull```

This command **erases** all your local changes to the docker-compose files. 

## Mount KUL drives

Run the command below to mount all KUL drives (L-, K-, J-, ...) associated to your unumber

```sudo gbiomed-mount```