VARFILE := 'api-keys.tfvars'

_list:
  @just --list

plan:
  terraform plan -var-file '{{ VARFILE }}'

apply:
  terraform apply -var-file '{{ VARFILE }}'

import-repo RESOURCE_NAME='repo_foo' REPO_NAME='org-name/repo-name':
  terraform import -var-file '{{ VARFILE }}' github_repository.{{ RESOURCE_NAME }} {{ REPO_NAME }}

fmt:
  terraform fmt -list -recursive
