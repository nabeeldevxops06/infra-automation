# terraform {
#   required_version = ">= 1.5.0"
#   backend "azurerm" {
#     resource_group_name  = "infra-auto-rg"
#     storage_account_name = "infraautostate${random_id.hex}"
#     container_name       = "tfstate"
#     key                  = "azure/terraform.tfstate"
#     subscription_id      = "YOUR_SUB_ID"
#     tenant_id            = "YOUR_TENANT_ID"
#     encrypt              = true
#   }
# }


terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.70"
    }
  }
  required_version = ">= 1.5.7"
}

provider "azurerm" {
  features {}
}


# resource "azurerm_resource_group" "rg" {
#   name     = "infra-auto-rg"
#   location = "East US"
# }

# resource "azurerm_storage_account" "state" {
#   name                     = "infraautostate${random_id.hex}"
#   resource_group_name      = azurerm_resource_group.rg.name
#   account_tier             = "Standard"
#   account_replication_type = "LRS"
# }

# resource "random_id" "hex" {
#   byte_length = 4
# }
