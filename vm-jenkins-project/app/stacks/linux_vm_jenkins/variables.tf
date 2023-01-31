// *** Azure Resource Group Variables ***
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
variable "tags" {
  description = ""
  type        = any
}

// *** Azure Virtual Network Variables ***
variable "virtual_network_name" {
  description = ""
  type        = string
  default = "my-vnet-name"
}
variable "address_space" {
  description = ""
  type        = list(string)
  default = ["10.0.0.0/16"]
}


// *** Azure Subnet Variables ***
variable "subnet_name" {
  type = string
  
}
variable "address_prefixes" {
  type = list(string)
  
}

// *** Public IP ***
variable "pip_name" {
  type = string
}

variable "allocation_method" {
  type = string
}

// *** Network Security Group Variables ***
variable "nsg_name" {
    type = string
  
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
variable "private_ip_address_allocation" {
  description = ""
  type        = string
  default = "Dynamic"
}


# // *** Tls Private Key Variables ***
# variable "algorithm" {
#     type = string
  
# }
# variable "rsa_bits" {
#     type = number
  
# }

// *** Linux Virtual Machine Variables ***
variable "linux_vm_name" {
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
# #admin_ssh_key
# variable "username" {
#     type = string
  
# }
# # variable "public_key" {
# #     type = any
  
# # }

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

