resource "azurerm_resource_group" "infra-rg" {
  name     = var.rgname
  location = var.location
}