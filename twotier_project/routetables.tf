#IGW Public RT
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.custom-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "public-route-table"
  }
}

#NAT GW Private RT
resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.custom-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.gateway-nat.id
  }

  tags = {
    Name = "private-route-table"
  }
}

#Public Subnet 1 associated with Public RT
resource "aws_route_table_association" "subnet1-public-rt" {
  subnet_id      = aws_subnet.public_subnet_1.id
  route_table_id = aws_route_table.public_rt.id
}

#Public Subnet 2 associated with Public RT
resource "aws_route_table_association" "subnet2-public-rt" {
  subnet_id      = aws_subnet.public_subnet_2.id
  route_table_id = aws_route_table.public_rt.id
}

#Private RT associated with Private Subnet 1
resource "aws_route_table_association" "subnet1-private-rt" {
  subnet_id      = aws_subnet.private_subnet_1.id
  route_table_id = aws_route_table.private_rt.id
  depends_on     = [aws_route_table.private_rt]
}
#depends_on will tell Terraform that the Private RT needs to be created before association

#Private RT assocaited with Private Subnet 2
resource "aws_route_table_association" "subnet2-private-rt" {
  subnet_id      = aws_subnet.private_subnet_2.id
  route_table_id = aws_route_table.private_rt.id
  depends_on     = [aws_route_table.private_rt]
}