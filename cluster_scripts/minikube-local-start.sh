#!/bin/bash

minikube start \
  --driver=docker \
  --cpus=4 \
  --memory=7946 \
  --addons=ingress,dashboard,metrics-server
