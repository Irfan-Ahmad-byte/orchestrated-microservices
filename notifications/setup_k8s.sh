#!/bin/bash

# docker build -t notifications-app:latest .

# check if minikube is running or not, if not then start minikube
minikube status | grep -q 'Running' || minikube start

minikube image build -t notifications-app-api:new .

kubectl config use-context minikube

kubectl apply -f k8s_setup/namespace.yml

kubectl apply -f k8s_setup/notifications-secrets.yml

kubectl apply -f k8s_setup/postgresql-notifications-deployment.yml
kubectl apply -f k8s_setup/postgresql-notifications-service.yml
kubectl apply -f k8s_setup/postgres-notifications-pvc.yml

kubectl apply -f k8s_setup/notifications-app-deployment.yml
kubectl apply -f k8s_setup/notifications-app-service.yml

kubectl port-forward service/notifications-app-service 8001:8001 -n orchestrator