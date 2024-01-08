provider "aws" {
    region = "us-east-1"
}

module "ec2module" {
    source = "" # use the folder on where the code is found
    ec2name = "Name From Module"
}

output "module_output" {
    value = module.ec2module.instance_id
}