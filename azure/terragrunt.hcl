terraform {
  # The module source is the current directory
  source = "./"
}

remote_state {
  backend = "local"
  config = {
    # Persist state alongside your azure/ folder
    path = "${get_terragrunt_dir()}/terraform.tfstate"
  }
}
