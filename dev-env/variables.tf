variable "aws_region" {}
variable "vpc_name" {}
variable "igw_name" {}
variable "vpc_cidr" {}
variable "subnet_cidr_pub" {}
variable "subnet_cidr_pri" {}
variable "public_subnet_name" {}
variable "public_route_table" {}
variable "private_subnet_name" {}
variable "private_route_table" {}
variable "nat_name" {}
variable "ami_id" {}
variable "instance_type" {
    type = map(string)
}
variable "service_ports" {}
# variable "subnet_ids" {}

