# terraform-azurerm-resourcegroup Module

* This module will create a resource group
* It has the ability to name the resource group and set the location

## Usage

``` hcl
module "resourcegroup" {
  source            = "../../"
  resource_group = var.resource_group_name

}
```

## Scenarios

In the examples folder

## Examples

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| azurerm | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| location | The location of the resource group. | `string` | `"uksouth"` | no |
| lock\_level | Specifies the Level to be used for this Lock. Possible values are CanNotDelete and ReadOnly. Changing this forces a new resource to be created. | `string` | `"CanNotDelete"` | no |
| management\_lock\_enabled | enable of you require an management lock to be set. | `bool` | `false` | no |
| notes | Specifies some notes about the lock. Maximum of 512 characters. Changing this forces a new resource to be created. | `string` | `"This Resource Group has a Lock on and can not be deleted."` | no |
| resource\_group | The resource group name. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| location | The location of the resource group. |
| lock\_level | The resource group lock level. |
| notes | The resource group lock level notes. |
| resource\_group | The name of the resource group. |

