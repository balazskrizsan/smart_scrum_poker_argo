#!/bin/bash

kubectl delete -f ./k8s-ingress/local--argocd-ingress.yaml \
  -n argocd \
  --ignore-not-found
kubectl apply -f ./k8s-ingress/local--argocd-ingress.yaml \
  -n argocd
