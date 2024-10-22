output "rgname" {
  value = azurerm_resource_group.infra-rg.name
  description = "The name of the Resource Group in which the resources will be created."
}

output "location" {
  value = azurerm_resource_group.infra-rg.location
  description = "The Azure Region in which all resources will be created."
}