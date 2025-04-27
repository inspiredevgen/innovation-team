## Creating VPC

resource "aws_vpc" "infra_main_vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name    = "${var.env}-infra-vpc"
    Project = var.project
    owner   = var.owner
  }
}
