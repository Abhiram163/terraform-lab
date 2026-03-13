# Terraform Infrastructure as Code Lab

This repository contains the implementation of the Software Lab Assignment: Infrastructure as Code using Terraform.

The objective of this lab is to understand how infrastructure can be created, configured, and managed using Terraform instead of manual setup.

---

TOOLS USED

Terraform CLI
Docker
Git
GitHub
GitHub Actions (CI)

---

REPOSITORY STRUCTURE

terraform-lab
│
├── day1
├── day2
├── day3
├── day4
├── day5
│
├── .github/workflows
│   └── terraform-check.yml
│
├── .gitignore
└── README.md

---

DAY 1 – INTRODUCTION TO TERRAFORM

In this assignment we implemented the basic Terraform workflow.

Steps performed:

• Installed Terraform CLI
• Created Terraform configuration using the local provider
• Generated a file hello.txt
• Executed Terraform commands:
terraform init
terraform plan
terraform apply
• Implemented input variables
• Implemented output variables

This assignment demonstrated how Terraform can create infrastructure resources through configuration files.

---

DAY 2 – VARIABLES AND ENVIRONMENT CONFIGURATION

This assignment focused on parameterizing Terraform configurations.

Implemented:

• Terraform variables
• Variable definition files
• Environment specific configuration

Files used:

dev.tfvars
prod.tfvars

Example execution:

terraform apply -var-file="dev.tfvars"
terraform apply -var-file="prod.tfvars"

This allows the same Terraform configuration to be used for multiple environments.

---

DAY 3 – MANAGING CONTAINERS WITH TERRAFORM

In this assignment Terraform was used to manage Docker containers.

Implemented:

• Docker provider configuration
• Pulled the nginx Docker image
• Created an nginx container
• Port mapping between container and host

Container port: 80
Host port: 8080

The nginx web server can be accessed using:

http://localhost:8080

This demonstrates how Terraform can manage container infrastructure.

---

DAY 4 – TERRAFORM MODULES

This assignment introduced Terraform modules to create reusable infrastructure components.

Implemented:

• Created a module named nginx_container
• Defined module variables
• Reused the module to deploy multiple containers

Containers created:

web1 running on port 8081
web2 running on port 8082

Access URLs:

http://localhost:8081
http://localhost:8082

Modules help organize Terraform code and improve reusability.

---

DAY 5 – CI AUTOMATION

This assignment implemented Continuous Integration validation using GitHub Actions.

Workflow file location:

.github/workflows/terraform-check.yml

The workflow runs automatically whenever code is pushed to the repository.

The CI pipeline executes:

terraform fmt
terraform validate
terraform plan

This ensures Terraform configurations are formatted correctly, syntactically valid, and able to generate infrastructure plans.

---

LEARNING OUTCOMES

Through this lab the following concepts were learned:

• Infrastructure as Code (IaC)
• Terraform configuration syntax
• Terraform variables and variable files
• Terraform modules for reusable infrastructure
• Container provisioning using Docker
• CI automation using GitHub Actions

---

AUTHOR

Abhiram Vadhri
B.Tech CSE
VNIT Nagpur
