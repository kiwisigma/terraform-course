# terraform-course

Hands-on labs for the HashiCorp Certified: Terraform Associate course ([btkrausen/terraform-associate-labs](https://github.com/btkrausen/terraform-associate-labs)), provisioning Azure infrastructure with Terraform.

## Tech Stack

| Layer | Tool |
|---|---|
| Infrastructure provisioning | Terraform, provider `hashicorp/azurerm ~> 5.2` |
| Cloud platform | Microsoft Azure (Resource Groups, Virtual Networks) |
| State management | Local Terraform state (`terraform.tfstate`) — no remote backend |
| Version control | Git / GitHub |

## Repository Structure

```
terraform-course/
└── labs/
    ├── lab_02_create_resource_group_vnet/   # Resource group + vnet, first pass
    ├── lab_03_update_address_space/         # Resource group + vnet, revised address space
    └── lab_003_build_from_scratch/          # Resource group + vnet, built from scratch (no walkthrough)
```

Each lab folder is a self-contained Terraform configuration (`main.tf`, `providers.tf`, `variables.tf`, `outputs.tf`) — `cd` into one and run `terraform init` before `plan`/`apply`.

---

## Labs Overview

Below are the labs in this repo. Each link points to that lab's folder.

| # | Lab Name | Link |
|---|---|---|
| 02 | Create Resource Group + VNet | [lab_02_create_resource_group_vnet](labs/lab_02_create_resource_group_vnet) |
| 03 | Update Address Space + Tags | [lab_03_update_address_space](labs/lab_03_update_address_space) |
| 003 | Built From Scratch (no walkthrough) | [lab_003_build_from_scratch](labs/lab_003_build_from_scratch) |

**lab_003** also includes a [state file anatomy diagram](labs/lab_003_build_from_scratch/state-file-anatomy.drawio.png), written independently without following the course walkthrough — first lab done from memory.
