terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.33.0" #Terraform AWS provider version
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}