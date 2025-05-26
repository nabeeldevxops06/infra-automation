# .tflint.hcl

# AWS provider–specific ruleset (700+ checks)
plugin "aws" {
  enabled = true
  source  = "github.com/terraform-linters/tflint-ruleset-aws"
  version = "0.40.0"
}

# AzureRM provider–specific ruleset (200+ checks)
plugin "azurerm" {
  enabled = true
  source  = "github.com/terraform-linters/tflint-ruleset-azurerm"
  version = "0.28.0"
}

# Built-in Terraform language rules
rule "terraform_unused_declarations" {
  enabled = true
}
