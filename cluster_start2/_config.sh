#!/bin/bash

NAMESPACES=(
  "argocd"
#  "smart-scrum-poker-uat"
#  "pgadmin"
  "ssp--local--grafana-loki-common"
#  "smart-scrum-poker-elk-local-common"
)

ENV_CERT_NAMESPACES=(
  "argocd"
  "kubernetes-dashboard"
#  "smart-scrum-poker-uat"
#  "pgadmin"
  "ssp--local--grafana-loki-common"
#  "smart-scrum-poker-elk-local-common"
)

ARGO_APPS=(
  "grafana-loki-common"
)

set_or_update_cert() {
  local namespace="$1"

  kubectl delete secret env-cert \
    -n "$namespace" \
    --ignore-not-found

  kubectl create secret tls env-cert \
    -n "$namespace" \
    --key ./certs/private.key \
    --cert ./certs/certificate.crt
}

toggle_argo_app() {
  local command="$1"
  local namespace="$2"
  local env="$3"
  local app="$4"

  echo "Argo app: $command => $namespace / $env / $app"

  kubectl $command -f "./argo-apps/$namespace--$env--$app--app.yaml"
}
