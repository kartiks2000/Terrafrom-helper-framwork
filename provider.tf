terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAXQ6LGCL75O5HH7S5"
  secret_key = "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"
}