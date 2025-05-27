terraform {
  backend "local" {}  # placeholder for Terragrunt
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.70"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.7"
    }
  }
  required_version = ">= 1.5.7"
}

provider "azurerm" {
  features {}
}

# Generate a short 4-byte (8 hex chars) suffix
resource "random_id" "suffix" {
  byte_length = 4
}

# Create the RG
resource "azurerm_resource_group" "rg" {
  name     = "infra-auto-rg"
  location = "East US"
}

# Use the suffix in the name
resource "azurerm_storage_account" "state" {
  name                     = "azstorage${random_id.suffix.hex}"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

output "storage_account_name" {
  value = azurerm_storage_account.state.name
}
