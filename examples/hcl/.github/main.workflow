workflow "terraform-docs-as-code" {
  on = "pull_request"
  resolves = ["generate_docs"]
}

action "generate_docs" {
  uses = "docker://erinatkinson/terraform-docs-as-code"
  env = {
    DEPLOY_EMAIL = "public+githubEmail@github.com"
    DEPLOY_NAME = "Deployer"
    MODULE_VARS_CONF_PATH = "terraform/variables.tf"
    MODULE_OUTPUTS_CONF_PATH = "terraform/outputs.tf"
    MODULE_NAME = "Actions Test"

  }
  secrets = ["GITHUB_TOKEN"]
}
