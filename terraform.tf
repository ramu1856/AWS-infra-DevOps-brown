provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "chewy_rg" {
  name     = "chewy-rg"
  location = "East US"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "chewy-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.chewy_rg.location
  resource_group_name = azurerm_resource_group.chewy_rg.name
}
