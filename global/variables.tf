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
