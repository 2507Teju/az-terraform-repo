variable "name" {
  type = string
  default = "frst-autoscale"
}

variable "location" {
  type = string
  default = "eastus"
}

variable "target_resource_id" {
  type = string
}

variable "minimum" {
  type = number
  default = 1
}

variable "maximum" {
  type = number
  default = 2
}