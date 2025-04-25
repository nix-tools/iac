TF := 'tofu' # 'terraform'
VARFILE := 'api-keys.tfvars'

_list:
  @just --list

# Initializes terraform/opentofu (downloads providers)
init:
  {{TF}} init

plan:
  {{TF}} plan -var-file '{{VARFILE}}'

apply:
  {{TF}} apply -var-file '{{VARFILE}}'

import-repo RESOURCE_NAME='repo_foo' REPO_NAME='org-name/repo-name':
  {{TF}} import -var-file '{{VARFILE}}' github_repository.{{RESOURCE_NAME}} {{REPO_NAME}}

fmt:
  {{TF}} fmt -list -recursive
