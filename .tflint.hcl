# .tflint.hcl (at repo root)

plugin "aws" {
  enabled = true
  source  = "github.com/terraform-linters/tflint-ruleset-aws"
  version = "0.13.0"
}

plugin "azure" {
  enabled = true
  source  = "github.com/terraform-linters/tflint-ruleset-azure"
  version = "0.14.0"
}

# Built-in Terraform rules
rule "terraform_unused_declarations" {
  enabled = true
}
