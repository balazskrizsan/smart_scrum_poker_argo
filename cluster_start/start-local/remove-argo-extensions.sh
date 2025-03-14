kubectl delete secret env-cert \
  -n argocd \
  --ignore-not-found

kubectl delete -f ./start-local/k8s-ingress/argocd-ingress.yaml \
  -n argocd \
  --ignore-not-found
