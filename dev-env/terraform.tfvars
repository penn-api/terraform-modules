aws_region = "ap-south-2"
vpc_name            = "vpc-sit"
igw_name            = "sit-igw"
vpc_cidr            = "10.10.0.0/16"
subnet_cidr_pub     = ["10.10.10.0/24", "10.10.11.0/24"]
subnet_cidr_pri     = ["10.10.20.0/24", "10.10.21.0/24"]
public_subnet_name  = "sit-pub-subnet"
public_route_table  = "sit-pub-routetable"
private_subnet_name = "sit-private-subnet"
private_route_table = "sit-private-rt"
nat_name            = "sit-nat"
ami_id              = {
        ap-south-2 = "ami-01c837d5176a7605d"
}
instance_type       = {
        ap-south-2 = "t3.micro"
        ap-south-1 = "t2.micro"
        }
# subnet_ids" {}
service_ports = ["443","22","80"]