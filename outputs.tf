// outputs.tf

output "associated_subnets" {
  description = "List of subnet IDs successfully associated with the NSG"
  value       = var.subnet_ids
}

output "nsg_id" {
  description = "NSG that was associated"
  value       = var.nsg_id
}
