resource "aws_subnet" "public-subnet-sit" {
  count      = length(var.subnet_cidr_pub)
  vpc_id     = aws_vpc.vpc-sit.id
  cidr_block = element(var.subnet_cidr_pub,count.index)
  # associate_public_ip_address = true
  tags = {
    Name = var.public_subnet_name
  }
}

resource "aws_subnet" "private-subnet-sit" {
  count      = length(var.subnet_cidr_pri)
  vpc_id     = aws_vpc.vpc-sit.id
  cidr_block = element(var.subnet_cidr_pri, count.index)

  tags = {
    Name = var.private_subnet_name
  }
}