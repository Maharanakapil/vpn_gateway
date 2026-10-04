module "resource_group" {
  source = "../../../source/rg"
  rgs    = var.rgm
}

module "virtual_network" {
  source = "../../../source/vnet"
  vnets  = var.vnetm
}

module "GatewaySubnet" {
  source  = "../../../source/subnet"
  GW_subs = var.GW_subm
}

module "pip" {
  source = "../../../source/pip"
  pips   = var.pipm
}

module "vpn_GW" {
  source = "../../../source/vpn"
  vpngws = var.vpngwm
}

module "local_gateway" {
  source = "../../../source/lan"
  lans   = var.lanm
}

module "vpn_connection" {
  source = "../../../source/conn"
  conns = var.connm
}