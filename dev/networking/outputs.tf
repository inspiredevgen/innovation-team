output "vpc_id" {
  description = "This is the VPC ID"
  value       = aws_vpc.main-vpc.id
}

output "public_subnet_id" {
  description = "This the public subnet ID"
  value       = aws_subnet.net_public_subnet.id

}

output "public_subnet_id" {
  description = "This the private subnet ID"
  value       = aws_subnet.net_private_subnet.id

}
