locals {   
    virtual_network = {for virtual_network in var.virtual_network_list: virtual_network.name => virtual_network }
}