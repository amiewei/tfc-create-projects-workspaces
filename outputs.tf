output "Project_Id" {
  value = data.tfe_project.Azure.id
}

output "Org_Id" {
  value = data.tfe_organization.org.id
}

output "Org_Name" {
  value = data.tfe_organization.org.name
}
