kubectl delete secret cert-localhost.balazskrizsan.com -n argocd --ignore-not-found
kubectl delete secret cert-localhost.balazskrizsan.com -n kubernetes-dashboard --ignore-not-found
kubectl delete -n argocd -f ./cluster-extensions/argocd-local-ingress.yaml --ignore-not-found
kubectl delete -n kubernetes-dashboard -f ./cluster-extensions/minikube-dashboard-local-ingress.yaml --ignore-not-found

rm -rf ./certs
