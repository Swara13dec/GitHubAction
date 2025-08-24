terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "rg-tf-backend"
    storage_account_name = "sastatebackend1"                             # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "safehouse"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  =  "dev.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }

}

provider "azurerm" {
  features {
    
  }
  subscription_id = "258a8e61-bb4a-4a2e-99d2-ca7211e4a421"
}