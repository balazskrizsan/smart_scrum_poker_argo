#!/bin/bash

NAMESPACES=(
  "ids--ssp--prod"
)

ENV_CERT_NAMESPACES=(
  "ids--ssp--prod"
)

ARGO_APPS=(
)

set_or_update_cert() {
  local namespace="$1"

  kubectl delete secret env-cert \
    -n "$namespace" \
    --ignore-not-found

  kubectl create secret tls env-cert \
    -n "$namespace" \
    --key ./certs/privkey.pem \
    --cert ./certs/fullchain.pem
}

toggle_argo_app() {
  local command="$1"
  local namespace="$2"
  local env="$3"
  local app="$4"

  echo "Argo app: $command => $namespace / $env / $app"

  kubectl $command -f "./argo-apps/$namespace--$env--$app--app.yaml"
}
