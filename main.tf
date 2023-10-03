module "resource_group" {
  source = "./terraform-azurerm-resource_group"
  resource_group_list = var.resource_group_list
}

module "virtual_network" {
  source = "./terraform-azurerm-virtual_network"
  virtual_network_list = var.virtual_network_list
  resource_group_output = module.resource_group.resource_group_output
  depends_on = [ module.resource_group ]
}