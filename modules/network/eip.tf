resource "aws_eip" "nat_eip-sit" {
  vpc = true
}