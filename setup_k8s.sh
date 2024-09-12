#!/bin/bash

./users/setup_k8s.sh
./notifications/setup_k8s.sh

# docker build -t notifications-app:latest ./notifications
# docker build -t authentication-app:latest ./users

# kubectl apply -f k8s_setup/namespace.yml

# kubectl apply -f k8s_setup/postgresql-notifications-deployment.yml
# kubectl apply -f k8s_setup/postgresql-notifications-service.yml
# kubectl apply -f k8s_setup/postgres-notifications-pvc.yml
# kubectl apply -f k8s_setup/notifications-app-deployment.yml
# kubectl apply -f k8s_setup/notifications-app-service.yml


# kubectl apply -f k8s_setup/postgresql-authentication-deployment.yml
# kubectl apply -f k8s_setup/postgresql-authentication-service.yml
# kubectl apply -f k8s_setup/postgres-authentication-pvc.yml
# kubectl apply -f k8s_setup/authentication-app-deployment.yml
# kubectl apply -f k8s_setup/authentication-app-service.yml
