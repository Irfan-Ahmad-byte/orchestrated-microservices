# Orchestrated Microservices

This sample applies orchestration on 2 microservices, running them in separate containers through single docker compose file.

The individual microservices can be found at:

- [Users](https://github.com/Irfan-Ahmad-byte/microservice_users.git)
- [Notifications](https://github.com/Irfan-Ahmad-byte/microservice_notifications.git)

These are also present in the children of the current repo, each of which holds individual instructions also.

## Stack Used

- Python
- FastAPI
- Docker (compose)
- Bash scripting

## How to run

> `docker compose up` OR `docker compose up -d`

OR

To run the setup on kubernetes

> `./setup_k8s.sh`

And to remove the Kubernetes setup run

> `./remove_k8s.sh`


## Github secrets

Add following secrets to your github actions, or you can manage them as you wish:

- DATABASE_URL
- DOCKERHUB_REPO
- DOCKERHUB_TOKEN
- DOCKERHUB_USERNAME
- POSTGRES_DB
- POSTGRES_PASSWORD
- POSTGRES_USER