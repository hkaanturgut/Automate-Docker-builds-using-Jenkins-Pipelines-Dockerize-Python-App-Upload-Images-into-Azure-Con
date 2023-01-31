// *** Resorce Group Values ***
resource_group_name = "terraspace-rg"
# location = "canadacentral"
# tags = {
#   Enviroment = "dev"
# }

// *** Virtual Network Values ***
virtual_network_name = "my-vnet-name"
# address_space = "10.0.0.0/16"
# address_spaces = []
# dns_servers = ["10.0.0.4","10.0.0.5"]

// *** Subnets Values ***
subnets = {
  // *** Subnet-1 Values ***
  "subnet-1" = {
    address_prefixes = ["10.0.1.0/24"]
  }
  // *** Subnet-2 Values ***
  "subnet-2" = {
    address_prefixes = ["10.0.2.0/24"]
  }
}
