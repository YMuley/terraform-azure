terraform {
   #required_version = ">= 1.5.7"//0.13.3
  required_providers {
    azurerm = {
      version = ">=3.75.0"
    }
  }
  # azuread = {
  #     source  = "hashicorp/azuread"
  #     version = ">=2.45.0"
  #   }
}

provider "azurerm" {
  features {  
    resource_group {
      prevent_deletion_if_contains_resources = true
    }
    }
  #storage_use_azuread = true
  skip_provider_registration = true
  ARM_SUBSCRIPTION_ID = var.ARM_SUBSCRIPTION_ID
  ARM_CLIENT_ID = var.ARM_CLIENT_ID
  ARM_CLIENT_SECRET = var.ARM_CLIENT_SECRET
  ARM_TENANT_ID = var.ARM_TENANT_ID
}

# provider "azuread" {
#   ARM_SUBSCRIPTION_ID = var.ARM_SUBSCRIPTION_ID
#   ARM_CLIENT_ID = var.ARM_CLIENT_ID
#   ARM_CLIENT_SECRET = var.ARM_CLIENT_SECRET
#   ARM_TENANT_ID = var.ARM_TENANT_ID
# }