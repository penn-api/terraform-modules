output "public_subnet_ids"{
    value = aws_subnet.public-subnet-sit[*].id
}

output "private_subnet_ids"{
    value = aws_subnet.private-subnet-sit[*].id
}

output "vpc_id"{
    value = aws_vpc.vpc-sit.id
}