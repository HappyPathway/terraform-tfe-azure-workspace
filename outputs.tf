output "workspace_id" {
    value = "${tfe_workspace.WorkSpace.id}"
}

output "auto_apply" {
    value = "${tfe_workspace.WorkSpace.auto_apply}"
}

output "name" {
    value = "${tfe_workspace.WorkSpace.name}"
}

output "organization" {
    value = "${tfe_workspace.WorkSpace.organization}"
}

output "terraform_version" {
    value = "${tfe_workspace.WorkSpace.terraform_version}"
}

output "vcs_repo" {
    value = "${tfe_workspace.WorkSpace.vcs_repo[0]}"
}

output "working_directory" {
    value = "${tfe_workspace.WorkSpace.working_directory}"
}