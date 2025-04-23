resource "aws_security_group" "sg_ec2_website" {
  name        = "sg_ec2_vm"
  description = "Security Group for the EC2 Instance"
  vpc_id      = var.vpc_id
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow HTTP from Anywhere"
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow HTTPS from Anywhere"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic"
  }

  tags = {
    Name = "SG for EC2 Instance"
  }
}

resource "aws_security_group" "sg_rds_db" {
  name        = "sg_rds_db"
  description = "Security Group for the EC2 Instance"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = [var.public_subnet_cidr]
    description = "Allow HTTPS from Anywhere"
  }

  tags = {
    Name = "SG for RDS Instance"
  }
}
