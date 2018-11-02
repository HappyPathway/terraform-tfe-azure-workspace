
resource "tfe_variable" "VAULT_ADDR" {
  key = "VAULT_ADDR"
  value = "${var.vault_addr}"
  category = "env"
  workspace_id = "${tfe_workspace.WorkSpace.id}"
}

resource "tfe_variable" "VAULT_TOKEN" {
  key = "VAULT_TOKEN"
  value = "${var.vault_token}"
  category = "env"
  workspace_id = "${tfe_workspace.WorkSpace.id}"
  sensitive = true
}

resource "tfe_variable" "ARM_SUBSCRIPTION_ID_image" {
  key = "ARM_SUBSCRIPTION_ID"
  value = "${data.vault_generic_secret.azure.data["subscription_id"]}"
  category = "env"
  workspace_id = "${tfe_workspace.WorkSpace.id}"
  sensitive = true
}

resource "tfe_variable" "ARM_CLIENT_SECRET" {
  key = "ARM_CLIENT_SECRET"
  value = "${data.vault_generic_secret.azure.data["client_secret"]}"
  category = "env"
  workspace_id = "${tfe_workspace.WorkSpace.id}"
  sensitive = true
}

resource "tfe_variable" "ARM_CLIENT_ID" {
  key = "ARM_CLIENT_ID"
  value = "${data.vault_generic_secret.azure.data["client_id"]}"
  category = "env"
  workspace_id = "${tfe_workspace.WorkSpace.id}"
  sensitive = true
}

resource "tfe_variable" "ARM_TENANT_ID" {
  key = "ARM_TENANT_ID"
  value = "${data.vault_generic_secret.azure.data["tenant_id"]}"
  category = "env"
  workspace_id = "${tfe_workspace.WorkSpace.id}"
  sensitive = true
}
