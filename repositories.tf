resource "github_repository" "repo_website" {
  name         = "website"
  description  = "The nix.tools website"
  homepage_url = "https://nix.tools"
  visibility   = "public"

  has_issues      = true
  has_discussions = false
  has_projects    = false
  has_wiki        = false

  is_template = false

  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = true
  allow_auto_merge   = false

  delete_branch_on_merge = true
  archive_on_destroy     = true
  archived               = false

  security_and_analysis {
    # Advanced security (code scanning, dependency review) is always available for public repos.
    #advanced_security {
    #  status = "enabled"
    #}

    # Scans repositories for known secret formats to prevent accidental commits
    secret_scanning {
      status = "enabled"
    }

    # Blocks commits that contain secrets, preventing them from entering the repository
    secret_scanning_push_protection {
      status = "enabled"
    }
  }
}

resource "github_repository" "repo_iac" {
  name         = "iac"
  description  = "The nix-tools GitHub organization as code"
  visibility   = "public"

  has_issues      = true
  has_discussions = false
  has_projects    = false
  has_wiki        = false

  is_template = false

  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = true
  allow_auto_merge   = false

  delete_branch_on_merge = true
  archive_on_destroy     = true
  archived               = false

  security_and_analysis {
    # Advanced security (code scanning, dependency review) is always available for public repos.
    #advanced_security {
    #  status = "enabled"
    #}

    # Scans repositories for known secret formats to prevent accidental commits
    secret_scanning {
      status = "enabled"
    }

    # Blocks commits that contain secrets, preventing them from entering the repository
    secret_scanning_push_protection {
      status = "enabled"
    }
  }
}
