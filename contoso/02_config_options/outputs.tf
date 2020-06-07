# outputs.tf
output "contoso_rg_id" {
    value = azurerm_resource_group.contoso_rg.id
}

output "contoso_dev_rg_id" {
    value = azurerm_resource_group.contoso_dev_rg.id
}

# terraform plan -var-file="contoso.uk.tfvars" -out "main.tfplan"
# terraform apply -auto-approve "main.tfplan"