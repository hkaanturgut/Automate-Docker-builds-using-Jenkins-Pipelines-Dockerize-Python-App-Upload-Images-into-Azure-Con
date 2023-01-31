// *** Azure Virtual Network Variables ***
variable "virtual_network_name" {
  description = ""
  type        = string
  default = "my-vnet-name"
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
variable "address_space" {
  description = ""
  type        = list(string)
  default = ["10.0.0.0/16"]
}
