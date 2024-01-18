
terraform {
  backend "s3" {
    bucket         = "user-bucket-generatated-1217"
    region         = "eu-west-1"
    key            = "tfstate"
    dynamodb_table = "Lock-Files"
    encrypt        = true
  }

  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}