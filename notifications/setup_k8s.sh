#!/bin/bash

docker build -t notifications-app:latest .

minikube image load notifications-app:latest

kubectl apply -f k8s_setup/namespace.yml

kubectl apply -f k8s_setup/postgresql-notifications-deployment.yml
kubectl apply -f k8s_setup/postgresql-notifications-service.yml
kubectl apply -f k8s_setup/postgres-notifications-pvc.yml

kubectl apply -f k8s_setup/notifications-app-deployment.yml
kubectl apply -f k8s_setup/notifications-app-service.yml