---
title: Admin Notes 
layout: default
nav_order: 3
---

# Add new user to docker group

``` sudo usermod -aG docker uxxxxxxx ```

Where you insert the u/r-number of the new user.

To activate the changes to groups

```newgrp docker```

But you have to run it for each new terminal until you do not reboot the system:

``` sudo reboot ```

More information on the [Docker website](https://docs.docker.com/engine/install/linux-postinstall/)

# List all running containers

```docker container list```