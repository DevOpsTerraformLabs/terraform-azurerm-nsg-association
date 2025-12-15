# terraform-azurerm-nsg-association

A simple, single-purpose Terraform module that **associates an Azure Network Security Group (NSG) with one or more subnets**.

This module does **not** create Subnets or NSGs — it only maps them together.  
This separation follows best practices for clean module architecture.

---

## 🎯 Features

- Attach **one NSG** to **one or multiple subnets**
- Uses `for_each` for efficient, repeatable associations
- Clean input/output design
- Compatible with your existing modules:
    - `terraform-azurerm-resourcegroup`
    - `terraform-azurerm-vnet`
    - `terraform-azurerm-subnet`
    - `terraform-azurerm-nsg`

---

## 📦 Usage (GitHub source)

```hcl
module "nsg_association" {
  source = "git::https://github.com/<GITHUB_USERNAME>/terraform-azurerm-nsg-association.git?ref=v1.0.0"

  nsg_id = module.nsg.nsg_id

  subnet_ids = [
    module.subnet_app.id,
    module.subnet_web.id
  ]
}
```
## 🧰 Inputs

| Name         | Type           | Required | Description                  |
| ------------ | -------------- | -------- | ---------------------------- |
| `nsg_id`     | `string`       | yes      | The NSG resource ID          |
| `subnet_ids` | `list(string)` | yes      | List of subnet IDs to attach |

## 📤 Outputs
| Name                 | Description                             |
| -------------------- | --------------------------------------- |
| `associated_subnets` | List of subnet IDs that were associated |
| `nsg_id`             | The NSG used for the associations       |


## 🔍 Example (Local Testing)
````
module "nsg_association" {
source     = "../../.."
nsg_id     = var.nsg_id
subnet_ids = var.subnet_ids
}
````
Run:
````
cd example/simple
terraform init
terraform apply
````
## 🏗 Architecture Recommendation 

Use this module after creating:

- Resource Group
- Virtual Network
- Subnets
- NSGs

This flow gives clean modular ownership:


| Resource                 | Module                            |
| ------------------------ | --------------------------------- |
| Resource Group           | terraform-azurerm-resourcegroup   |
| VNet                     | terraform-azurerm-vnet            |
| Subnet                   | terraform-azurerm-subnet          |
| NSG                      | terraform-azurerm-nsg             |
| NSG ↔ Subnet Association | terraform-azurerm-nsg-association |

## 🔖 Versioning
Always use a tagged release:
````
?ref=v1.0.0
````


