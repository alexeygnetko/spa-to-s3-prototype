terraform {
  backend "s3" {
    bucket = "spa-to-s3-prototype-terraform-statelock"
    key    = "spa-to-s3-prototype.tfstate"
    region = "eu-west-1"
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  required_version = ">= 0.14"
}

provider "aws" {
  region = "eu-west-1"
}