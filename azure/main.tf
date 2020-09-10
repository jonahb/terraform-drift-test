terraform {
  backend "s3" {
    bucket         = "s12t"
    key            = "azure.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
}

provider "azurerm" {
  features {
  }
}

resource "azurerm_resource_group" "rg" {
  name     = "terraform-drift-test"
  location = "eastus"
}
