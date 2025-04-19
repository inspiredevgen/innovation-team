resource "aws_vpc" "main-vpc" {
  cidr_block = var.vpc_cidr_block

  enable_dns_hostnames = false
  enable_dns_support   = false

  tags = {
    Name = "${var.env}-main-vpc"
  }
}
