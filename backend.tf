# terraform {
#   backend "azurerm" {
#     resource_group_name  = "rg-iac-mgmt-dev-wus"
#     storage_account_name = "stiacmgmtdevwus"
#     container_name       = "terraformstate"
#     key                  = "sagehubdevtfstate"
#   }
# }

# terraform {
#   cloud {
#     organization = "motifworks"

#     workspaces {
#       name = "terraform-azurerm-resource_group"
#     }
#   }
# }