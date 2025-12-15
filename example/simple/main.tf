// example/simple/main.tf
//module "nsg_association" {
//  source     = "../../" # root of repo
//  nsg_id     = "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/rg-example-remote/providers/Microsoft.Network/networkSecurityGroups/example-nsg-baseline"
//  subnet_ids = ["/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/rg-example-remote/providers/Microsoft.Network/virtualNetworks/example-vnet-remote/subnets/app"]
//}

//Remote
module "nsg_association" {
  source     = "git@github.com:DevOpsTerraformLabs/terraform-azurerm-nsg-association.git" # root of repo
  nsg_id     = "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/rg-example-remote/providers/Microsoft.Network/networkSecurityGroups/example-nsg-baseline"
  subnet_ids = ["/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/rg-example-remote/providers/Microsoft.Network/virtualNetworks/example-vnet-remote/subnets/app"]
}
