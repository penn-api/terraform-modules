resource "aws_instance" "web" {
  count         = length(var.subnet_ids)
  ami           = lookup(var.ami_id,var.aws_region)
  instance_type = lookup(var.instance_type,var.aws_region)
  associate_public_ip_address = true
  subnet_id = element(var.subnet_ids, count.index) # Choose any index or make it a variable

  tags = {
    Name = "MyEC2Instance"
  }
      user_data = <<-EOF
  	#!/bin/bash
        sudo apt install nginx -y
  EOF
}