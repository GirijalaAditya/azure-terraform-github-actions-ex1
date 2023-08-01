terraform {
  required_version = "~> 1.5.4"

cloud {
      organization = "terraform-cloud-azure"

      workspaces {
        name = "azure-terraform-github-actions-ex1"
      }
    }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.67.0"
    }
 }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}
