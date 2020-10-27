module "rg" {
  source            = "../../"
  resource_group = var.resource_group
  management_lock_enabled = false
}
