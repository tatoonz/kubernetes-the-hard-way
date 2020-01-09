# Kubernetes The Hard Way

## Prerequisite

1. Create GCP Service Account with following permissions:
    - Storage Admin
    - Compute Network Admin
2. Create GCP cloud storage for persisting terraform state

## Steps for creating kubernetes cluster

### Provisioning GCP Resources

```sh
export GOOGLE_CREDENTIALS=/path/to/service-account.json
cd terraform
terraform init -backend-config=/path/to/backend.conf
terraform apply -var-file=/path/to/your.tfvars
```
