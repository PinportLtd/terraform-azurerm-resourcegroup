output "resource_group" {
  description = "The name of the resource group."
  value       = azurerm_resource_group.main.name
}

output "location" {
  description = "The location of the resource group."
  value       = azurerm_resource_group.main.location
}


output "lock_level" {
  description = "The resource group lock level."
  value       = azurerm_management_lock.resource-group-level.lock_level
}


output "notes" {
  description = "The resource group lock level notes."
  value       = azurerm_management_lock.resource-group-level.notes
}