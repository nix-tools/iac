resource "github_organization_settings" "org_settings" {
  name          = "nix.tools"
  blog          = "https://nix.tools"
  description   = "nix.tools is an unofficial nix documentation website"
  billing_email = "simon@simonshine.dk"

  has_organization_projects = true
  has_repository_projects   = false

  default_repository_permission           = "read"
  members_can_create_private_repositories = false
  members_can_create_public_repositories  = false
  members_can_create_repositories         = false
  members_can_fork_private_repositories   = false

  members_can_create_pages         = false
  members_can_create_private_pages = false
  members_can_create_public_pages  = false
}
