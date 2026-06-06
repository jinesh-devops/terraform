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
