#!/bin/bash

killall kubectl

kubectl delete deployments --all -n notifications-app
kubectl delete services --all -n notifications-app
kubectl delete pvc --all -n notifications-app
kubectl delete pv --all -n notifications-app
kubectl delete secrets --all -n notifications-app
kubectl delete configmaps --all -n notifications-app
kubectl delete pods --all -n notifications-app
kubectl delete namespaces notifications-app
