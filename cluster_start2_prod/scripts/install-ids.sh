#!/bin/bash

git clone https://github.com/wso2/kubernetes-is.git

cp ./scripts/install-ids-helm-values.yaml ./scripts/kubernetes-is/values.yaml

helm install "ids--ssp--prod-release" -n "ids--ssp--prod" . \
  --set deployment.image.registry="wso2" \
  --set deployment.image.repository="wso2is" \
  --set deployment.image.tag="7.1.0" \
  --set deployment.apparmor.enabled="false"
