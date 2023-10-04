variable "resource_group_list" {
    type = list(any)
    default = []
  
}

variable "virtual_network_list" {
  type = list(any)
  default = []
}

variable "ARM_SUBSCRIPTION_ID" {
  type = string
  
}

variable "ARM_CLIENT_ID" {
  type = string
}

variable "ARM_CLIENT_SECRET" {
  type = string
}

variable "ARM_TENANT_ID" {
  type = string
}