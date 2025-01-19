kubectl create secret tls cert-frontend \
    -n ssp-prod \
    --key ../dev_keys/private.key \
    --cert ../dev_keys/certificate.crt
