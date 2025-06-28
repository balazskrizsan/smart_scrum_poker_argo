#!/bin/bash

mkdir -p "./certs"

curl -o "./certs/certificate.crt" \
  "https://smart-scrum-poker-secrets.s3.us-east-1.amazonaws.com/cert--*.localhost.krizsanbalazs.com/v5/certificate.crt"
curl -o "./certs/private.key" \
  "https://smart-scrum-poker-secrets.s3.us-east-1.amazonaws.com/cert--*.localhost.krizsanbalazs.com/v5/private-decrypted.key"
