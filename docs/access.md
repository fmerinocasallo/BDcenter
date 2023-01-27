---
title: Access 
layout: default
nav_order: 2
---

# How to access the Biomedical Data Center

---
> **First Time Use?**
>
>- Install Visual Studio Code
>
>Follow the [instructions](https://code.visualstudio.com/docs/remote/ssh) to install [Visual Studio Code](https://code.visualstudio.com/) and its [Remote-SSH extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh)
>
>- Connect to the BD Workstation
>
> You need to be connected to KU Leuven Zone-A.
> The ssh command to login is the one below:
>
> ```ssh uxxxxxxx@gbw-d-l0151```
>
> Where you have to insert your u/r number.
>
>- Download the base BD directory from GitHub
>
>After you successfully log in the first time, you need to download the directory with the docker-compose files you need to run the Docker contianers. To do that, run the command below:
>
>```git clone https://github.com/gabnasello/BDcenter.git```
>
>- Ask one of the administrators (Gabriele, Edo, Tim) to add you to the [```docker```](./admin_notes#add-new-user-to-docker-group) group
>
---

## Run a Docker container

### Start a new Docker container

Run
```bdstart CONTAINERNAME```

All Docker containers available can be autocompleted if you type the first letter followed by the ```Tab``` command (e.g. ```bdstart d[+Tab]```). The updated list of the Docker containers available is available in the [homepage](./index)

### Connect to a running Docker container

Run
```bdstart CONTAINERNAME```

### End the analysis and close Docker container

You detach from the docker terminal by pressing ```Ctrl + d```

After detaching, run
```bdend CONTAINERNAME```

## Mount KUL drives

Run the command below to mount all KUL drives (L-, K-, J-, ...) associated to your unumber

```sudo gbiomed-mount```

## Update the BD directory from GitHub

When new Docker containers will be available, you need to update the BDcenter directory. To do that, run the command below when you are inside the BDcenter directory:

```git pull```

This command **erases** all your local changes to the docker-compose files. 