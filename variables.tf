// variables.tf

variable "nsg_id" {
  description = "ID of the Network Security Group to associate"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs that will be associated with the NSG"
  type        = list(string)
}
