// main.tf
// terraform-azurerm-nsg-association - attach NSG to one or more subnets

resource "azurerm_subnet_network_security_group_association" "az_nsg_assoc" {
  for_each = toset(var.subnet_ids)

  subnet_id                 = each.value
  network_security_group_id = var.nsg_id
}
