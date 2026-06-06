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

## State Commands
| Command                                    | What It Does                        |
|--------------------------------------------|-------------------------------------|
| terraform state list                       | List all resources in state         |
| terraform state show <resource_address>    | Show details of one resource        |

## Target Flag
| Command                                         | What It Does                   |
|-------------------------------------------------|--------------------------------|
| terraform destroy -target <resource_address>    | Destroy only one resource      |
| terraform apply -target <resource_address>      | Apply only one resource        |

## Format Commands
| Command                  | What It Does                            |
|--------------------------|-----------------------------------------|
| terraform fmt            | Format .tf files in current folder      |
| terraform fmt -recursive | Format all subfolders too               |
| terraform fmt -diff      | Show what lines fmt changed             |

## Validate
| Command               | What It Does                              |
|-----------------------|-------------------------------------------|
| terraform validate    | Check syntax errors before plan/apply     |

## Lifecycle Options (inside resource block)
| Option                  | What It Does                                    |
|-------------------------|-------------------------------------------------|
| prevent_destroy         | Block destroy — throws error to protect resource|
| create_before_destroy   | Create new resource before deleting old         |
| ignore_changes          | Ignore attribute drift in state                 |


