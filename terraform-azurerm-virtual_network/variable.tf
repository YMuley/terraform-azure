variable "virtual_network_list" {
  type        = list(any)
  default     = []
  description = "list of virtual network objects "
}

variable "resource_group_output" {
  type        = map(any)
  default     = {}
  description = "list of resource group objects "
}

variable "default_values" {
  type        = any
  default     = {}
  description = "Provide default values for resources if not any"
}