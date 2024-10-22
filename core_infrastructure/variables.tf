# Global variables
variable "rgname" {
  description = "The name of the Resource Group in which the resources will be created."
  type        = string
  default     = "rg-tf-infra-eks"
}

variable "location" {
  description = "The Azure Region in which all resources will be created."
  type        = string
  default     = "northeurope"
}

# Database module variables
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

# Storage module variables
variable "saname" {
  description = "The name of the Storage Account."
  type        = string
  default     = "satfoperaterraeks"
}

variable "scname" {
  description = "The name of the Storage Container."
  type        = string
  default     = "sctfoperaterraeks"
}

variable "blobname" {
  description = "The name of the Blob."
  type        = string
  default     = "product-image-blob-storage"
}