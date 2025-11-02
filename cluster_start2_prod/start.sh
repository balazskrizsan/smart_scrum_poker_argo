#!/bin/bash

find . -type f -name "*.sh" -exec chmod +x {} \;

./scripts/create-namespaces.sh
./scripts/install-ids.sh
