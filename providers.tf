terraform {
  required_providers {
    aws = {
      version = ">=3.2.0"
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}