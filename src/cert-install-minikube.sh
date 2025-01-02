# https://minikube.sigs.k8s.io/docs/tutorials/custom_cert_ingress/
kubectl -n kube-system create secret tls mkcert \
    --key keystore/privkey.pem \
    --cert keystore/fullchain.pem
