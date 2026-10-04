resource "azurerm_subnet" "GWS" {
  name =  var.GW_subs.name
  resource_group_name =  var.GW_subs.resource_group_name
  virtual_network_name =  var.GW_subs.virtual_network_name
  address_prefixes = var.GW_subs.address_prefixes
}