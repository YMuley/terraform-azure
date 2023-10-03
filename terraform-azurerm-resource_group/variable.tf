variable "resource_group_list" {
  type        = list(any)
  default     = []
  description = "list of resource group objects "
}

variable "default_values" {
  type        = any
  default     = {}
  description = "Provide default values for resources if not any"
}