kubectl delete -f ./start/k8s-ingresses/argocd-ingress.yaml \
  -n argocd \
  --ignore-not-found
kubectl apply -f ./start/k8s-ingresses/argocd-ingress.yaml \
  -n argocd
