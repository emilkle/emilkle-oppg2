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

module "global" {
  source   = "../global"
  rgname   = var.rgname
  location = var.location
}

module "networking" {
  source = "../modules/networking"
}

module "app_service" {
  source = "../modules/app_service"
}

module "database" {
  source                   = "../modules/database"
  rgname                   = module.global.rgname
  location                 = module.global.location
  mssqldbserevername       = var.mssqldbserevername
  mssqldbname              = var.mssqldbname
  sa_primary_blob_endpoint = module.storage.sa_primary_blob_endpoint
  sa_primary_access_key    = module.storage.sa_primary_access_key
}

module "storage" {
  source   = "../modules/storage"
  rgname   = module.global.rgname
  location = module.global.location
  saname   = var.saname
  scname   = var.scname
  blobname = var.blobname
}

module "nn" {
  source = "../modules/nn"
}
