variable "region" {
    description = "this is my region"
    type = string
    default = "us-east-1"
}

variable "ami_id" {
    description = "this is my ami id"
    type = string
    default = "ami-079db87dc4c10ac91"
}

variable "instance" {
    description = "this is my instance"
    type = string
    default = "t2.micro"
}

variable "bucketname" {
    description = "this is my s3 bucket"
    type = string
    default = "my-tf-test-bucket-green999"
}

variable "vpc_id" {
    description = "this is my vpc id"
    type = string
    default = "vpc-07211b713fff5d4f2"
}