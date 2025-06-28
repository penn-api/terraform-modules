resource "aws_nat_gateway" "nat_gw-sit" {
  allocation_id = aws_eip.nat_eip-sit.id
  subnet_id     = aws_subnet.public-subnet-sit[0].id
  #depends_on    = [aws_internet_gateway.igw-sit]
  depends_on = [aws_eip.nat_eip-sit]
}