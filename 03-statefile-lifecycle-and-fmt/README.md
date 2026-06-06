# State, Lifecycle and Formatting

## What This Covers
- Terraform state file and how to inspect it
- Lifecycle rules — prevent_destroy
- Targeting a specific resource for destroy
- Formatting and validating Terraform code

## What It Provisions
- 1 EC2 instances
- instance_one has prevent_destroy = true

## Commands Used

### State
terraform state list                               # list all tracked resources
terraform state show aws_instance.ec2_instance     # details of one resource

### Target — destroy one instance without touching others
terraform destroy -target aws_instance.ec2_instance

### Format
terraform fmt                  # format current directory
terraform fmt -recursive       # format all subdirectories
terraform fmt -diff            # show what changed during formatting

### Validate
terraform validate             # check syntax and config errors

## Key Observations
- State file tracks every resource Terraform manages
- prevent_destroy = true blocks destroy — throws error to protect critical infra
- -target is useful when you have multiple resources and want to delete only one
- fmt does not change logic — only fixes indentation and spacing
- validate catches errors before plan/apply
