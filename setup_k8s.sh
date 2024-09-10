#!/bin/bash

kubectl apply -f namespace.yml
kubectl apply -f postgresql-notifications-deployment.yml
kubectl apply -f postgresql-notifications-service.yml
kubectl apply -f postgres-notifications-pvc.yml

kubectl apply -f postgresql-authentication-deployment.yml
kubectl apply -f postgresql-authentication-service.yml
kubectl apply -f postgres-authentication-pvc.yml

kubectl apply -f notifications-app-deployment.yml
kubectl apply -f notifications-app-service.yml

kubectl apply -f authentication-app-deployment.yml
kubectl apply -f authentication-app-service.yml
