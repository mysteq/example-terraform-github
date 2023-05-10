terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.25.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tfstategithub"
    storage_account_name = "stintprojtfstategithub"
    container_name       = "tfstategithub"
    key                  = "github.tfstate"
  }
}

provider "github" {}
