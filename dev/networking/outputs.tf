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

output "private_subnet_name" {
  description = "value"
  value = aws_subnet.net_private_subnet.name
}


output "sg_ec2_id" {
  description = "This is the Security group ID"
  value       = aws_security_group.sg_ec2_website.id
}

output "sg_rds_id" {
  description = "ID of the RDS Security Group"
  value       = aws_security_group.sg_rds_db.id
}
