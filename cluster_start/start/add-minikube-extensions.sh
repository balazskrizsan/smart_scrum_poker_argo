kubectl delete -f ./start/k8s-ingresses/minikube-dashboard-ingress.yaml \
  -n kubernetes-dashboard \
  --ignore-not-found
kubectl apply -f ./start/k8s-ingresses/minikube-dashboard-ingress.yaml \
  -n kubernetes-dashboard
