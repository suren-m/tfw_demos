# main.tf from calling module 
terraform {
  backend "azurerm" {
    resource_group_name = "contoso"
    # storage_account_name  = "tfstate10168"
    container_name = "livedemo"
    key            = "terraform.tfstate"
  }
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
  source   = "github.com/suren-m/tfw_modules//contoso-az-connectedrg?ref=v1.3"
  rg_names = var.rg_names
  vnets    = var.vnets
}

# partial config
# terraform init -backend-config="storage_account_name=tfdemos"


