variable "name" {
  type = string
  validation {
    condition = can(regex("^[a-zA-Z0-9]*$", var.name))
    error_message = "Container registry name must contain only alphanumeric characters"
  }
}

variable "resource_group_name" {
  type = string
  default = "sec-rg"
}

variable "location" {
  type = string
  default = "eastus"
}

variable "sku" {
  type = string
  default = "Standard"
}

variable "admin_enabled" {
  type = bool
  default = false
}

variable "public_network_access_enabled" {
  type = bool
  default = true
}