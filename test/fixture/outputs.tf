output "resource_group_name" {
  description = "The resource group name."
  value = module.rg.resource_group
}


output "location" {
  description = "The resource group location."
  value = module.rg.location
}


output "resource_group_lock_level" {
  description = "The resource group lock level."
  value = module.rg.lock_level
}

output "resource_group_lock_level_notes" {
  description = "The resource group lock level notes."
  value = module.rg.notes
} 