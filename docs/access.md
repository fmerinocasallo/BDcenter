---
title: Access 
layout: default
nav_order: 2
---

# How to access the Biomedical Data Center


## Install Visual Studio Code

Follow the [instructions](https://code.visualstudio.com/docs/remote/ssh) to install [Visual Studio Code](https://code.visualstudio.com/) and its [Remote-SSH extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh)

## Connect to the BD Workstation

You need to be connected to KU Leuven Zone-A

```ssh u0128401@gbw-d-l0151```

## Mount KUL drives

Run the command below to mount all KUL drives (L-, K-, J-, ...) associated to your unumber

```sudo gbiomed-mount```