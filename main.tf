resource "azurerm_resource_group" "third-rg"{
    name = var.rg_name
    location = var.location
}

resource "azurerm_storage_account" "secondstorage"{
    name = var.storage
    resource_group_name = resource.azurerm_resource_group.third-rg.name
    location = resource.azurerm_resource_group.third-rg.location
    account_tier = "Standard"
    account_replication_type = "GRS"
    tags = {
        environment = "Dev"
    }
}

resource "azurerm_storage_container" "storage_container" {
  name                  = "$web"
  storage_account_id  = azurerm_storage_account.secondstorage.id
  container_access_type = "blob"
}
