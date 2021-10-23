terraform {
  backend "s3" {
    bucket = "angular-and-s3-terraform-statelock"
    key    = "angular-and-s3.tfstate"
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