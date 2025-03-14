kubectl create namespace smart-scrum-poker-prod

kubectl apply -f ./start/k8s-secrets/cloud-secrets-prod.yaml

kubectl apply -f ./start/argo-apps/smart-scrum-poker-prod-app.yaml
