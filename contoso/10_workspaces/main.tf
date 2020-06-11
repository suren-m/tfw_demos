provider "azurerm" {
    version = "~>2.13.0"
    features {}    
}

resource "azurerm_resource_group" "contoso_rg" {
    name = "${var.prefix}_${terraform.workspace}_rg"
    location = var.region
    tags = var.tags
}

# resource "azurerm_resource_group" "rgs" {  
#     count = length(var.envs)
#     name = "${var.prefix}_${var.rg_names[count.index]}"
#     location = var.region
#     tags = var.tags
# }