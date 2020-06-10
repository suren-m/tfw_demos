# main.tf from calling module 
provider "azurerm" {
    version = "~>2.13.0"
    features {}    
}

module "connectedrg" {
    source = "github.com/suren-m/tfw_modules//contoso-az-connectedrg?ref=v1.3"
    rg_names = var.rg_names
    vnets = var.vnets
}





