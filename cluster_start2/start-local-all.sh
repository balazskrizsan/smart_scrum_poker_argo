#!/bin/bash

./scripts/create-namespaces.sh
./scripts/download-localhost-certs-force.sh
./scripts/set-or-update-certs.sh
./scripts/add-argo-extensions.sh
./scripts/add-minikube-extensions.sh
./scripts/start-local-argo-apps.sh
