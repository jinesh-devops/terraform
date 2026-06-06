## Core Workflow Commands

| Command                        | What It Does                              |
|-------------------------------|-------------------------------------------|
| terraform init                | Download provider plugins                 |
| terraform plan                | Dry run — show what will be created       |
| terraform plan -out filename  | Save plan to a file                       |
| terraform apply               | Create resources (asks for confirmation)  |
| terraform apply -auto-approve | Create resources (no confirmation prompt) |
| terraform destroy             | Delete resources (asks confirmation)      |
| terraform destroy -auto-approve | Delete resources (no prompt)            |

## Important Files
| File                  | Purpose                                      |
|-----------------------|----------------------------------------------|
| main.tf               | Core config — providers and resources        |
| terraform.tfstate     | State file — auto generated, never push this |
| .terraform/           | Provider plugins — never push this           |
