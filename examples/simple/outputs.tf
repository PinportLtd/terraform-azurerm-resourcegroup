output "output_list" {
  description = "The result of the random_shuffle module."
  value       = module.random_shuffle.permutation_string_list
}


output "resource_group_lock_level" {
  description = "The resource group lock level."
  value = azurerm_management_lock.resource-group-level.lock_level
}