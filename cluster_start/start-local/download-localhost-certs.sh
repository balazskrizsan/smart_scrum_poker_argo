mkdir -p "./start-local/certs"

[ -f "./start-local/certs/certificate.crt" ] || curl -o "./start-local/certs/certificate.crt" \
  "https://smart-scrum-poker-secrets.s3.us-east-1.amazonaws.com/cert--*.localhost.krizsanbalazs.com/v3/certificate.crt"
[ -f "./start-local/certs/private.key" ] || curl -o "./start-local/certs/private.key" \
  "https://smart-scrum-poker-secrets.s3.us-east-1.amazonaws.com/cert--*.localhost.krizsanbalazs.com/v3/private-decrypted.key"
