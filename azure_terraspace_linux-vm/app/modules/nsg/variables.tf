variable "nsg_name" {
    type = string
  
}
variable "resource_group_name" {
  description = ""
  type        = string
  default = "terraspace-rg"
}
variable "location" {
  description = ""
  type        = string
  default = "canadacentral"
}
variable "security_rule_name" {
    type = string
  
}
variable "priority" {
    type = number
  
}
variable "direction" {
    type = string
  
}
variable "access" {
    type = string
  
}
variable "protocol" {
    type = string
  
}
variable "source_port_range" {
    type = string
  
}
variable "destination_port_range" {
    type = string
  
}
variable "source_address_prefix" {
    type = string
  
}
variable "destination_address_prefix" {
    type = string
  
}