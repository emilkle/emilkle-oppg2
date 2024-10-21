variable "rgname" {
    description = "The name of the Resource Group in which the resources will be created."
    type        = string
    default     = "rg-tf-infra"
}

variable "location" {
    description = "The Azure Region in which all resources will be created."
    type        = string
    default     = "northeurope"
}

variable "mssqldbserevername" {
    description = "The name of the MSSQL Database Server."
    type        = string
    default     = "mssql-e-commerce-db-server"
}

variable "mssqldbname" {
    description = "The name of the MSSQL Database Server."
    type        = string
    default     = "mssql-e-commerce-db"
}

variable "sa_primary_blob_endpoint" {
  type        = string
  description = "The primary blob endpoint of the storage account"
}

variable "sa_primary_access_key" {
  type        = string
  description = "The primary access key of the storage account"
  sensitive   = true
}