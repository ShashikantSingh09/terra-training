output "vpc_id" {
  description = "The VPC ID to use for the security group"
  value = aws_vpc.default.id
}

output "public_subnet_id" {
  description = "The public subnet ID to use for the security group"
  value = aws_subnet.public.id
}