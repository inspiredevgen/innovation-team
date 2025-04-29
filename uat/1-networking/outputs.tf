## Output variables for Networking Module
output "vpc_id" {
  value = aws_vpc.infra_main_vpc.id
}

output "web_tier_subnet_id" {
  value = aws_subnet.private_subnets.id
}
