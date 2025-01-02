kubectl create secret tls ssm-dot-local \
    -n ssp-master \
    --key keystore/private.key \
    --cert keystore/certificate.crt
