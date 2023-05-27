terraform {

  cloud {

    organization = "Cyrus-Academy"
    workspaces {
      name = "terraformus"
    }
  }
  
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}