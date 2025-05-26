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
      version = "~> 4.70"       # pin to whatever major version you're using
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5"
    }
  }
  # optional: lock Terraform CLI version too
  required_version = ">= 1.5.7"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "state" {
  bucket = "infra-auto-terraform-state-${random_id.suffix.hex}"
  acl    = "private"
}

resource "random_id" "suffix" {
  byte_length = 4
}
