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
  region = var.region
}



# This is a resource block
resource "aws_instance" "MyGreenTeamweb" {
  ami           = var.ami_id
  instance_type = var.instance

  tags = {
    Name = "HelloWorld"
  }
}


resource "aws_s3_bucket" "Mys3example" {
  bucket = var.bucketname

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}



resource "aws_security_group" "security_group" {
  #Arguements
  name        = "ExampleAppServerSecurityGroup"
  vpc_id      = var.vpc_id

  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ExampleAppServer"
  }
}


