kubectl delete -f ./set-google-service-account.yaml
kubectl delete -f ./cluster-extensions/argocd-ingress.yaml
kubectl delete -f ./cluster-extensions/minikube-dashboard-ingress.yaml

kubectl delete -f ./argo_apps/smart-scrum-poker-prod-app.yaml
kubectl delete -f ./argo_apps/smart-scrum-poker-uat-app.yaml
kubectl delete -f ./argo_apps/smart-scrum-poker-elk-common-app.yaml

kubectl delete namespace smart-scrum-poker-prod
kubectl delete namespace smart-scrum-poker-uat
kubectl delete namespace smart-scrum-poker-elk-common
