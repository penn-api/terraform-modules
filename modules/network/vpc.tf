resource "aws_vpc" "vpc-sit" {
  cidr_block           = var.vpc_cidr 
  enable_dns_hostnames = "true"

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_internet_gateway" "igw-sit" {
  vpc_id = aws_vpc.vpc-sit.id

  tags = {
    Name = var.igw_name
  }

  depends_on = [aws_vpc.vpc-sit]
}