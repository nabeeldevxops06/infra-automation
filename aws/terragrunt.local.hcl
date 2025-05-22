# aws/terragrunt.local.hcl

terraform {
  source = "."
}

remote_state {
  backend = "local"
  config = {
    path = "terraform.tfstate"
  }
}
