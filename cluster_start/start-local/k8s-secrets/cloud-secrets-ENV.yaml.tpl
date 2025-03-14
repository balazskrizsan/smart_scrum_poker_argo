apiVersion: v1
kind: Secret
metadata:
  name: cloud-secrets
  namespace: smart-scrum-poker-local-prod
type: Opaque
data:
  GOOGLE_SERVICE_ACCOUNT: |-

  AWS_S3_SERVICE_ACCOUNT_ACCESS_KEY_ID: |-

  AWS_S3_SERVICE_ACCOUNT_ACCESS_KEY: |-

  AWS_S3_BACKUP_BUCKET: |-

  AWS_S3_BACKUP_REGION: |-

  AWS_S3_BACKUP_SSP_PSQL_PATH: |-

  BACKEND_APP_SECRET_PATH: |-

  CERTIFICATE_CRT_PATH: |-

  CERTIFICATE_PRIVATE_KEY_PATH: |-
