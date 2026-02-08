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

module "acr_shared" {
  source = "./modules/main.tf"
}
