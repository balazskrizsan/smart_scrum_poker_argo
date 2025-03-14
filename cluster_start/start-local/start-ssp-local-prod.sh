./start-local/download-localhost-certs.sh

kubectl create namespace smart-scrum-poker-local-prod

kubectl apply -f ./start-local/k8s-secrets/cloud-secrets-local-prod.yaml

kubectl apply -f ./start-local/argo-apps/ssp-local-prod-app.yaml
