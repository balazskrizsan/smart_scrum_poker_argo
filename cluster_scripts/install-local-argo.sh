#!/bin/bash

set -e  # Exit on error

if ! minikube status >/dev/null 2>&1; then
  echo "Minikube is not running. Start it with 'minikube start'"
  exit 1
fi

kubectl get namespace argocd >/dev/null 2>&1 || kubectl create namespace argocd

kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "NodePort"}}'

echo "Waiting for ArgoCD to become ready..."
kubectl rollout status deployment argocd-server -n argocd

ARGOCD_PWD=$(kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath="{.data.password}" | base64 --decode)

ARGOCD_PORT=$(kubectl get svc argocd-server -n argocd -o jsonpath="{.spec.ports[0].nodePort}")
ARGOCD_IP=$(minikube ip)
ARGOCD_URL="https://${ARGOCD_IP}:${ARGOCD_PORT}"

echo "ArgoCD telepítve Minikube-ra!"
echo "Elérhető itt: $ARGOCD_URL"
echo "Felhasználónév: admin"
echo "Jelszó: $ARGOCD_PWD"
