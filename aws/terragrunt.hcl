# aws/terragrunt.hcl

terraform {
  source = "."    # points at your main.tf in this folder
}

remote_state {
  backend = "local"
  config = {
    path = "terraform.tfstate"   # this will live in aws/terraform.tfstate
  }
}
