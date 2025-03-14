./start-local/download-localhost-certs.sh

kubectl delete secret env-cert \
  -n argocd \
  --ignore-not-found
kubectl create secret tls env-cert \
  -n argocd \
  --key ./start-local/certs/private.key \
  --cert ./start-local/certs/certificate.crt

kubectl delete -f ./start-local/k8s-ingress/argocd-ingress.yaml \
  -n argocd \
  --ignore-not-found
kubectl apply -f ./start-local/k8s-ingress/argocd-ingress.yaml \
  -n argocd
