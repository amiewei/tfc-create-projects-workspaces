resource "tfe_project" "AppA" {
  organization = var.orgName
  name         = "GeneralAdmin"
}

resource "tfe_workspace" "appA-dev" {
  name         = "appA-dev"
  organization = var.orgName
  tag_names    = ["dev", "app"]
}

resource "tfe_workspace" "appB-test" {
  name         = "appB-test"
  organization = var.orgName
  tag_names    = ["test", "app"]
}

resource "tfe_workspace" "appC-prod" {
  name         = "appC-prod"
  organization = var.orgName
  tag_names    = ["prod", "app"]
}
