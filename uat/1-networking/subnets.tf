## Creating Subnets

resource "aws_subnet" "public_subnets" {
  count                = length(var.public_subnet_cidrs)
  vpc_id               = aws_vpc.infra_main_vpc.id
  cidr_block           = element(var.public_subnet_cidrs, count.index)
  availability_zone_id = element(var.az_ids, count.index)

  tags = {
    Name  = "Public Subnet ${var.project}-${count.index + 1}"
    env   = var.env
    owner = var.owner
  }
}

resource "aws_subnet" "private_subnets" {
  count                = length(var.private_subnet_cidrs)
  vpc_id               = aws_vpc.infra_main_vpc.id
  cidr_block           = element(var.private_subnet_cidrs, count.index)
  availability_zone_id = element(var.az_ids, count.index)

  tags = {
    Name  = "Private Subnet ${var.project}-${count.index + 1}"
    env   = var.env
    owner = var.owner
  }
}
