
resource "aws_route_table" "public-routetable-sit" {
  vpc_id = aws_vpc.vpc-sit.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw-sit.id
  }

  tags = {
    Name = var.public_route_table
  }
}

resource "aws_route_table" "private-routetable-sit" {
  vpc_id = aws_vpc.vpc-sit.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat_gw-sit.id
  }

  tags = {
    Name = var.private_route_table
  }
}