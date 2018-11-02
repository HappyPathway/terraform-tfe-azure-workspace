resource "tfe_workspace" "WorkSpace" {
  name = "${var.workspace_name}"
  organization = "${var.organization}"
  vcs_repo = {
      identifier = "${var.github_org}/${var.repo}"
      branch = "${var.repo_branch}"
      oauth_token_id = "${var.oauth_token}"
      ingress_submodules = "${var.ingress_submodules}"
  }
}