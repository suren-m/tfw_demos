# main.tf
provider "azurerm" {
    version = "~>2.13.0"
    features {}    
}

resource "azurerm_resource_group" "rgs" {  
    count = length(var.rg_names)
    name = "${var.prefix}_${var.rg_names[count.index]}"
    location = var.region
    tags = var.tags
}

# Create a virtual network
resource "azurerm_virtual_network" "vnet" {
    name                = "myTFVnet"
    address_space       = ["10.0.0.0/16"]
    location            = "westus2"
    resource_group_name = azurerm_resource_group.rg.name
}


# usage: random_integer.suffix.result

# resource "random_integer" "suffix" {
#   min     = 1
#   max     = 50000 
# }
