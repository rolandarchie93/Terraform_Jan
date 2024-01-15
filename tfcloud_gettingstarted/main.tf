# the following config uses a proivder which provisions (fake) resources
# to a fictious cloud vendor called "fake web servies". configuration for 
# fakewebservices provideer can be found in provider.tf
# after running the setup script (./scripts/setup.sh), fel free to changes these
# resources and 'terraform apply' as much as you'd like! These resources are
# purely for demonstration and created in Terraform cloud

resource "fakewebservices_vpc" "primary_vpc" {
    name = "Primary VPC"
    cidr_block = "0.0.0.0/1"
}

resource "fakewebservices_server" "servers" {
    count = 2
    
    name = "Server ${count.index + 1}"
    type = "t2.micro"
    vpc = fakewebservices_vpc.primary_vpc.name
}

resource "fakewebservices_database" "prod_db" {
    name = "Production DB"
    size = 256
}