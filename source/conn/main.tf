resource "azurerm_virtual_network_gateway_connection" "vpn_conn" {
  name                            = var.conns.name
  resource_group_name             = var.conns.resource_group_name
  location                        = var.conns.location

  virtual_network_gateway_id      = data.azurerm_virtual_network_gateway.data_vpngw.id
  local_network_gateway_id        = data.azurerm_local_network_gateway.data_lan.id
  type                            = var.conns.type
  shared_key                      = var.conns.shared_key
}