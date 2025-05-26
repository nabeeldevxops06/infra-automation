plugin "aws" {
  enabled = true
  version = "0.13.0"
}

plugin "azure" {
  enabled = true
  version = "0.14.0"
}

# enable built-in terraform rules
rule "terraform_unused_declarations" {
  enabled = true
}
