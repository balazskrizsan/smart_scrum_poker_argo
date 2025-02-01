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
