resource "aws_internet_gateway" "internet_gw" {
  vpc_id = aws_vpc.main-vpc.id

  tags = {
    Name = "Internet GW"
  }
}

