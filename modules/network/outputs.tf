output "public_subnet_ids"{
    value = aws_subnet.public_subnet_sit[*].id
}

output "private_subnet_ids"{
    value = aws_subnet.private_subnet_sit[*].id
}

output "vpc_id"{
    value = aws_vpc.vpc-sit.id
}
