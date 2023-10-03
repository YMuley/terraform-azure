
locals {   
    resource_group = {for resource_group in var.resource_group_list: resource_group.name => resource_group }     
}