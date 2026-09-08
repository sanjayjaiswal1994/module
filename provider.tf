terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.75.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "OptimusPrime"
    storage_account_name = "bumblebee"
   container_name       = "ironhide"
     key           = "sanjay.tfstate"
  }
}
provider "azurerm" {
  features {}

}