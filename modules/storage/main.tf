resource "azurerm_storage_account" "sa" {
  name                     = var.saname
  resource_group_name      = var.rgname
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  min_tls_version          = "TLS1_2"
}

resource "azurerm_storage_container" "product-image-sc" {
  name                  = var.scname
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}

resource "azurerm_storage_blob" "product-images" {
  name                   = var.blobname
  storage_account_name   = azurerm_storage_account.sa.name
  storage_container_name = azurerm_storage_container.product-image-sc.name
  type                   = "Block"
  source                 = "../images/product-images.zip"
}