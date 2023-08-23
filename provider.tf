terraform {
  cloud {
    organization = "tf-se-test"

    workspaces {
      name = "tfc-create-projects-workspaces"
    }
  }
  required_providers {
    tfe = {
      version = "~> 0.48.0"
    }
  }
  required_version = ">= 0.14.0"
}

provider "tfe" {

}
