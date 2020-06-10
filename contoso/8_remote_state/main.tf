
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

resource "azurerm_resource_group" "contoso_rg" {
    name = "contoso_rg"
    location = "UK South"

    tags = {
        "purpose" = "remote state"
    } 
}