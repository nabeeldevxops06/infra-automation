
# .tflint.hcl
plugin "aws" {
  enabled = true
  source  = "github.com/terraform-linters/tflint-ruleset-aws"
  version = "0.15.2"
}

plugin "azurerm" {
  enabled = true
  source  = "github.com/terraform-linters/tflint-ruleset-azurerm"
  version = "0.29.0"
}

# Built-in Terraform rules
rule "terraform_unused_declarations" {
  enabled = true
}