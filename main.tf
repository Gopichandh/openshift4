provider "aws" {
  version = ">= 0.12.10"
  region  = "us-east-1"
  access_key = "AKIAWYX2GDNTREXHC4PO"
  secret_key = "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"
}
terraform {
  backend "s3" {
    bucket = "capgemini-s3"
    key    = "terraform.tfstate"
    access_key = "AKIAWYX2GDNTREXHC4PO"
    secret_key = "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"
    region = "us-east-1"
  }
}
