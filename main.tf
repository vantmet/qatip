terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.16.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "689ec7d5-82d1-4115-9716-461253177cbc"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "RG1"
    storage_account_name = "jenkinsstatevantmet"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "example" {
  name     = "RG2"
  location = "westeurope"
}
