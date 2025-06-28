output "public_machine_ip" {
  value = aws_instance.web[*].private_ip
}

output "private_machine_ip" {
  value = aws_instance.web1[*].private_ip
}