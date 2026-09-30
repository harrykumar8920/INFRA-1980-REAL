terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.3.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "B18_G35_Common_RG"
    storage_account_name = "b18g35common"
    container_name       = "hkcontainer"
    key                  = "preprod.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}