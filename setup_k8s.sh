#!/bin/bash

cd users
./setup_k8s.sh

cd ../notifications
./setup_k8s.sh
