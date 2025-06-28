terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
}

module "dev_vpc_create1" {
  source              = "../modules/network"
  vpc_name            = var.vpc_name
  igw_name            = var.igw_name
  vpc_cidr            = var.vpc_cidr
  subnet_cidr_pub     = var.subnet_cidr_pub
  subnet_cidr_pri     = var.subnet_cidr_pri
  public_subnet_name  = var.public_subnet_name
  public_route_table  = var.public_route_table
  private_subnet_name = var.private_subnet_name
  private_route_table = var.private_route_table
  nat_name            = var.nat_name
}

# output "public_subnet_ids"{
#   value = module.dev_vpc_create1.public_subnet_ids
# }

module "dev_server_create1" {
  source             = "../modules/server"
  ami_id             =  var.ami_id
  aws_region = var.aws_region
  instance_type      = var.instance_type
  subnet_ids         = module.dev_vpc_create1.public_subnet_ids
  subnet_ids_private = module.dev_vpc_create1.private_subnet_ids
}

# output "public_ec2_ip" {
#   value = module.dev_server_create1.public_machine_ip
# }