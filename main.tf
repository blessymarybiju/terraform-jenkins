terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"  # Ensure this is the latest stable version
    }
  }
}

provider "azurerm" {
  features {}
}
