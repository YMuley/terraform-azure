terraform {
   #required_version = ">= 1.5.7"//0.13.3
  required_providers {
    azurerm = {
      version = ">=3.75.0"
    }
  }
  azuread = {
      source  = "hashicorp/azuread"
      version = ">=2.45.0"
    }
}

provider "azurerm" {
  features {  
    resource_group {
      prevent_deletion_if_contains_resources = true
    }
    }
  #storage_use_azuread = true
  skip_provider_registration = true
}

provider "azuread" {
  subscription_id = var.subscription_id
  client_id = var.client_id
  client_secret = var.client_secret
  tenant_id = var.tenant_id
}