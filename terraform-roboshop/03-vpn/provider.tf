terraform {
  backend "s3" {
    bucket         = "robo-bucket-bk-01"
    key            = "vpn-instance-3"
    region         = "us-east-1"
    dynamodb_table = "roboshopapp-lock"
  }
}

provider "aws" {
  region = "us-east-1"
}
