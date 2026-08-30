resource "azurerm_resource_group" "main" {
  name     = "terraform-course"
  location = "eastus"


  tags = {
    Name        = "terraform-course"
    Enviornment = "Lab"
    Managed_By  = "Terraform"
  }
}

# Create the virtual network
resource "azurerm_virtual_network" "main" {
  name                = "terraform-network"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  address_space       = ["10.0.0.0/16"]

  tags = {
    Name        = "terraform-course"
    Enviornment = "learning-terraform"
    Managed_By  = "Terraform"
  }
}

