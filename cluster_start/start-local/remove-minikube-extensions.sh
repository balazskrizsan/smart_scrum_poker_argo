kubectl delete secret env-cert \
  -n kubernetes-dashboard \
  --ignore-not-found

kubectl delete -f ./start-local/k8s-ingress/minikube-dashboard-ingress.yaml \
  -n kubernetes-dashboard \
  --ignore-not-found
