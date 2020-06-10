# main.tf from calling module 
terraform {
  backend "azurerm" {
    resource_group_name   = "tfstate"
    storage_account_name  = "tfstate10168"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
}

provider "azurerm" {
    version = "~>2.13.0"
    features {}    
}

module "connectedrg" {
    source = "github.com/suren-m/tfw_modules//contoso-az-connectedrg?ref=v1.3"
    rg_names = var.rg_names
    vnets = var.vnets
}





