terraform {
  backend "s3" {
    bucket         = "robo-bucket-bk-01"
    key            = "terraforms-sgs"
    region         = "us-east-1"
    dynamodb_table = "roboshopapp-lock"
  }
}

provider "aws" {
  region = "us-east-1"
}
