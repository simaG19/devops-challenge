terraform {
  required_version = ">= 1.12.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.aws_region

  # Allow planning with the fake credentials used by this challenge.
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_region_validation      = true
}
