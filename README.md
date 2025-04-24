# nix-tools GitHub org as code

This repository contains the org-wide settings for the [nix-tools GitHub org][nix-tools-gh].

[nix-tools-gh]: https://github.com/nix-tools

It uses [Terraform][tf] and the [GitHub Provider][gh-tf] for managing GitHub
resources in a git repository. This means creation of repositories, access to
the organisation, and policies like branch protection and actions whitelisting
are all handled in this repository, rather than clicking around in menus.

For a tutorial, see Kerim Satirli's video,

- [Understanding the GitHub Provider for Terraform][gh-tf-tut]

It is from 2020, but it generally works the same way.

[tf]: https://developer.hashicorp.com/terraform
[gh-tf]: https://registry.terraform.io/providers/integrations/github/latest/docs
[gh-tf-tut]: https://www.youtube.com/watch?v=Fa5jOJyvtdA
