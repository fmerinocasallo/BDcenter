# Dockerfiles of the Biomedical Data Center

# Run Docker container

From the project folder, run the command below:

```bash start-docker.sh```

Which automatically updates the .env and create a new Docker Image with the ```researcher``` user sharing the ID of the host user.

When the ```connect-docker.sh``` file is available, it is possible to detached from the container (```ctrl + D```) and connect in a second moment with:

```bash connect-docker.sh```

Close the container with:

```bash end-docker```

## docker-compose approach

Be aware that the user ```researcher``` within you Docker container won't share the same ID as the host user!

From the project folder, run the command below:

```docker-compose up```

Close the container with:

```docker-compose down```
