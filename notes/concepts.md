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
