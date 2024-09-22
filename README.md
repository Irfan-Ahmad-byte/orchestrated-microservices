# Orchestrated Microservices

This repository demonstrates the orchestration of two microservices using two approaches:

1. **Docker Compose**: Running the microservices in separate containers via a single `docker-compose` file.
2. **Kubernetes**: Running the services within a Kubernetes architecture.

## Microservices Overview

The individual microservices are hosted separately and can be accessed via the following links:

- [Users Service](https://github.com/Irfan-Ahmad-byte/microservice_users.git)
- [Notifications Service](https://github.com/Irfan-Ahmad-byte/microservice_notifications.git)

Each microservice repository contains specific instructions on setup and usage. Additionally, these services are included as subdirectories in this repository, with their respective instructions.

## Workflow and Secrets

Both services include workflow files that can be customized to fit more specific deployment needs. The workflows require GitHub secrets for Docker and Kubernetes setups. Ensure the following secrets are added to your GitHub repository:

- `DATABASE_URL`
- `DOCKERHUB_REPO`
- `DOCKERHUB_TOKEN`
- `DOCKERHUB_USERNAME`
- `POSTGRES_DB`
- `POSTGRES_PASSWORD`
- `POSTGRES_USER`

You can manage these secrets according to your infrastructure's requirements.

## Tech Stack

The stack used in this project includes:

- **Python** (FastAPI for building the microservices)
- **Docker** (including Docker Compose)
- **Kubernetes**
- **GitHub Actions** (for CI/CD automation)
- **Bash Scripting**

## How to Run

### 1. Run with Docker Compose

To run both microservices with Docker Compose, use:

```bash
docker-compose up
```

Or to run them in detached mode:

```bash
docker-compose up -d
```

### 2. Run with Kubernetes

To deploy the services using Kubernetes, execute the following script:

```bash
./setup_k8s.sh
```

To remove the Kubernetes setup, run:

```bash
./remove_k8s.sh
```

### Additional Notes

The GitHub workflows are preconfigured for both Docker and Kubernetes environments. For Kubernetes deployment, ensure that the necessary secrets (mentioned above) are set up correctly in your GitHub repository.