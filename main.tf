terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# This is a resource block
resource "aws_instance" "MyBlackTeamweb" {
  ami           = "ami-079db87dc4c10ac91"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}