
provider "azurerm" {
    version = "~>2.0.0"
    features {}    
}

# https://www.terraform.io/docs/configuration/modules.html
module "contoso_rg" {
    # source = "./modules/resource_group"
    source = "github.com/suren-m/tfw_modules//contoso-az-rg?ref=v1.1"

    name = "contoso_rg1"
    tags = var.tags        
    region = var.region
}

module "contoso_dev_rg" {
    source = "./modules/resource_group"

    name = "contoso_dev_rg1"
    tags = var.tags          
    region = var.region
}

