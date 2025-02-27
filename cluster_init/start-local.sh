kubectl create namespace smart-scrum-poker-elk-local-common
kubectl create namespace smart-scrum-poker-local-prod

./cluster-extensions/set-local-ingresses.sh

kubectl apply -f ./accounts/local-google-service-account.yaml
kubectl apply -f ./argo_apps/smart-scrum-poker-elk-local-common-app.yaml
kubectl apply -f ./argo_apps/smart-scrum-poker-local-prod-app.yaml
