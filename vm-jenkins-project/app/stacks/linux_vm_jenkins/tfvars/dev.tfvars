// *** Azure Resource Group Values ***
resource_group_name           = "linux-vm-jenkins-rg"
location                      = "canadacentral"
tags = {
  Enviroment = "dev"
}
// *** Azure Virtual Network Values ***
virtual_network_name          = "linux-vm-vnet"
address_space                 = ["10.0.0.0/16"]
// *** Azure Subnet Values ***
subnet_name                            = "subnet1"
address_prefixes                = ["10.0.2.0/24"]
// *** Network Security Group Values ***
nsg_name="my-nsg"
security_rule_name="test123"
priority=100
direction="Inbound"
access="Allow"
protocol="Tcp"
source_port_range="*"
destination_port_range="*"
source_address_prefix="*"
destination_address_prefix="*"
// *** Public IP Values ***
pip_name="pip-linuxvm"
allocation_method="Static"
// *** Azure Network Interface Values ***
nic_name                      = "linux-vm-nic"
ip_configuration_name         = "internal"
private_ip_address_allocation = "Dynamic"
# // *** Tls Private Key Values ***
# algorithm="RSA"
# rsa_bits=4096
// *** Linux Virtual Machine Values ***
linux_vm_name="linuxv-vm-jenkins"
size="Standard_B2s"
admin_username="hkaanturgut"
admin_password="Kaan123"
disable_password_authentication=false
# username="hkaanturgut"
# public_key="files/id_rsa.pub"
caching="ReadWrite"
storage_account_type="Standard_LRS"
publisher="Canonical"
offer="UbuntuServer"
sku="16.04-LTS"













