data "azurerm_subnet" "data_subnet" {
  name =  var.vpngws.subnet_name
  virtual_network_name =  var.vpngws.virtual_network_name
  resource_group_name =  var.vpngws.resource_group_name
}

data "azurerm_public_ip" "data_pip" {
  name =  var.vpngws.pip_name
  resource_group_name =  var.vpngws.resource_group_name
}
