# config_options

# main.tf
locals {   
    tags = {
        "cost_center" = "contoso research"
    }
}

provider "azurerm" {
    version = ">=2.0.0"
    features {}    
}

resource "azurerm_resource_group" "contoso_rg" {
    name = "contoso_rg"
    location = var.region
    tags = local.tags
}

resource "azurerm_resource_group" "contoso_dev_rg" {    
    name = "contoso_dev_rg"
    location = var.region
    tags = local.tags
}