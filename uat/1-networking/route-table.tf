resource "aws_route_table" "inspire_route_table" {
  vpc_id = aws_vpc.infra_main_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.inspire-igw.id
  }

  tags = {
    Name = "Inspire Project Route Table"
  }
}

## Associating the public subnets with the Route
resource "aws_route_table_association" "public_nets_rt_association" {
  count          = length(var.public_subnet_cidrs)
  subnet_id      = element(aws_subnet.public_subnets[*].id, count.index)
  route_table_id = aws_route_table.inspire_route_table.id
}
