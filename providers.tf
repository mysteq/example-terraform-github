terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.38.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-tfstate-01"
    storage_account_name = "tfstategithub3453"
    container_name       = "tfstategithub"
    key                  = "github.tfstate"
  }
}

provider "github" {}
