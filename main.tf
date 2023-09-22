# since these variables are re-used - a locals block makes this more maintainable

# locals {
#  backend_address_pool_name      = "${azurerm_virtual_network.vnetmcti.name}-beap"
#  frontend_port_name             = "${azurerm_virtual_network.vnetmcti.name}-feport"
#  frontend_ip_configuration_name = "${azurerm_virtual_network.vnetmcti.name}-feip"
#  http_setting_name              = "${azurerm_virtual_network.vnetmcti.name}-be-htst"
#  listener_name                  = "${azurerm_virtual_network.vnetmcti.name}-httplstn"
#  request_routing_rule_name      = "${azurerm_virtual_network.vnetmcti.name}-rqrt"
#  redirect_configuration_name    = "${azurerm_virtual_network.vnetmcti.name}-rdrcfg"
#}


resource "azurerm_resource_group" "mcti" {
  name     = "rg-${var.convention}"
  location = var.location
}