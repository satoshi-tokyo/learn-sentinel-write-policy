# Learn Terraform - Write a Sentinel Policy

This is a companion repository for the [Write a Sentinel Policy for a Terraform
Deployment tutorial](https://developer.hashicorp.com/terraform/tutorials/policy/sentinel-policy). It contains an example
Sentinel policy that enforces EC2 instance types and tags and a mock data file
to use to test the policy.
# learn-sentinel-write-policy



# Dev
```
terraform init -backend-config=dev.tfbackend
```

```
terraform plan -var-file=dev.tfvars -out tfplan
```

```
terraform apply "plan.json"
```

# Prod
```
terraform init -backend-config=prod.tfbackend
```

```
terraform plan -var-file=prod.tfvars -out tfplan
```
