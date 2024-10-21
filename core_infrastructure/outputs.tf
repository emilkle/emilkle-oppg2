output "primary_access_key" {
  value       = module.storage.sa_primary_access_key
  description = "The primary access key of the storage account"
  sensitive   = true
}

output "primary_blob_endpoint" {
  value       = module.storage.sa_primary_blob_endpoint
  description = "The primary blob endpoint of the storage account"
}