# terraform {
#   required_version = ">= 1.5.0"
# #   backend "s3" {
# #     bucket = "infra-auto-terraform-state"    # replace with your unique name
# #     key    = "aws/terraform.tfstate"
# #     region = "us-east-1"
# #     encrypt = true
# #   }
#   # Terragrunt’s remote_state will hook into this local backend
#   backend "local" {}
# }


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.7"
    }
  }
  required_version = ">= 1.5.7"

    # Use a local backend (state kept in terraform.tfstate beside your code)
  backend "local" {
    path = "terraform.tfstate"
  }
}


provider "random" {}  # no config needed

resource "random_id" "suffix" {
  byte_length = 8
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "state" {
  bucket = "infra-auto-terraform"
  acl    = "private"
}

