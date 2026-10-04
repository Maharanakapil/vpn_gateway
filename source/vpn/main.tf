resource "azurerm_virtual_network_gateway" "VPNGW" {
  name                = var.vpngws.name
  location            = var.vpngws.location
  resource_group_name = var.vpngws.resource_group_name

  type     = var.vpngws.type
  vpn_type = var.vpngws.vpn_type
  sku      = var.vpngws.sku

  ip_configuration {
    name                          = var.vpngws.ip_configuration.name
    public_ip_address_id           = data.azurerm_public_ip.data_pip.id
    subnet_id                      = data.azurerm_subnet.data_subnet.id
    private_ip_address_allocation  = var.vpngws.ip_configuration.private_ip_address_allocation
  }
}