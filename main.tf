resource "azurerm_resource_group" "main" {
  name     = var.resource_group
  location = var.location

}

resource "azurerm_management_lock" "resource-group-level" {
  count      = var.management_lock_enabled ? 1 : 0
  name       = "resource-group-level"
  scope      = azurerm_resource_group.main.id
  lock_level = var.lock_level
  notes      = var.notes
}
