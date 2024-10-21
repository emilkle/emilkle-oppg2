output "sa_primary_blob_endpoint" {
  value = azurerm_storage_account.sa.primary_blob_endpoint
  description = "The primary blob endpoint of the storage account"
}

output "sa_primary_access_key" {
  value = azurerm_storage_account.sa.primary_access_key
  description = "The primary access key of the storage account"
  sensitive = true
}