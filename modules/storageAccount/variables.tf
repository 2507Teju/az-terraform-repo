variable "storage_accounts" {
  description = "A map of storage account names to create."
  type        = map(string)
}

variable "resource_group" {
  description = "The name of the resource group in which to create the storage accounts."
  type        = string
}

variable "location" {
  description = "The Azure region in which to create the storage accounts."
  type        = string
}

variable "account_tier" {
  description = "The performance tier of the storage account. Valid values are 'Standard' and 'Premium'."
  type        = string 
}

variable "account_replication_type" {
  description = "The replication type of the storage account. Valid values are 'LRS', 'GRS', 'RAGRS', and 'ZRS'."
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the storage accounts."
  type        = map(string)
  default     = {}
} 

variable "storage_containers" {
  description = "A map of storage container names to create."
  type        = map(object({
    name              = string
    access_type       = string
    storage_account_key = string
  }))
}