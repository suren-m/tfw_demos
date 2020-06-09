# variable prefix {}

# variable region {           
#     type = string
#     default = "North Europe"
# }

# variable tags {
#     type= map          
# }

provider "azurerm" {
    version = "~>2.13.0"
    features {}    
}

resource "azurerm_resource_group" "contoso_rg" {
    name = "${var.prefix}_rg"
    # name = "Hello, %{ if var.name != "" }${var.name}%{ else }unnamed%{ endif }!"    
    location = var.region
    tags = var.tags
}

resource "azurerm_resource_group" "contoso_dev_rg" {    
    name = "${var.prefix}_dev_rg"
    location = var.region
    tags = var.tags
}