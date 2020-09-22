provider "azurerm" {
  version = "=2.28.0"
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "demo" {
  name     = "${var.prefix}-rg"
  location = var.location

  # tags are not automatically set on all resources
  tags = {
    environment = "Terraform Demo"
  }
}
