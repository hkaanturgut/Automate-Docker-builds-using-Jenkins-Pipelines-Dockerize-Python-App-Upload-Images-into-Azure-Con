module "rg" {
    source = "../../modules/resource_group"
    resource_group_name=var.resource_group_name
    location=var.location
    tags=var.tags
  
}
module "vnet" {
    source = "../../modules/virtual_network"
    virtual_network_name=var.virtual_network_name
    resource_group_name=module.rg.name
    location=module.rg.location
  address_space=var.address_space
}

module "subnet" {
    source = "../../modules/subnet"
    resource_group_name=module.rg.name
    virtual_network_name=module.vnet.name
    subnet_name=var.subnet_name
    address_prefixes=var.address_prefixes
 
}

module "nsg" {
  source = "../../modules/nsg"
  nsg_name=var.nsg_name
  location=module.vnet.location
  resource_group_name=module.rg.name
 security_rule_name=var.security_rule_name
  priority=var.priority
  direction=var.direction
  access=var.access
  protocol=var.protocol
  source_port_range=var.source_port_range
  destination_port_range=var.destination_port_range
  source_address_prefix=var.source_address_prefix
  destination_address_prefix=var.destination_address_prefix
  
}

module "subnet_nsg_association" {
  source = "../../modules/subnet_nsg_association"
  subnet_id=module.subnet.id
  network_security_group_id=module.nsg.id
  
}


module "pip" {
  source = "../../modules/pip"
  pip_name=var.pip_name
  location=module.rg.location
  resource_group_name=module.rg.name
  allocation_method=var.allocation_method
}

module "nic" {
    source = "../../modules/nic"
  nic_name=var.nic_name
  location=module.rg.location
  resource_group_name=module.rg.name
  ip_configuration_name=var.ip_configuration_name
  subnet_id= module.subnet.id
  private_ip_address_allocation=var.private_ip_address_allocation
  public_ip_address_id=module.pip.pip_id
}
# module "tls_private_key" {
#   source = "../../modules/tls_private_key"
#   algorithm=var.algorithm
#   rsa_bits=var.rsa_bits
  
# }
module "linux_vm" {
    source = "../../modules/linux_vm"
    linux_vm_name=var.linux_vm_name
    resource_group_name=module.rg.name
    location=module.nic.location
    size=var.size
    admin_username=var.admin_username
    admin_password=var.admin_password
    disable_password_authentication=var.disable_password_authentication
    network_interface_ids=[module.nic.id]
    # username=var.username
    # public_key=module.tls_private_key.tls_private_key
    caching=var.caching
    storage_account_type=var.storage_account_type
    publisher=var.publisher
    offer=var.offer
    sku=var.sku
    
  
}
