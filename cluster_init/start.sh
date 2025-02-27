kubectl create namespace smart-scrum-poker-prod
kubectl create namespace smart-scrum-poker-uat
kubectl create namespace smart-scrum-poker-elk-common

kubectl apply -f ./accounts/google-service-account.yaml

./cluster-extensions/set-ingresses.sh

kubectl apply -f ./argo_apps/smart-scrum-poker-prod-app.yaml
kubectl apply -f ./argo_apps/smart-scrum-poker-uat-app.yaml
kubectl apply -f ./argo_apps/smart-scrum-poker-elk-common-app.yaml
