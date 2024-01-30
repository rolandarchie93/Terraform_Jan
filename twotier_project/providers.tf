terraform {
  cloud {
    organization = "TCrolandTC"

    workspaces {
      name = "my-two-tier"
    }
  }
  required_providers {
    aws = {
      version = "5.3.0"
    }
  }
}

#Configure AWS provider
provider "aws" {
  region = var.aws_region
}
