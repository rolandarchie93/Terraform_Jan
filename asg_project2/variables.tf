variable "region" {
  type    = string
  default = "us-east-1"
}

#instance variable
variable "instance_type" {
  description = "Instance type t2.micro"
  type        = string
  default     = "t2.micro"
}

variable "name" {
  type    = string
  default = "rolandasgproject"
}
variable "ami_id" {
  description = "Amazon Linux Instance"
  type        = string
  default     = "ami-0a3c3a20c09d6f377"
}

variable "key_name" {
  description = "Key pair for this project"
  type        = string
  default     = "silverteamkey"
}

variable "availability_zones" {
  type    = list(string)
  default = ["subnet-00eeaeb9c1bfee36b", "subnet-051156f063ba98d22"]
}

variable "vpc_id" {
  type    = string
  default = "vpc-0498fd42f491a41ad"
}

variable "bucket" {
  description = "s3 bucket"
  type        = string
  default     = "s3bucket-roland93-archie"
}





