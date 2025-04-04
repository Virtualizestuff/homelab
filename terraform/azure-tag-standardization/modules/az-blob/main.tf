variable "context" {
  description = "Naming and tagging context"
  type        = any
}

resource "azurerm_resource_group" "rg" {
  name     = "${var.context.name}-rg"
  location = "East US"
  tags     = var.context.tags
}

resource "azurerm_storage_account" "storage" {
  name                     = substr(replace(var.context.name, "-", ""), 0, 24)
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     = var.context.tags
}

resource "azurerm_storage_container" "container" {
  name                  = var.context.name
  storage_account_id  = azurerm_storage_account.storage.id
  container_access_type = "private"
}
