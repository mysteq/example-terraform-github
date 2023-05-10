terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.25.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tfstategithub"
    storage_account_name = "tfstategithub3453"
    container_name       = "tfstategithub"
    key                  = "github.tfstate"
  }
}

provider "github" {
  owner = "mysteq"
}
