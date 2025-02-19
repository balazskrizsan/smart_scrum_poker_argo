kubectl create namespace smart-scrum-poker-prod
kubectl create namespace smart-scrum-poker-elk-common
kubectl apply -f ./set-google-service-account.yaml
#kubectl apply -f ./argo_apps/smart-scrum-poker-prod-app.yaml
#kubectl apply -f ./argo_apps/smart-scrum-poker-elk-common-app.yaml
