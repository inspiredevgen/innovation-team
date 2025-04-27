resource "aws_internet_gateway" "inspire-igw" {
 vpc_id = aws_vpc.infra_main_vpc.id
 
 tags = {
   Name = "${var.project}-IGW"
 }
}