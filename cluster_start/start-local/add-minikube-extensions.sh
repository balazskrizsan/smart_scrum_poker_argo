./start-local/download-localhost-certs.sh

kubectl delete secret env-cert \
  -n kubernetes-dashboard \
  --ignore-not-found
kubectl create secret tls env-cert \
  -n kubernetes-dashboard \
  --key ./start-local/certs/private.key \
  --cert ./start-local/certs/certificate.crt

kubectl delete -f ./start-local/k8s-ingress/minikube-dashboard-ingress.yaml \
  -n kubernetes-dashboard \
  --ignore-not-found
kubectl apply -f ./start-local/k8s-ingress/minikube-dashboard-ingress.yaml \
  -n kubernetes-dashboard
