resource "aws_internet_gateway" "internet_gw" {
  vpc_id = aws_vpc.main-vpc

  tags = {
    Name = "Internet GW"
  }
}

resource "aws_internet_gateway_attachment" "gw_attach" {
  internet_gateway_id = aws_internet_gateway.internet_gw.id
  vpc_id              = aws_vpc.main-vpc.id
}
