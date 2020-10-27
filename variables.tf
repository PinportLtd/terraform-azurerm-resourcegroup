variable "resource_group" {
  type        = string
  description = "The resource group name."
}

variable "location" {
  type        = string
  description = "The location of the resource group."
  default     = "uksouth"
}

variable "management_lock_enabled" {
  type        = bool
  description = "enable of you require an management lock to be set."
  default     = false
}
variable "lock_level" {
  type        = string
  description = "Specifies the Level to be used for this Lock. Possible values are CanNotDelete and ReadOnly. Changing this forces a new resource to be created."
  default     = "CanNotDelete"
}

variable "notes" {
  type        = string
  description = "Specifies some notes about the lock. Maximum of 512 characters. Changing this forces a new resource to be created."
  default     = "This Resource Group has a Lock on and can not be deleted."
}