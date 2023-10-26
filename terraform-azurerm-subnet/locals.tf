locals {   
    subnet = {for subnet in var.vnet_subnet_list: subnet.name => subnet }
}