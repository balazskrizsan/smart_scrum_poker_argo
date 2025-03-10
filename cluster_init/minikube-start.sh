minikube start \
  --driver=docker \
  --force \
  --apiserver-ips=0.0.0.0 \
  --apiserver-port=8443
  --mount --mount-string="/minikube_backup/ssp/prod_psql_data:/mnt/ssp/prod_psql_data"
  --mount --mount-string="/minikube_backup/ssp/uat_psql_data:/mnt/ssp/uat_psql_data"

