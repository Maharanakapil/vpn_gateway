rgm = {
  name     = "rg1"
  location = "centralindia"
}

vnetm = {
  name                = "vnet-vpn-ci-01"
  location            = "centralindia"
  resource_group_name = "rg1"
  address_space       = ["172.16.1.0/24"]
}

GW_subm = {
  name                 = "GatewaySubnet"
  resource_group_name  = "rg1"
  virtual_network_name = "vnet-vpn-ci-01"
  address_prefixes     = ["172.16.1.0/27"]
}

pipm = {
  name                = "vpn-GW-pip"
  location            = "centralindia"
  resource_group_name = "rg1"
  allocation_method   = "Static"
  sku                 = "Standard"
}

vpngwm = {
  name                 = "vpn-GW-test-01"
  location             = "centralindia"
  resource_group_name  = "rg1"
  pip_name             = "vpn-GW-pip"
  virtual_network_name = "vnet-vpn-ci-01"
  subnet_name          = "GatewaySubnet"

  type     = "Vpn"
  vpn_type = "RouteBased"
  sku      = "VpnGw1"

  ip_configuration = {
    name                          = "vnetGateway-test-Config"
    private_ip_address_allocation = "Dynamic"
  }
}
lanm = {
  name                = "st-localgateway"
  location            = "centralindia"
  resource_group_name = "rg1"

  gateway_address = "192.0.0.2"
  address_space   = ["10.0.0.0/24"]
}

connm = {
  name                = "st-az-connection"
  resource_group_name = "rg1"
  location            = "centralindia"
  lan_name            = "st-localgateway"
  vpn_name            = "vpn-GW-test-01"
  type                = "IPsec"
  shared_key          = "vpn@123456"
}