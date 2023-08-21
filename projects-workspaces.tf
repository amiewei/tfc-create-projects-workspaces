resource "tfe_project" "AppA" {
  organization = var.orgName
  name         = "General-Admin"
}

resource "tfe_workspace" "appA-dev" {
  name         = "appA-dev"
  organization = tfe_project.AppA.organization
}

resource "tfe_workspace" "appB-test" {
  name         = "appB-test"
  organization = tfe_project.AppA.organization
}

resource "tfe_workspace" "appC-prod" {
  name         = "appC-prod"
  organization = tfe_project.AppA.organization
}
