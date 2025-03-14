kubectl create namespace smart-scrum-poker-uat

kubectl apply -f ./start/k8s-secrets/cloud-secrets-uat.yaml

kubectl apply -f ./start/argo-apps/smart-scrum-poker-uat-app.yaml
