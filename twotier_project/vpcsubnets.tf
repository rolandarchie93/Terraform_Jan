resource "aws_vpc" "custom-vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "my-custom-vpc"
  }
}

#Web Tier 1st Public Subnet
resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = aws_vpc.custom-vpc.id
  cidr_block              = var.public_subnet1_cidr
  availability_zone       = var.az1
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-1"
  }
}

#Web Tier 2nd Public Subnet
resource "aws_subnet" "public_subnet_2" {
  vpc_id                  = aws_vpc.custom-vpc.id
  cidr_block              = var.public_subnet2_cidr
  availability_zone       = var.az2
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-2"
  }
}

#RDS Tier 1st Private Subnet
resource "aws_subnet" "private_subnet_1" {
  vpc_id                  = aws_vpc.custom-vpc.id
  cidr_block              = var.private_subnet1_cidr
  availability_zone       = var.az1
  map_public_ip_on_launch = true

  tags = {
    Name = "private-subnet-1"
  }
}

#RDS Tier 2nd Private Subnet
resource "aws_subnet" "private_subnet_2" {
  vpc_id                  = aws_vpc.custom-vpc.id
  cidr_block              = var.private_subnet2_cidr
  availability_zone       = var.az2
  map_public_ip_on_launch = true

  tags = {
    Name = "private-subnet-2"
  }
}