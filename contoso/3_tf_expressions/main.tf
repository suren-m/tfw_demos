provider "azurerm" {
    version = "~>2.13.0"
    features {}    
}
# main.tf
resource "azurerm_resource_group" "rgs" {  
    count = length(var.rg_names)
    name = var.rg_names[count.index]
    location = var.region
    tags = var.tags
}


# usage: random_integer.suffix.result

# resource "random_integer" "suffix" {
#   min     = 1
#   max     = 50000 
# }
