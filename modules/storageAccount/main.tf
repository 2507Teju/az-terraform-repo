resource "azurerm_storage_account" "storage_account" {
  for_each = var.storage_accounts
  name                     = each.value
  resource_group_name      = var.resource_group
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  allow_nested_items_to_be_public = true
  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_storage_container" "storage_containers" {
  for_each = var.storage_containers

  name                  = each.value.name
  storage_account_name  = azurerm_storage_account.storage_account[each.key].name
  container_access_type = each.value.access_type
//  storage_account_key   = each.value.storage_account_key
}

