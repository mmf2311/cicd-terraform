
terraform {
  backend "s3" {
    bucket = "sctp-ce5-tfstate-bucket-1"
    key    = "malik.tfstate"
    region = "us-east-1"
  }
}

# Configure the AWS Provider
provider "aws" {
region = "us-east-1"
}

#new sns topic
resource "aws_sns_topic" "user_updates" {
name = "malik-updates-topic"
}
