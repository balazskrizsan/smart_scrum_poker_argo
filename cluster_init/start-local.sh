kubectl create namespace smart-scrum-poker-elk-local-common
kubectl create namespace smart-scrum-poker-local-prod
kubectl create namespace smart-scrum-poker-local-uat

./cluster-extensions/set-local-ingresses.sh

kubectl apply -f ./accounts/local-google-service-account.yaml
kubectl apply -f ./argo_apps/smart-scrum-poker-elk-local-common-app.yaml
