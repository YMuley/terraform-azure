variable "resource_group_list" {
    type = list(any)
    default = []
  
}

variable "virtual_network_list" {
  type = list(any)
  default = []
}

variable "subscription_id" {
  type = string
  
}

variable "client_id" {
  type = string
}

variable "client_secret" {
  type = string
}

variable "tenant_id" {
  type = string
}