
            
provider "azurerm" 
{
    version = "=1.32.1"
}
            
resource "azurerm_resource_group" "S" 
{
    name     = "S"
    location = "East US"
    
    tags = {
        
        
    }
            
}

                
resource "azurerm_virtual_network" "vnet01" 
{
    name                = "vnet01"
    resource_group_name = "${azurerm_resource_group.S.name}"
    address_space       =  ["10.0.0.0/16"]
    location            = "East US"   
    
    
    tags = {
        
        
    }
            
}


resource "azurerm_subnet" "vnet01-sub1" 
{
    name                 = "sub1"
    resource_group_name  = "${azurerm_resource_group.S.name}"
    virtual_network_name = "${azurerm_virtual_network.vnet01.name}"
    address_prefix       = "10.0.1.0/24"
   
    
}

 
