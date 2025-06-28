resource "aws_route_table_association" "public-routetable-association-sit" {
  count          = length(var.subnet_cidr_pub)
  subnet_id      = element(aws_subnet.public-subnet-sit.*.id, count.index)
  route_table_id = aws_route_table.public-routetable-sit.id
  #gateway_id     = aws_internet_gateway.igw-sit.id
}



resource "aws_route_table_association" "private-routetable-association-sit" {
  count          = length(var.subnet_cidr_pri)
  subnet_id      = element(aws_subnet.private-subnet-sit.*.id, count.index)
  route_table_id = aws_route_table.private-routetable-sit.id
  #gateway_id     = aws_internet_gateway.gw.id
}
