resource "azurerm_local_network_gateway" "lan" {
  name                = var.lans.name
  location            = var.lans.location
  resource_group_name = var.lans.resource_group_name

  gateway_address = var.lans.gateway_address
  address_space =  var.lans.address_space
}