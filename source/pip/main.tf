resource "azurerm_public_ip" "pip" {
  name                = var.pips.name
  location            = var.pips.location
  resource_group_name = var.pips.resource_group_name
  allocation_method   = var.pips.allocation_method
  sku = var.pips.sku
}