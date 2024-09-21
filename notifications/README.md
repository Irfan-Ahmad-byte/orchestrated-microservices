# Notifications Microservice

This is a sample microservice, built with FastAPI/Python. This service can b run in 2 ways:

1- building the image manually

2- through docker compose



## Build image and run manually

Execute the `run.sh` script.

`chmod +x run.sh`

`./run.sh`

`./stop.sh`


## Run through Docker Compose

`docker compose up` or `docker compose up -d`



## Github secrets

Add following secrets to your github actions, or you can manage them as you wish:

- DATABASE_URL
- DOCKERHUB_REPO
- DOCKERHUB_TOKEN
- DOCKERHUB_USERNAME
- POSTGRES_DB
- POSTGRES_PASSWORD
- POSTGRES_USER