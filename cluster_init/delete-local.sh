kubectl delete -f ./argo_apps/smart-scrum-poker-elk-local-common-app.yaml
kubectl delete -f ./argo_apps/smart-scrum-poker-local-prod-app.yaml
kubectl delete -f ./accounts/local-google-service-account.yaml

./cluster-extensions/delete-local-ingresses.sh

kubectl delete namespace smart-scrum-poker-elk-local-common
kubectl delete namespace smart-scrum-poker-local-prod
