# core_workflow

provider "azurerm" {
    version = ">=2.0.0"
    features {}    
}


resource "azurerm_resource_group" "contoso_rg" {
    name = "contoso_rg"
    location = "UK South"

    tags = {
        "cost_center" = "contoso research"
    } 
}

resource "azurerm_resource_group" "contoso_rg_dev" {
    name = "contoso_rg_dev"
    location = "UK South"

    tags = {
        "cost_center" = "contoso research"
    } 
}