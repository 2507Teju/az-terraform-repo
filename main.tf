resource "azurerm_resource_group" "sec-rg"{
    name = var.rg_name
    location = var.location
}

resource "azurerm_storage_account" "firststorage"{
    name = var.storage
    resource_group_name = resource.azurerm_resource_group.sec-rg.name
    location = resource.azurerm_resource_group.sec-rg.location
    account_tier = "Standard"
    account_replication_type = "GRS"
    tags = {
        environment = "Dev"
    }
}

