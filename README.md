# ⚙️ Orchestrated Microservices: Docker & Kubernetes

This repository demonstrates the orchestration of two independent FastAPI-based microservices using two distinct approaches:

1. **Docker Compose** – Service orchestration via a single `docker-compose.yml` file.
2. **Kubernetes** – Deployment and scaling via container orchestration on a Kubernetes cluster.

---

## 🎯 Purpose

This project is built to showcase my ability to:

- Design modular microservices
- Orchestrate containers using both Docker Compose and Kubernetes
- Automate deployments with GitHub Actions
- Configure environment variables and secrets securely

> Note: Although both microservices may offer similar features, they are intentionally separated to simulate independent, orchestrated services for this demonstration.

---

## 🧩 Microservices Overview

Each microservice is located in a subdirectory of this repository, with its own:

- Dockerfile
- Kubernetes deployment YAML
- CI/CD workflow
- README for usage and local testing

---

## 🔐 GitHub Secrets

To enable the CI/CD workflows, ensure the following GitHub secrets are configured in your repository:

| Secret Name         | Description                                 |
|---------------------|---------------------------------------------|
| `DATABASE_URL`      | PostgreSQL connection string                |
| `DOCKERHUB_REPO`    | Your DockerHub repository name              |
| `DOCKERHUB_USERNAME`| DockerHub username                          |
| `DOCKERHUB_TOKEN`   | DockerHub access token                      |
| `POSTGRES_DB`       | Name of the PostgreSQL database             |
| `POSTGRES_USER`     | DB username                                 |
| `POSTGRES_PASSWORD` | DB password                                 |

> These secrets power both the Docker build & push process and Kubernetes deployment pipeline.

---

## 🧱 Tech Stack

- **Language**: Python (FastAPI)
- **Containerization**: Docker, Docker Compose
- **Orchestration**: Kubernetes (with kubectl-compatible scripts)
- **CI/CD**: GitHub Actions
- **Scripting**: Bash

---

## 🚀 How to Run

### 🐳 Run with Docker Compose

```bash
docker compose up
```

or run in detached mode:

```bash
docker compose up -d
```

This spins up both services in isolated containers connected through a Docker network.

### ☸️ Run with Kubernetes

Use the provided shell scripts:

```bash
./setup_k8s.sh     # Deploy services to Kubernetes
./remove_k8s.sh    # Tear down the cluster setup
```

> Ensure kubectl and your local Kubernetes environment (like Minikube) are properly configured before running.

## 📌 Notes

This project is designed for local development and demonstration purposes.

Can be extended for cloud-native deployment on AWS EKS, GCP GKE, or Azure AKS.

Workflows are modular and can be reused for additional services.

## 👨‍💻 Author

Developed by [Irfan Ahmad](!https://github.com/irfan-ahmad-byte)