module "rg1" {
    source = "../modules/1_azurerm_resource_group"
    rg_name     = "test-rg-todo"
    rg_location = "West Europe"
  
}