terraform {
  cloud {
    organization = "tf-se-test"

    workspaces {
      name = "tfc-projects-workspaces"
    }
  }
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.48.0"
    }
  }
}

# provider "tfe" {}
