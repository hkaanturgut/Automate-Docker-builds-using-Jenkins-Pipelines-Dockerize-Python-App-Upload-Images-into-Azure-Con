
// *** Azure Network Interface Variables ***
variable "nic_name" {
  description = ""
  type        = string
  default = "windows-vm-nic"
}
variable "ip_configuration_name" {
  description = ""
  type        = string
  default = "internal"
}
variable "resource_group_name" {
  description = ""
  type        = string
  default = "terraspace-rg"
}
variable "private_ip_address_allocation" {
  description = ""
  type        = string
  default = "Dynamic"
}
variable "subnet_id" {
  description = ""
  type        = any
  default = "10.0.1.0/24"
}
variable "location" {
  default = "canadacentral"
  
}
variable "public_ip_address_id" {
  type = any
  
}