variable "linux_vm_name" {
    type = string
  
}
variable "resource_group_name" {
    type = string
  
}
variable "location" {
    type = string
  
}
variable "size" {
    type = string
  
}
variable "admin_username" {
    type = string
  
}
variable "admin_password" {
    type = string
  
}
variable "disable_password_authentication" {
    type = bool
  
}
variable "network_interface_ids" {
    type = list(any)
  
}

# #admin_ssh_key
# variable "username" {
#     type = string
  
# }
# variable "public_key" {
#     type = any
  
# }

#os_disk
variable "caching" {
    type = string
  
}
variable "storage_account_type" {
    type = string
  
}

#source_image_reference
variable "publisher" {
    type = string
  
}
variable "offer" {
    type = string
  
}
variable "sku" {
    type = string
  
}
