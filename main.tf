data "tfe_project" "Azure" {
  organization = var.org-name
  name         = "Azure"
}

data "tfe_organization" "org" {
  name = "tf-se-test"
}

# creates 3x3 workspaces under a project named Azure
locals {
  services = [
    "service-1",
    # "service-2",
    # "service-3",
  ]
  service_envs = [
    "dev",
    # "test",
    # "prod"
  ]

  workspaces = [
    for pair in setproduct(local.services, local.service_envs) : {
      service = pair[0]
      env     = pair[1]
    }
  ]
}

resource "tfe_workspace" "my-workspaces" {
  organization = var.org-name
  for_each     = { for pair in local.workspaces : "${pair.service}-${pair.env}" => pair }
  name         = "${each.value.service}-${each.value.env}"
  tag_names    = [each.value.env, "app"]
  project_id   = data.tfe_project.Azure.id
}
