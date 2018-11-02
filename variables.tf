variable "github_org" {
  default = "HappyPathway"
}

variable "repo" {
  type = "string"
  description = "Terraform Source Repository"
}

variable "ingress_submodules" {
  default = true
  type = "string"
  description = "Consume Submodules?"
}

variable "repo_branch" {
  default = "master"
  type = "string"
  description = "Terraform Source Repository Branch"
}


variable "organization" {}
variable "oauth_token" {}
variable "vault_azure_credentials_path" {}
variable "vault_github_tokens" {}
variable "workspace_name" {}

variable "vault_addr" {}
variable "vault_token" {}
