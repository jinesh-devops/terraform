# Providers and Resources

## What This Covers
- Configuring AWS provider in Terraform
- Creating an EC2 instance using a resource block
- Understanding the core Terraform workflow

## Versions Used
- Terraform : v1.15.5
- AWS CLI   : aws-cli/2.34.63
- Python    : 3.14.5

## Pre-requisites
- AWS CLI installed and configured (`aws configure`)
- Terraform installed

## What It Provisions
- 1 EC2 instance (t3.micro) on AWS using Ubuntu 26 AMI

## Commands Used
terraform init
terraform plan
terraform plan -out tfplan
terraform apply
terraform apply -auto-approve
terraform destroy
terraform destroy -auto-approve

## Key Observations
- `terraform init`   → downloads AWS provider plugin into .terraform/
- `terraform plan`   → shows what will be created (dry run)
- `terraform apply`  → creates EC2 instance + generates terraform.tfstate
- `terraform destroy`→ terminates the EC2 instance
- terraform.tfstate is auto-created on first apply — tracks real resources
