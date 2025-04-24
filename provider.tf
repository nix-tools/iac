terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.6"
    }
  }
}

provider "github" {
  token = var.github_token
  owner = "nix-tools"
}
