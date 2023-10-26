
resource "azurerm_subnet" "subnet" {
 for_each                       = local.subnet
 name                           = each.value.name
 resource_group_name            = var.resource_group_output[each.value.resource_group_name].name
 virtual_network_name           = var.virtual_network_output[each.value.virtual_network_name].name
 address_prefixes               = each.value.address_prefixes
 service_endpoints              = each.value.service_endpoints
 service_endpoint_policy_ids    = each.value.service_endpoint_policy_ids
 private_endpoint_network_policies_enabled      = each.value.private_endpoint_network_polices_enabled
 private_link_service_network_policies_enabled  = each.value.private_link_service_network_policies_enabled

 dynamic "delegation" {
    for_each    = each.value.delegation
        content{
            name = delegation.value.name
                dynamic "service_delegation"{
                    for_each = delegation.value.service_delegation
                        content{
                            name    = service_delegation.value.name
                            actions = service_delegation.value.actions
                        }
                }
        }
    }
}