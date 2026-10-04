data "azurerm_local_network_gateway" "data_lan" {
  name =  var.conns.lan_name
  resource_group_name =  var.conns.resource_group_name
}

data "azurerm_virtual_network_gateway" "data_vpngw" {
  name                = var.conns.vpn_name
  resource_group_name = var.conns.resource_group_name
}
