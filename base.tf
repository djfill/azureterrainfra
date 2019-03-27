resource "azurerm_resource_group" "base" {
  name     = "${local.prefix}-base-rg"
  location = "${var.location}"
