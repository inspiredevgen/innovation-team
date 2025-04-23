output "vpc_id" {
  description = "This is the VPC ID"
  value       = aws_vpc.main-vpc.id
}

output "public_subnet_id" {
  description = "This the public subnet ID"
  value       = aws_subnet.net_public_subnet.id
}

output "private_subnet_id" {
  description = "This the private subnet ID"
  value       = aws_subnet.net_private_subnet.id
}


output "sg_ec2_id" {
  value = aws_security_group.sg_ec2_website.id
}
