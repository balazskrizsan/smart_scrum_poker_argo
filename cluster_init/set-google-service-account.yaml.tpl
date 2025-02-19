apiVersion: v1
kind: Secret
metadata:
  name: gcp-service-account
type: Opaque
data:
  service-account.json: |-
    <BASE64_ENCODED_JSON_HERE>
    # Replace this with the actual base64-encoded content of your service account JSON
    # use command: cat /path/to/service-account.json | base64 -w 0
  secret-path-prod.json: |-
  certificate.crt.path: |-
  fullchain.pem.path: |-
  private.key.path: |-
  privkey.pem.path: |-
    # Replace with the path to your service account JSON file, like S3 path
    # use command: echo -n "http://path-to-the-secrets.json" | base64
