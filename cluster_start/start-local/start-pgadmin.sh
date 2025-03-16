./start-local/download-localhost-certs.sh

kubectl create namespace pgadmin

kubectl delete secret env-cert \
  -n pgadmin \
  --ignore-not-found
kubectl create secret tls env-cert \
  -n pgadmin \
  --key ./start-local/certs/private.key \
  --cert ./start-local/certs/certificate.crt

kubectl apply -f ./start-local/argo-apps/pgadmin-app.yaml
