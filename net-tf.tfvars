resource_group_list = [
    {
        name        = "rg-tf-testing" 
        location    = "westus"
        tags        = {
            location      = "eastus"
            subscription  = "iac-dev-2"
            environment   = "prod"
            owner = "ddi-network"
        }
    }
]
virtual_network_list = [
    {
        name        = "vnet-dev-tf-test"
        location    = "eastus"
        resource_group_name = "rg-tf-testing"
        address_space = ["10.100.0.0/16"] 
        dns_server = [] 
        tags = {
            environment = "ddi-network"
        }

    }
]
