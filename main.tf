resource "azurerm_storage_account" "example" {
  name                     = "adityagirijala2000sa"
  resource_group_name      = data.azurerm_resource_group.azure_rg.name
  location                 = data.azurerm_resource_group.azure_rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment   = "Prod"
    owner         = "Aditya"
    business_unit = "DevOps"
  }
}