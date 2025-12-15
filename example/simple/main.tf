// example/simple/main.tf
//module "nsg_association" {
//  source     = "../../" # root of repo
//  nsg_id     = "/subscriptions/9d85477c-d2a6-46aa-9b01-fed6058bf542/resourceGroups/rg-example-remote/providers/Microsoft.Network/networkSecurityGroups/example-nsg-baseline"
//  subnet_ids = ["/subscriptions/9d85477c-d2a6-46aa-9b01-fed6058bf542/resourceGroups/rg-example-remote/providers/Microsoft.Network/virtualNetworks/example-vnet-remote/subnets/app"]
//}

//Remote
module "nsg_association" {
  source     = "git@github.com:DevOpsTerraformLabs/terraform-azurerm-nsg-association.git" # root of repo
  nsg_id     = "/subscriptions/9d85477c-d2a6-46aa-9b01-fed6058bf542/resourceGroups/rg-example-remote/providers/Microsoft.Network/networkSecurityGroups/example-nsg-baseline"
  subnet_ids = ["/subscriptions/9d85477c-d2a6-46aa-9b01-fed6058bf542/resourceGroups/rg-example-remote/providers/Microsoft.Network/virtualNetworks/example-vnet-remote/subnets/app"]
}
