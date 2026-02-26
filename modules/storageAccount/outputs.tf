output "storage_account_ids" {
  value = {
    for storage_account_id, storage_accounts in azurerm_storage_account.storage_account_1 :
    storage_accounts.id => storage_accounts.id
  }
}

output "storage_container_ids" {
  value = {
    for k, v in azurerm_storage_container.storage_containers : k => v.id
  }
}