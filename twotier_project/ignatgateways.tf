#For IGW
#Associate with the VPC
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.custom-vpc.id

  tags = {
    Name = "IGW"
  }
}


#for NAT GATEWAY
resource "aws_nat_gateway" "gateway-nat" {
  allocation_id = aws_eip.elastic-for-ngw.id
  subnet_id     = aws_subnet.public_subnet_1.id

  tags = {
    Name = "gateway NAT"
  }

  depends_on = [aws_internet_gateway.igw]
}

#create Elastic IP address
resource "aws_eip" "elastic-for-ngw" {
  domain = "vpc"

}

