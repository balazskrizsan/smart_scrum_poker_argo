#!/bin/bash

source ./_config.sh

for namespace in ${NAMESPACES[@]}; do
  kubectl delete namespace "${namespace}"
done
