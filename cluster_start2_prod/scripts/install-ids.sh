#!/bin/bash

rm -rf repos && mkdir -p repos

git clone https://github.com/wso2/kubernetes-is.git ./repos/wso2-ids

cp ./scripts/install-ids-helm-values.yaml ./repos/wso2-ids/values.yaml

helm install "ids--prod" -n "ids--ssp--prod" ./repos/wso2-ids \
  --set deployment.image.registry="wso2" \
  --set deployment.image.repository="wso2is" \
  --set deployment.image.tag="7.1.0" \
  --set deployment.apparmor.enabled="false"
