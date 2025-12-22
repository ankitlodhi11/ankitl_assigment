terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.32.0"
    }
  }
backend "azurerm" {
    resource_group_name  = "infa-rg"
    storage_account_name = "infastorageaccountal"
    container_name       = "tfstate"
    key                  = "dev/terraform.tfstate"
}
}
provider "azurerm" {
  features {}
  subscription_id = "56de03ab-1570-40b1-bd13-5a9ca5b1e106"  # Resources ke liye correct subscription
}


