#!/bin/bash

kubectl delete -f ./k8s-ingress/local--minikube-dashboard-ingress.yaml \
  -n kubernetes-dashboard \
  --ignore-not-found
kubectl apply -f ./k8s-ingress/local--minikube-dashboard-ingress.yaml \
  -n kubernetes-dashboard
