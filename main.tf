resource "azurerm_resourcegroup" "main" {
  name     = var.resourcegroup
  location = var.location

}

resource "azurerm_management_lock" "resource-group-level" {
  count      = var.management_local_enabled ? 1 : 0
  name       = "resource-group-level"
  scope      = azurerm_resource_group.main.id
  lock_level = var.lock_level
  notes      = var.notes
}