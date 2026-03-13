This assignment demonstrates container provisioning using Terraform and Docker.

Steps performed:

1. Installed Docker provider in Terraform
2. Pulled the nginx Docker image
3. Created a Docker container
4. Configured port mapping (80 → 8080)
5. Verified container by accessing http://localhost:8080

Commands used:
terraform init
terraform plan
terraform apply

Result:
NGINX web server was successfully deployed in a Docker container using Terraform.
