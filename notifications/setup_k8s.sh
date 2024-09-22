#!/bin/bash

docker build -t personalirfan/notifications-app-api:latest .
docker push personalirfan/notifications-app-api:latest

sleep 1m

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

kobuectl apply -f k8s_setup/load_balancer.yml

# sleep for 1 minute to let the pods start
sleep 1m

# kubectl port-forward service/notifications-app-service 8001:8001 -n notifications-app &