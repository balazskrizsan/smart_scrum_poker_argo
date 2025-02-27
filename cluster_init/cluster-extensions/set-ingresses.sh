kubectl delete -n argocd -f argocd-ingress.yaml --ignore-not-found
kubectl apply  -n argocd -f argocd-ingress.yaml

kubectl delete -n kubernetes-dashboard -f minikube-dashboard-ingress.yaml --ignore-not-found
kubectl apply  -n kubernetes-dashboard -f minikube-dashboard-ingress.yaml
