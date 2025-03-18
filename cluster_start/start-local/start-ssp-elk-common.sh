./start-local/download-localhost-certs.sh

kubectl create namespace smart-scrum-poker-elk-local-common

kubectl delete secret env-cert \
  -n smart-scrum-poker-elk-local-common \
  --ignore-not-found
kubectl create secret tls env-cert \
   -n smart-scrum-poker-elk-local-common \
  --key ./start-local/certs/private.key \
  --cert ./start-local/certs/certificate.crt

kubectl apply -f ./start-local/argo-apps/ssp-elk-local-common-app.yaml
