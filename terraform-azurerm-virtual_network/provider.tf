terraform {
  required_providers {
    azurerm = {
      version = ">=3.75.0"
    }
  }
}

provider "azurerm" {
  features {  
    resource_group {
      prevent_deletion_if_contains_resources = true
    }
    }
  client_id       = "ea7d721a-3358-433d-b26f-1d79421f920d"
  client_secret   = "eMZ8Q~j_-WNd~gJ7i6GqBUxEpUsOcl9L8bpucbxP"
  tenant_id       = "fd41ee0d-0d97-4102-9a50-c7c3c5470454"
  subscription_id = "8694217e-4a30-4107-9a12-aeac74b82f5c"
}
