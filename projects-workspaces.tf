resource "tfe_project" "AppA" {
  organization = var.orgName
  name         = "Application A"
}

resource "tfe_workspace" "appA-dev" {
  name         = "appA-dev"
  organization = tfe_organization.appA.name
}

resource "tfe_workspace" "appB-test" {
  name         = "appB-test"
  organization = tfe_organization.appA.name
}

resource "tfe_workspace" "appC-prod" {
  name         = "appC-prod"
  organization = tfe_organization.appA.name
}
