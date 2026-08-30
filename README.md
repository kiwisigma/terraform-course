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
├── lab_02/     # Resource group + vnet, first pass
├── lab_03/     # Resource group + vnet, revised address space
└── lab_003/    # Resource group + vnet, built from scratch (no walkthrough)
```

Each lab folder is a self-contained Terraform configuration (`main.tf`, `providers.tf`, `variables.tf`, `outputs.tf`) — `cd` into one and run `terraform init` before `plan`/`apply`.

---

## [lab_02](lab_02) — First Resource Group + VNet

```mermaid
graph TD
    subgraph RG["Resource Group: terraform-course (East US)"]
        VNET["Virtual Network: terraform-network<br/>10.0.0.0/16"]
    end
    style RG fill:#f3eefc,stroke:#6b3fa0,stroke-width:2px,color:#3a1f5c
    style VNET fill:#ffffff,stroke:#6b3fa0,stroke-width:1.5px,color:#211c2c
```

| Resource | Name | Detail |
|---|---|---|
| `azurerm_resource_group` | `terraform-course` | East US |
| `azurerm_virtual_network` | `terraform-network` | `10.0.0.0/16` |

## [lab_03](lab_03) — Address Space + Tag Update

```mermaid
graph TD
    subgraph RG["Resource Group: terraform-course (East US)"]
        VNET["Virtual Network: terraform-network<br/>192.168.0.0/16"]
    end
    style RG fill:#f3eefc,stroke:#6b3fa0,stroke-width:2px,color:#3a1f5c
    style VNET fill:#ffffff,stroke:#6b3fa0,stroke-width:1.5px,color:#211c2c
```

| Resource | Name | Detail |
|---|---|---|
| `azurerm_resource_group` | `terraform-course` | East US |
| `azurerm_virtual_network` | `terraform-network` | `192.168.0.0/16` (updated in-place from lab_02's range) |

## [lab_003](lab_003) — Built From Scratch

Same resource shapes as lab_02/lab_03, written independently without following the walkthrough — first lab done from memory.

```mermaid
graph TD
    subgraph RG["Resource Group: practice-walkthrough (West US)"]
        VNET["Virtual Network: terraform-network<br/>192.168.0.0/16"]
    end
    style RG fill:#e6eefb,stroke:#1f5fbf,stroke-width:2px,color:#0f2f5c
    style VNET fill:#ffffff,stroke:#1f5fbf,stroke-width:1.5px,color:#211c2c
```

| Resource | Name | Detail |
|---|---|---|
| `azurerm_resource_group` | `practice-walkthrough` | West US |
| `azurerm_virtual_network` | `terraform-network` | `192.168.0.0/16` |
