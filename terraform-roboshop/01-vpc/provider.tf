terraform {
  backend "s3" {
    bucket         = "robo-bucket-bk-01"
    key            = "terraforms-vpc-03"
    region         = "us-east-1"
    dynamodb_table = "roboshopapp-lock"
  }
}

provider "aws" {
  region = "us-east-1"
}
