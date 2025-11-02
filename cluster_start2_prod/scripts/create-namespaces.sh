#!/bin/bash

source ./_config.sh

for namespace in ${NAMESPACES[@]}; do
  kubectl create namespace "${namespace}"
done
