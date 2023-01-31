# This is where you put your outputs declaration
// *** Azure Virtual Networks Outputs ***
output "name" {
  description = ""
  value       = azurerm_virtual_network.virtual_network.name
}
output "location" {
  value = azurerm_virtual_network.virtual_network.location
  
}