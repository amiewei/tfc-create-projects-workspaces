output "Project_A_Id" {
  value = tfe_project.AppA.id
}

output "appA-dev_workspace_id" {
  value = tfe_workspace.appA-dev.id
}

output "appB-test_workspace_id" {
  value = tfe_workspace.appB-test.id
}

output "appC-prod_workspace_id" {
  value = tfe_workspace.appC-prod.id
}
