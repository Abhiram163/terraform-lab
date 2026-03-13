# Day 2 — Variables and Multiple Configurations

## What I Did
- Created parameterized Terraform configuration
- Created two variable files: `dev.tfvars` and `prod.tfvars`
- Applied Terraform separately for each environment

## Files
- `main.tf` — Main configuration
- `variables.tf` — Variable declarations (no defaults)
- `outputs.tf` — Outputs
- `dev.tfvars` — Development environment values
- `prod.tfvars` — Production environment values

## Commands Used
```bash
terraform init
terraform apply -var-file="dev.tfvars"   # Deploy dev
terraform destroy -var-file="dev.tfvars" # Tear down dev
terraform apply -var-file="prod.tfvars"  # Deploy prod
```

## Key Learnings
- `.tfvars` files separate configuration from code
- Different environments can use the same Terraform code with different variable files
- Always destroy one environment before applying a different one (when filenames differ)
