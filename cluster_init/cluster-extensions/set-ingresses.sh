kubectl delete -n argocd -f ./cluster-extensions/argocd-ingress.yaml --ignore-not-found
kubectl apply  -n argocd -f ./cluster-extensions/argocd-ingress.yaml

kubectl delete -n kubernetes-dashboard -f ./cluster-extensions/minikube-dashboard-ingress.yaml --ignore-not-found
kubectl apply  -n kubernetes-dashboard -f ./cluster-extensions/minikube-dashboard-ingress.yaml
