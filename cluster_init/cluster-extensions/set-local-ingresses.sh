mkdir -p "./certs"

curl -o "./certs/certificate.crt" \
  "https://smart-scrum-poker-secrets.s3.us-east-1.amazonaws.com/cert--*.localhost.krizsanbalazs.com/certificate.crt"
curl -o "./certs/private.key" \
  "https://smart-scrum-poker-secrets.s3.us-east-1.amazonaws.com/cert--*.localhost.krizsanbalazs.com/private-decrypted.key"

kubectl delete secret     cert-localhost.balazskrizsan.com -n argocd --ignore-not-found
kubectl create secret tls cert-localhost.balazskrizsan.com -n argocd --key certs/private.key --cert certs/certificate.crt

kubectl delete secret     cert-localhost.balazskrizsan.com -n kubernetes-dashboard --ignore-not-found
kubectl create secret tls cert-localhost.balazskrizsan.com -n kubernetes-dashboard --key certs/private.key --cert certs/certificate.crt

kubectl delete -n argocd -f argocd-local-ingress.yaml --ignore-not-found
kubectl apply  -n argocd -f argocd-local-ingress.yaml

kubectl delete -n kubernetes-dashboard -f minikube-dashboard-local-ingress.yaml --ignore-not-found
kubectl apply  -n kubernetes-dashboard -f minikube-dashboard-local-ingress.yaml

rm -rf ./certs
