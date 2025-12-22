terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.32.0"
    }
  }
backend "azurerm" {
  storage_account_name = "tfstate2025abc123"
  container_name       = "tfstate"
  key                  = "dev/terraform.tfstate"
  use_azuread_auth     = true
  client_id            = "91e9bddf-55ad-4819-ad87-eef6df4ac07e"
  client_secret        = "vM38Q~Z9mnCv9cKQvOPLKOtTow4eAaUc2hm4mc-H"
  tenant_id            = "7a411d05-7587-426e-a2d7-5a3b50200561"
}
}
provider "azurerm" {
  features {}
  subscription_id = "56de03ab-1570-40b1-bd13-5a9ca5b1e106"  # Resources ke liye correct subscription
}




