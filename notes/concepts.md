## Terraform Basics
Terraform is an open-source Infrastructure as Code tool used to automate infrastructure provisioning and management through declarative configuration files.

### What is IaC?
Infrastructure as Code = managing servers/networks through code files instead of clicking in the cloud console.

### Terraform vs Others
- CloudFormation → AWS only
- Ansible        → config management, not great for provisioning
- Terraform      → cloud-agnostic, best for provisioning

### How Terraform Works
1. Write .tf files (HCL language)
2. terraform init  → downloads provider plugins
3. terraform plan  → shows what WILL happen (dry run)
4. terraform apply → actually creates resources
5. terraform destroy → deletes everything

### Terraform Architecture
- Core      → reads configs + state, figures out what to do
- Providers → plugins for each cloud (aws, azurerm, google)
- State file → .tfstate tracks real-world resources

## Providers and Resources

### What is a Provider?
- A plugin that lets Terraform talk to a cloud platform
- Must be declared in required_providers block
- Downloaded during terraform init into .terraform/ folder
- Example: hashicorp/aws, hashicorp/azurerm, hashicorp/google

### Provider Block Syntax
provider "aws" {
  region = "us-east-1"
}

### What is a Resource?
- A single infrastructure component you want to create
- Syntax: resource "<provider_type>" "<local_name>" { }
- Example: resource "aws_instance" "my_ec2" { }

### State File (terraform.tfstate)
- Auto-created when you run terraform apply
- JSON file that tracks what Terraform has deployed
- NEVER edit manually
- Acts as source of truth between your code and real cloud

### AWS CLI Setup
- Install AWS CLI → aws configure
- Provide: Access Key, Secret Key, Region, Output format
- Terraform uses these credentials automatically via provider

## State, Lifecycle and Formatting

### State File (terraform.tfstate)
- Tracks everything Terraform has deployed in real cloud
- Created on first terraform apply
- Every apply/destroy updates the state file
- Never edit manually — always use terraform commands
- Never push to GitHub — keep in .gitignore

### terraform state commands
terraform state list                          # shows all tracked resources
terraform state show <resource_address>       # details of a specific resource
Example: terraform state show aws_instance.ec2_instance

### Lifecycle Block
- Special block inside a resource to control behavior
- 3 options available:
  1. prevent_destroy    → blocks accidental deletion
  2. create_before_destroy → creates new before deleting old
  3. ignore_changes     → ignore drift on specific attributes

### prevent_destroy Example
lifecycle {
  prevent_destroy = true
}
- If you run terraform destroy → Terraform throws an error
- Useful for protecting databases, critical instances

### -target Flag
- Destroy or apply only ONE specific resource
- Useful when you have multiple resources and want to touch only one

terraform destroy -target aws_instance.ec2_instance
terraform apply  -target aws_instance.ec2_instance

### terraform fmt
- Formats .tf files to standard HCL style
- Fixes indentation, spacing — does NOT change logic

terraform fmt              → format current folder
terraform fmt -recursive   → format all subfolders
terraform fmt -diff        → show what lines were changed

### terraform validate
- Checks syntax and internal consistency of .tf files
- Catches errors before you run plan or apply
- Does NOT connect to AWS — purely local check
- Always run validate before plan


