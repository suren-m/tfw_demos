# main.tf from calling module 
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

provider "azurerm" {
  features {}
}


module "connectedrg" {
  # or remote git repo with ?ref=verion    
  # source = "./modules/contoso-az-connectedrg" 
  # notice the //
  source   = "github.com/suren-m/tfw_modules//contoso-az-connectedrg?ref=v1.3"
  rg_names = var.rg_names
  vnets    = var.vnets
}





