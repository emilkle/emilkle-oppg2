terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.1"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-backend-eks"
    storage_account_name = "sabackendekszqreqedcf9"
    container_name       = "tfstate"
    key                  = "opera-terra/web-app/core_infrastructure/core_infrastructure.tfstate"
  }
}

provider "azurerm" {
  subscription_id = "3291a0d9-96b5-41ee-9b93-5b28b419919f"
  features {}
}