terraform {

  backend "azurerm" {

    resource_group_name = "sowmithri-rg"

    storage_account_name = "storemfwmw3heqnyuk"

    container_name = "testcontainer"

    key = "terraform.state"

    }

}
provider "azurerm" {

  features {}
  
  version = "2.0.0"
  
}
resource "azurerm_storage_account" "TechTargetSG" {

Name	= "ttstorage92"
resource_group_name	= var.resourceGroupName
Location	=	var.location
account_tier	=	"Standard"

account_replication_type = "GRS"

tags = {

environment = "development"
}
}
