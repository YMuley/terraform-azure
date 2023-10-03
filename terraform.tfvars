resource_group_list = [
    {
        name        = "rg-saurabh-test" //"fw-hub-usw-rg" 
        location    = "westus"
        tags        = {
            location      = "westus"
            subscription  = "iac-dev-1"
            environment   = "dev"
            owner = "sage_it_team"
        }
    }
]
virtual_network_list = [
    {
        name        = "vnet-tb-dev-westus-001"
        location    = "westus"
        resource_group_name = "rg-dserv-tb-dev-westus-001"
        address_space = ["10.100.0.0/16"] //["172.21.0.0/16"]
        dns_server = [] //["172.21.1.40", "172.21.1.41"]

    }
]