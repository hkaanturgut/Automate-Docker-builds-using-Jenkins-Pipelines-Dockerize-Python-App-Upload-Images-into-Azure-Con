// *** Azure Subnet Variables ***
variable "resource_group_name" {
  description = ""
  type        = string
}
variable "virtual_network_name" {
  description = ""
  type        = string
}
variable "subnet_name" {
  type = string
  
}
variable "address_prefixes" {
  type = list(string)
  
}