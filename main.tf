terraform {

  backend "azurerm" {

    resource_group_name = "sowmithri-rg-tf"

    storage_account_name = "store123"

    container_name = "testcontainer123"

    key = "terraform.state"

    }

}
provider "azurerm" {

  features {}
  
  version = "2.0.0"
  
}
resource "azurerm_storage_account" "TechTargetSG456" {

Name	= "ttstorage789"
resource_group_name	= var.resourceGroupName
Location	=	var.location
account_tier	=	"Standard"

account_replication_type = "GRS"

tags = {

environment = "development"
}
}
