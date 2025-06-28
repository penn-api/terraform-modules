resource "aws_instance" "web1" {
  count         = length(var.subnet_ids_private)
  ami           = lookup(var.ami_id,var.aws_region)
  instance_type = lookup(var.instance_type,var.aws_region)

  subnet_id = element(var.subnet_ids_private, count.index) # Choose any index or make it a variable

  tags = {
    Name = "MyEC2Instance"
  }
}